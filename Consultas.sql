-- 1. Qual o total de reservas e hospedagens de cada quarto. 
		
	SELECT COUNT(r.id_reserva), COUNT(h.id_hospedagem)
	FROM Reserva r, Hospeda h, Quarto q
	WHERE r.numero_quarto = q.numero
		AND h.numero_quarto = q.numero

-- 2. Liste o produto com maior número de vendas no ano de 1999. 

    SELECT id
    FROM Produto p INNER JOIN Venda v ON p.id = v.id_produto
    WHERE data LIKE '__/__/1999'
    GROUP BY id 
    ORDER BY SUM(quantidade) DESC

-- 3. Crie uma view que lista os clientes que fizeram as melhores avaliações, ou seja, acima da médias de notas.

   SELECT c.name
   FROM CLIENTE c, AVALIACAO a
   WHERE (SELECT AVG(nota)
	      FROM AVALIACAO) < a.nota)
	
-- 4. Liste os quartos com os maiores tempos de hospedagem e os respectivos clientes. 



-- 5. Liste os clientes que possuem dependentes com mesmo nome de outro cliente. 

    SELECT * 
    FROM CLIENTE
    WHERE cpf IN (SELECT cpf 
                  FROM DEPENDENTE
		          WHERE nome in (SELECT nome 
                  FROM CLIENTE))

-- 6. Liste os produtos que possuem vendas com quantidade acima de 1, agrupando com a data da venda. 
	
	SELECT * 
    FROM PRODUTO
    WHERE id IN (SELECT id_produto 
                 FROM VENDA v
			     WHERE v.quantidade > 1)
                 GROUP BY data
                 
-- 7. Liste os funcionários com função de técnico que deram manutenção em algum quarto do tipo triplo.

    SELECT f.cpf
    FROM Funcionario f, Manutencao m, Quarto q
    WHERE f.funcao = 'Tecnico' AND
      		          f.cpf = m.cpf_funcionario AND
                      m.numero_quarto = q.numero AND
                      q.tipo = 'Triplo'

-- 8. Quais as manutenções do tipo conserto foram realizadas pelo funcionário “Irineu”. 

    SELECT m.id_manutencao
    FROM Manutencao m, Funcionario f
    WHERE m.tipo_manutencao = 'Conserto' AND
      		                   m.cpf_funcionario = f.cpf AND
      		                   f.nome = 'Irineu'


-- 9. Qual o número de aniversariantes (clientes ou funcionários) de cada mês.


	SELECT COUNT(cpf), MONTH(c.data_nasc)
  	FROM cliente AS c
 	GROUP BY MONTH(c.data_nasc)
 	UNION
 	SELECT COUNT(cpf), f.data_nasc
  	FROM FUNCIONARIO AS f
 	GROUP BY MONTH(f.data_nasc)

-- 10. Liste os produtos mais requisitados pelos quartos duplo twin ou duplos casal. 
	
		SELECT p.*
        FROM PRODUTO p, VENDA v, QUARTO q
        WHERE v.id_produto = p.id AND
   			  v.numero_quarto = q.numero AND q.numero IN
             (SELECT q.numero
   			  FROM QUARTO q
   			  WHERE q.tipo = 'duplo twin' OR
          			q.tipo = 'duplos casal'
              )
        ORDER BY v.quantidade DESC

-- 11. Crie uma view que lista os clientes que não possuem dependentes em ordem decrescente pela quantidade de produtos comprados. 

      CREATE OR REPLACE FORCE VIEW "CLIENTESSEMDEPENDENTES" ("CPF", "EMAIL", "NOME", "ENDERECO", "SEXO", "DATA_NASC") AS
                    SELECT "CPF","EMAIL","NOME","ENDERECO","SEXO","DATA_NASC"
                    FROM Cliente C
                    WHERE C.cpf NOT IN (SELECT cpf_cliente
                                        FROM Dependente)
 
      CREATE OR REPLACE FORCE VIEW "CLIENTES_COMPRAS" ("Nome") AS
                    SELECT C.NOME
                    FROM ClientesSemDependentes C, HOSPEDA H, QUARTO Q, VENDA V
                    WHERE C.cpf = H.cpf_cliente AND
                          H.numero_quarto = Q.numero
                    GROUP BY C.NOME 
                    ORDER BY COUNT(V.ID_VENDA) DESC

