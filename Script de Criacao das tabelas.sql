-- Script de Criacao das tabelas (Inicio)--
--Criando as tabelas das Entidades (Inicio)--

CREATE TABLE CLIENTE(

    cpf VARCHAR2(14),
    email VARCHAR2(50) NOT NULL,
    nome VARCHAR2(100) NOT NULL,
    endereco VARCHAR2(100) NOT NULL,
    sexo VARCHAR2(10) NOT NULL,
    nome VARCHAR2(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    
    CONSTRAINT pk_cliente
    PRIMARY KEY(cpf)
        
); 


--Atributo multivalorado--
CREATE TABLE TELEFONE(
    telefone VARCHAR2(14),
    cpf_cliente VARCHAR2(11),
   
    CONSTRAINT fk_telefone_cliente
    FOREIGN KEY (cpf_cliente) 
    REFERENCES CLIENTE(cpf),

    CONSTRAINT pk_telefone
    PRIMARY KEY (telefone, cpf_cliente)

);

CREATE TABLE QUARTO(
    
    numero VARCHAR2(20),
    tipo VARCHAR2(50) NOT NULL,
    vista VARCHAR2(50) NOT NULL,
    valor_diaria NUMBER(6,2) NOT NULL,
    
    CONSTRAINT pk_quarto
    PRIMARY KEY(numero)
    
);

--Atributo multivalorado--
CREATE TABLE EQUIPAMENTO(
    
    equipamento VARCHAR2(14),
    numero_quarto VARCHAR2(20),

    CONSTRAINT fk_equipamento_quarto 
    FOREIGN KEY (numero_quarto)
    REFERENCES QUARTO(numero),

    CONSTRAINT pk_equipamento
    PRIMARY KEY (numero_quarto, equipamento)

);


CREATE TABLE FUNCIONARIO(

    cpf VARCHAR2(14),
    nome VARCHAR2(100) NOT NULL,
    data_nascimento DATE NOT NULL,    
    salario NUMBER(6,2) NOT NULL,
    funcao VARCHAR2(50) NOT NULL,
    
    CONSTRAINT pk_funcionario
    PRIMARY KEY(cpf),
);

CREATE TABLE AVALIACAO(

    id INT,
    nota INT NOT NULL,
    data DATE NOT NULL, 
    comentario VARCHAR2(255),
    cpf_cliente VARCHAR2(14) NOT NULL,
    
    CONSTRAINT fk_avaliacao_cliente
    FOREIGN KEY(cpf_cliente)
    REFERENCES CLIENTE(cpf),
    
    CONSTRAINT pk_avaliacao
    PRIMARY KEY(id)
);

CREATE TABLE PRODUTO(

    id INT,
    valor NUMBER(5,2) NOT NULL,
    nome VARCHAR2(50) NOT NULL,
    tipo VARCHAR2(100) NOT NULL,
    descricao VARCHAR2(255),
    
    CONSTRAINT pk_produto
    PRIMARY KEY(id)
);

--Entidade Fraca--
CREATE TABLE DEPENDENTE(
    
    cpf VARCHAR2(14),
    cpf_cliente VARCHAR2(14),
    nome VARCHAR2(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    
    CONSTRAINT fk_dependente_cliente
    FOREIGN KEY (cpf_cliente)
    REFERENCES CLIENTE(cpf)

    CONSTRAINT pk_dependente
    PRIMARY KEY (cpf, cpf_cliente)

);  

--Criando as tabelas das Entidades (Fim)--

-- Criando as tabelas das Relacoes (Inicio)--

-- Cliente-Reserva-Quarto --
CREATE TABLE RESERVA(
    
    id_reserva INT ,
    cpf_cliente VARCHAR2(14),
    numero_quarto VARCHAR2(20),
    dia_check_in DATE NOT NULL,
    dia_check_out DATE NOT NULL,
    
    CONSTRAINT fk_reserva_cliente 
    FOREIGN KEY (cpf_cliente) 
    REFERENCES CLIENTE(cpf),

    CONSTRAINT fk_reserva_quarto
    FOREIGN KEY (numero_quarto) 
    REFERENCES QUARTO(numero),
_
    CONSTRAINT pk_reserva 
    PRIMARY KEY (id_reserva)

    
); 

-- Cliente-Hospeda-Quarto --
CREATE TABLE HOSPEDA(
    
    id_hospedagem INT,
    cpf_cliente VARCHAR2(14),
    numero_quarto VARCHAR2(20),
    dia_check_in DATE NOT NULL,
    dia_check_out DATE NOT NULL,
    
    CONSTRAINT fk_hospeda_cliente 
    FOREIGN KEY (cpf_cliente) 
    REFERENCES CLIENTE(cpf),

    CONSTRAINT fk_hospeda_quarto 
    FOREIGN KEY (numero_quarto) 
    REFERENCES QUARTO(numero),

    CONSTRAINT pk_hospedagem
    PRIMARY KEY (id_hospedagem)

    
); 

-- Quarto-Vende-Produto
CREATE TABLE VENDA(
    
    id_venda INT,
    numero_quarto VARCHAR2(20),
    id_produto INT,
    data DATE NOT NULL,
    quantidade INT NOT NULL, 
    
    CONSTRAINT fk_venda_quarto
    FOREIGN KEY (numero_quarto)
    REFERENCES QUARTO(numero),

    CONSTRAINT fk_venda_produto
    FOREIGN KEY (id_produto) 
    REFERENCES PRODUTO(id),

    CONSTRAINT pk_venda
    PRIMARY KEY (id_venda)
 
);

-- Quarto-Mantem-Funcionario --
CREATE TABLE MANUTENCAO(
    
    id_manutencao INT,
    cpf_funcionario VARCHAR2(14),
    numero_quarto VARCHAR2(20),
    data DATE NOT NULL, 
    tipo_manutencao VARCHAR2(50) NOT NULL,
    observacao VARCHAR2(250),
    
    CONSTRAINT fk_manutencao_funcionario
    FOREIGN KEY (cpf_funcionario) 
    REFERENCES FUNCIONARIO(cpf),

    CONSTRAINT fk_manutencao_quarto
    FOREIGN KEY (numero_quarto) 
    REFERENCES QUARTO(numero),

    CONSTRAINT pk_manutencao
    PRIMARY KEY (id_manutencao)
    
); 
-- Criando as tabelas das Relacoes (Fim)--
-- Script de Criacao das tabelas (Fim) --