-- 12. Crie uma view que liste os produtos vendidos no quarto 101 na primeira hospedagem.

	SELECT P.*
    FROM PRODUTO P, VENDA V, QUARTO Q, HOSPEDA H
    WHERE Q.NUMERO = '101' AND 
          V.ID_PRODUTO = P.ID AND 
          V.NUMERO_QUARTO = Q.NUMERO AND
          H.NUMERO_QUARTO = Q.NUMERO
    ORDER BY H.DIA_CHECK_IN

-- 13. Modifique a tabela CLIENTE, adicionando uma restrição de integridade que valide se a coluna CPF está no formato "xxx.xxx.xxx-xx", onde cada “x” é um dígito de 0 a 9. 

    ALTER TABLE CLIENTE
    ADD( CONSTRAINT formato_cpf
    CHECK( REGEXP_LIKE(cpf, '^([0-9]{3}).?([0-9]{3}).?([0-9]{3})-?([0-9]{2})$')));

-- 14. Crie um trigger que só permita vender um produto de frigobar em um quarto que possua frigobar. 

     CREATE OR REPLACE TRIGGER trVendaFrig
     AFTER INSERT ON Produto
     FOR EACH ROW

     DECLARE 
          found INT := 0;
     BEGIN
         FOR prod IN (SELECT * FROM Quarto q , Venda v WHERE (q.numero = v.numero_quarto ))
         LOOP
              IF (prod.id = v.id_produto) THEN 
                    found := 1;
              END IF;
         END LOOP;
         IF (FOUND = 0) THEN
                RAISE_APPLICATION_ERROR(-20000, 'Este quarto não possui frigobar');
         END IF;
      END;


-- 15. Crie um trigger que só permita que um cliente tenha no máximo cinco dependentes. 

   CREATE OR REPLACE TRIGGER trClienteMaxDepends 
   AFTER INSERT ON Cliente
   FOR EACH ROW

   DECLARE 
       found INT := 0;
   WHEN(newRow.a <5)
   BEGIN
       FOR c IN (SELECT MAX(d.cpf_cliente LIKE c.cpf) as qtdDepends FROM Dependente d WHERE (c.cpf = d.cpf_cliente)
       LOOP
           IF (qtdDepends <= 5) THEN 
               found := 1;
           END IF;
       END LOOP;
       IF (FOUND = 0) THEN
           RAISE_APPLICATION_ERROR(-20000, 'Um cliente só pode possuir ate 5 dependentes');
       END IF;
    END;




-- 16. Crie uma stored procedure chamada atualizaPrecosDiarias que deve atualizar os preços das diárias de todos os quartos aplicando um percentual informado como parâmetro da procedure, é obrigatório o uso de CURSOR. Coloque no script também o código de como executar a procedure. 

   create or replace procedure atualizaPrecosDiarias(
            diaria_valor in qto.valor_diaria%TYPE
   
    ) as
    
   BEGIN 
     
     declare 
    
    cursor atualizaPreco is select * from quarto
    res atualizaPreco%rowtype;
    desconto quarto.valor_diaria%TYPE;
    
    begin
       open atualizaPreco;
       
       loop
       
       fetch atualizaPreco into res;
       exit when atualizaPreco%NOTFOUND;
       desconto := res.valor + (diaria_valor*res.valor);
   
       update quarto set valor = desconto
        where numero = res.numero;
        
       END LOOP;
       close atualizaPreco;
       commit;
       
     end;
   
   END;
   
-- SE O PERCENTUAL FOR UM DESCONTO, O NUMERO DEVE SER NEGATIVO, CASO SEJA AUMENTO, DEVE SER POSITIVO: Exemplo abaixo , desconto de 10 %.

begin 
 ATUALIZAPRECOSDIARIAS(-0.1);
end;


-- 17. Crie uma stored procedure chamada getHospedagensByPeriodo que mostra todas as hospedagens entre duas datas informadas como parâmetros da procedure. Coloque no script também o código de como executar a procedure.

   create procedure getHospedagensByPeriodo(
            data1 = DATE,
            data2 = DATE
   
    ) as
    
    
    
   
   BEGIN 
     
     declare 
    
    open h for ( select * from hospeda where ( h.dia_check_in = data1 and h.dia_check_out = data2));
     
     close;
   
   END;
   
-- exemplo

begin 
 getHospedagensByPeriodo("29/06/2016", "03/09/2019");
end;

