	
-- insere 22 clientes 
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('69072082794230', 'fpol0@yahoo.com', 'Fidelia Pol', '778 Arizona Alley', 'Feminino', '04/29/1929');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('67447355261687', 'bcesco1@springer.com', 'Brocky Cesco', '63 Mariners Cove Parkway', 'Masculino', '11/17/1506');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('03598624581771', 'ywoofenden2@mit.edu', 'Yelena Woofenden', '4169 Barby Trail', 'Feminino', '10/31/1769');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('31162088506504', 'dpinnijar3@wikimedia.org', 'Dorian Pinnijar', '1 Monument Lane', 'Feminino', '02/04/1268');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('03104371563995', 'lkupper4@amazon.com', 'Lenette Kupper', '5 Melrose Circle', 'Feminino', '06/10/0346');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('01368372085265', 'ohathorn5@smugmug.com', 'Orelee Hathorn', '5 Swallow Park', 'Feminino', '04/20/0537');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('69907348650209', 'htavinor6@diigo.com', 'Hobie Tavinor', '5418 Kinsman Avenue', 'Masculino', '08/09/0622');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('83309314237918', 'aomoylan7@nydailynews.com', 'Andreana O''Moylan', '73 Express Hill', 'Feminino', '10/31/1739');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('45279816080722', 'gwray8@dot.gov', 'Glenna Wray', '510 Anhalt Alley', 'Feminino', '07/11/1420');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('01627890747005', 'mfilipovic9@com.com', 'Maddy Filipovic', '5574 Lien Park', 'Masculino', '05/26/1564');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('85245640911809', 'jrymoura@opera.com', 'Jolee Rymour', '99 Hintze Plaza', 'Feminino', '08/08/1790');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('90136072990987', 'tmatsonb@drupal.org', 'Tedmund Matson', '9310 Brentwood Hill', 'Masculino', '03/30/0969');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('81453994462677', 'fvoffc@stanford.edu', 'Foss Voff', '53 New Castle Junction', 'Masculino', '02/14/1351');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('27064986878871', 'tboffeyd@epa.gov', 'Tina Boffey', '65 Alpine Way', 'Feminino', '11/19/0327');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('82138017607217', 'lenriche@gravatar.com', 'Lucina Enrich', '22 Daystar Hill', 'Feminino', '06/15/0766');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('05532078636189', 'ldanielsf@mail.ru', 'Louise Daniels', '4975 Summerview Drive', 'Feminino', '11/24/1925');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('51628012930025', 'rsantg@utexas.edu', 'Roctte Sat', '888 Graceland Center', 'Feminino', '08/31/0740');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('81453994892677', 'fvoffc@stanford.edu', 'Ross Vof', '53 New Castle Junction', 'Masculino', '02/14/1351');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('27064986538871', 'tboffeyd@epa.gov', 'Tinna Bofey', '65 Alpine Way', 'Feminino', '11/19/0327');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('82138018507217', 'lenriche@gravatar.com', 'Luccinna Ennrich', '22 Daystar Hill', 'Feminino', '06/15/0766');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('05524078636189', 'ldanielsf@mail.ru', 'Louisa Danielas', '4975 Summerview Drive', 'Feminino', '11/24/1925');
insert into cliente (cpf, email, nome, endereco, sexo, data_nasc) values ('51625412930025', 'rsantg@utexas.edu', 'Rochette Sant', '888 Graceland Center', 'Feminino', '08/31/0740');

-- insere 3 Dependentes
insert into dependente (cpf,data_nasc,nome, cpf_cliente) values ('81453998362677', '05/27/1497', 'Maria Joaquina','81453994892677');
insert into dependente (cpf,data_nasc,nome, cpf_cliente) values ('81478994462677', '05/27/1497', 'Cirilo trouxa','27064986538871');
insert into dependente (cpf,data_nasc,nome, cpf_cliente) values ('81453995562677', '05/27/1497', 'Cirilo trouxxa','85245640911809');
insert into dependente (cpf,data_nasc,nome, cpf_cliente) values ('81453994972677', '05/27/1497', 'Rochette Sant','05524078636189');

--insere 20 quartos
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('050', 'EUR', 'Euro', 216.79);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('401', 'EUR', 'Euro', 484.84);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('314', 'USD', 'Dollar', 200.42);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('828', 'IDR', 'Rupiah', 392.3);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('816', 'CNY', 'Yuan Renminbi', 464.97);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('545', 'IRR', 'Rial', 362.89);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('936', 'BRL', 'Real', 410.59);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('553', 'RUB', 'Ruble', 479.8);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('430', 'IDR', 'Rupiah', 425.21);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('605', 'CNY', 'Yuan Renminbi', 479.19);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('241', 'CNY', 'Yuan Renminbi', 352.1);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('211', 'CNY', 'Yuan Renminbi', 479.2);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('027', 'AMD', 'Dram', 124.54);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('025', 'CNY', 'Yuan Renminbi', 202.33);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('258', 'CZK', 'Koruna', 184.13);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('331', 'CNY', 'Yuan Renminbi', 168.76);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('218', 'NZD', 'Dollar', 444.93);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('178', 'IDR', 'Rupiah', 104.47);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('127', 'BRL', 'Real', 196.88);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('695', 'Triplo', 'Peso', 142.62);
insert into quarto (numero, tipo, vista, VALOR_DIARIA) values ('283', 'Triplo', 'Real', 196.88);

-- insere 10 reservas 

insert into reserva(id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out) values (2, '69072082794230', '050', '06/24/2019', '06/27/2019');
insert into reserva(id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out) values (3, '69078082794230', '051', '06/25/2019', '06/27/2019');
insert into reserva(id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out) values (4, '69072082786230', '052', '06/29/2019', '08/27/2019');
insert into reserva(id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out) values (5, '69072013794230', '053', '06/22/2019', '07/27/2019');
insert into reserva(id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out) values (6, '69009082794230', '054', '06/23/2019', '12/27/2019');
insert into reserva(id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out) values (10, '01627890747005', '025', '06/23/2019', '06/26/2019');
insert into reserva(id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out) values (20, '01627890747005', '027','06/24/2019', '06/27/2019');
insert into reserva(id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out) values (9,'31162088506504', '401', '06/24/2019', '06/29/2019');
insert into reserva(id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out) values (11, '81453994462677', '605', '06/21/2019', '06/28/2019');
insert into reserva(id_reserva, cpf_cliente, numero_quarto, dia_check_in, dia_check_out) values (7, '01368372085265', '211', '06/23/2019', '06/27/2019');

--insere 20 hospedagens 


insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (49, '06/24/2019', '06/27/2019', '69072082794230', '050');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (15, '06/21/2019', '06/28/2019', '51628012930025', '545');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (8, '06/22/2019', '06/23/2019', '03104371563995', '553');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (200, '06/23/2019', '06/26/2019', '01627890747005', '025');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (10, '06/24/2019', '06/27/2019', '01627890747005', '027');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (32, '07/24/2019', '07/27/2019', '03104371563995', '050');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (47, '06/24/2019', '06/29/2019', '31162088506504', '401');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (40, '06/23/2019', '06/29/2019', '01627890747005', '351');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (1, '06/21/2019', '06/28/2019', '81453994462677', '605');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (6, '06/23/2019', '06/27/2019', '01368372085265', '211');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (94, '06/23/2019', '06/26/2019', '01627890747005', '936');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (52, '06/22/2019', '06/27/2019', '01368372085265', '816');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (100, '06/27/2019', '06/28/2019', '51628012930025', '025');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (58, '06/24/2019', '06/26/2019', '45279816080722', '314');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (78, '06/21/2019', '06/26/2019', '69072082794230', '695');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (29, '06/24/2019', '06/26/2019', '27064986878871', '553');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (48, '06/22/2019', '06/29/2019', '27064986878871', '127');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (55, '06/24/2019', '06/27/2019', '27064986878871', '432');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (2, '06/22/2019', '06/26/2019', '27064986878871', '241');
insert into hospeda (id_hospedagem, dia_check_in, dia_check_out, cpf_cliente, numero_quarto) values (53, '06/22/2019', '06/26/2019', '27064986878871', '178');


--insere 16 produtos

insert into PRODUTO (id, tipo, nome, valor, descricao) values (1, 'restaurante', 'Dill Weed - Fresh', 58.18, 'maximize user-centric initiatives');
insert into PRODUTO (id, tipo, nome, valor, descricao) values (2, 'restaurante', 'Cabbage - Nappa', 18.6, 'matrix vertical networks');
insert into PRODUTO (id, tipo, nome, valor, descricao) values (3, 'bar', 'Curry Paste - Madras', 10.16, 'implement seamless e-tailers');
insert into PRODUTO (id, tipo, nome, valor, descricao) values (4, 'restaurante', 'Thyme - Fresh', 45.75, 'morph wireless networks');
insert into PRODUTO (id, tipo, nome, valor, descricao) values (5, 'restaurante', 'Bagelers - Cinn / Brown Sugar', 69.17, 'architect 24/7 communities');
insert into PRODUTO (id, tipo, nome, valor, descricao) values (6, 'bar', 'Wine - Gewurztraminer Pierre', 72.51, 'architect dot-com functionalities');
insert into PRODUTO (id, tipo, nome, valor, descricao) values (7, 'bar', 'Turnip - White', 73.03, 'evolve visionary deliverables');
insert into PRODUTO (id, tipo, nome, valor, descricao) values (8, 'restaurante', 'Cheese - Ermite Bleu', 26.32, 'disintermediate revolutionary systems');
insert into PRODUTO (id, tipo, nome, valor, descricao) values (9, 'restaurante', 'Yogurt - Raspberry, 175 Gr', 17.62, 'architect collaborative infomediaries');
insert into PRODUTO (id, tipo, nome, valor, descricao) values (10, 'restaurante', 'Salt - Rock, Course', 72.53, 'generate customized markets');
insert into PRODUTO (id, tipo, nome, valor, descricao) values (11, 'restaurante', 'Crackers - Trio', 31.83, 'enable efficient action-items');
insert into PRODUTO (id, tipo, nome, valor, descricao) values (12, 'restaurante', 'Jam - Raspberry', 48.27, 'reintermediate compelling technologies');
insert into PRODUTO (id, tipo, nome, valor, descricao) values (13, 'bar', 'Chicken - Breast, 5 - 7 Oz', 46.36, 'monetize rich channels');
insert into PRODUTO (id, tipo, nome, valor, descricao) values (14, 'restaurante', 'Lamb Leg - Bone - In Nz', 26.68, 'repurpose innovative schemas');
insert into PRODUTO (id, tipo, nome, valor, descricao) values (15, 'bar', 'Lamb Rack - Ontario', 5.84, 'facilitate dynamic e-services');
insert into PRODUTO (id, tipo, nome, valor, descricao) values (16, 'bar', 'Lamb Rack - Ontario', 5.84, 'facilitate dynamic e-services');


--insere 22 vendas
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (1, 4, '695', '06/21/1999', 10);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (2, 8, '025', '06/28/1999', 3);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (3, 4, '178', '06/26/1999', 8);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (4, 11, '178', '06/25/2019', 10);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (5, 7, '178', '06/23/2019', 1);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (6, 3, '178', '06/25/2019', 6);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (7, 7, '178', '06/23/2019', 7);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (8, 5, '211', '06/27/2019', 5);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (9, 11, '211', '06/26/2019', 5);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (10, 2, '178', '06/24/2019', 3);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (11, 11, '553', '06/22/2019', 8);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (12, 3, '695', '06/21/2019', 3);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (13, 6, '025', '06/28/2019', 7);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (14, 13, '553', '06/22/2019', 4);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (15, 3, '025', '06/28/2019', 7);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (16, 2, '178', '06/23/2019', 6);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (17, 3, '178', '06/24/2019', 7);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (18, 9, '178', '06/24/2019', 10);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (19, 15, '178', '06/22/2019', 3);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (20, 10, '025', '06/28/2019', 1);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (21, 10, '605', '06/21/2019', 132);
insert into venda (id_venda, id_produto, numero_quarto, data, quantidade) values (22, 16, '695', '06/21/1999', 10);

-- insere 25 funcionarios

insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('89169621706772', 'Irineeu', '01/29/1993', 3882.55, 'Recruiter');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('28369621706772', 'Irineu', '01/29/1993', 3882.55, 'Recruiter');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('52397071631821', 'Mic McGiveen', '12/25/1982', 3399.92, 'Chief Design Engineer');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('66110279738841', 'Pepi Grimsell', '01/07/1991', 1942.6, 'Community Outreach Specialist');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('12028063095806', 'Olivie Robathon', '10/17/1992', 1961.38, 'Design Engineer');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('72468231569490', 'Chet Dawe', '07/24/1958', 1927.38, 'Graphic Designer');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('25302595175288', 'Kelci Lehon', '10/16/1964', 3208.88, 'Accounting Assistant II');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('86647310021268', 'Tess Pincott', '01/22/1998', 2709.37, 'Help Desk Technician');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('55501119864477', 'Harmonie Sommerlin', '08/16/1952', 3415.22, 'Dental Hygienist');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('58640717596790', 'Dion Littlejohns', '05/25/1980', 3016.52, 'Environmental Specialist');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('36511121621501', 'Had Wanne', '01/24/1991', 1865.51, 'Financial Analyst');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('01190495521734', 'Royal McGroarty', '06/02/1955', 2523.28, 'Professor');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('21884121782608', 'Lyndsie Wisker', '04/24/1969', 2297.51, 'Financial Analyst');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('62461610613565', 'Lionel Prigg', '03/14/1977', 2933.7, 'Payment Adjustment Coordinator');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('34535518429852', 'Alaster Spawell', '05/09/2000', 3592.48, 'Recruiting Manager');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('38408635568750', 'Nicolis Peasee', '05/25/1968', 1105.59, 'Editor');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('68519226713454', 'Keith Giggie', '03/07/1974', 3095.44, 'Health Coach IV');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('16265159154212', 'Kori Lum', '03/02/1959', 2275.47, 'Data Coordiator');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('28602988608876', 'Arda O''Duilleain', '11/23/1965', 1989.32, 'Teacher');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('33592700477268', 'Gertrude Derisly', '08/10/1952', 1946.96, 'Media Manager III');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('73770275743513', 'Dominik Drowsfield', '06/18/1996', 1284.17, 'Geological Engineer');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('26565159154212', 'Kori Lum', '03/02/1959', 2275.47, 'Tecnico');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('39102988608876', 'Arda O''Duilleain', '11/23/1965', 1989.32, 'Tecnico');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('87592700477268', 'Gertrude Derisly', '08/10/1952', 1946.96, 'Tecnico');
insert into funcionario (cpf, nome, data_nasc, salario, funcao) values ('14570275743513', 'Dominik Drowsfield', '06/18/1996', 1284.17, 'Tecnico');


-- insere manutenção
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (1, '89169621706772', '178', '06/27/2019', 'Conserto', 'Cupressaceae');
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (2, '25302595175288', '178', '06/28/2019', 'Varanus salvator', 'Lamiaceae');
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (3, '72468231569490', '211', '06/25/2019', 'Aepyceros mylampus', 'Cannabaceae');
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (4, '89169621706772', '553', '06/25/2019', 'Conserto', 'Polemoniaceae');
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (5, '01190495521734', '314', '06/27/2019', 'Ciconia episcopus', 'Boraginaceae');
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (6, '55501119864477', '178', '06/26/2019', 'Dasyurus viverrinus', 'Asteraceae');
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (7, '25302595175288', '695', '06/25/2019', 'Phylurus milli', 'Apocynaceae');
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (8, '01190495521734', '025', '06/26/2019', 'Larus novaehollandiae', 'Rubiaceae');
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (9, '25302595175288', '025', '06/25/2019', 'unavailable', 'Scrophulariaceae');
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (10,'34535518429852', '178', '06/29/2019', 'Oryx gazella', 'Poaceae');
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (11,'28369621706772', '178', '06/27/2019', 'Conserto', 'Cupressaceae');
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (12,'28369621706772', '178', '06/27/2019', 'Conserto', 'Cupressaceae');
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (13,'28369621706772', '178', '06/27/2019', 'Conserto', 'Cupressaceae');
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (14,'26565159154212', '283', '06/29/2019', 'Oryx gazella', 'Poaceae');
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (15,'39102988608876', '283', '06/27/2019', 'Conserto', 'Cupressaceae');
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (16,'87592700477268', '283', '06/27/2019', 'Conserto', 'Cupressaceae');
insert into MANUTENCAO (id_manutencao, cpf_funcionario, numero_quarto, data, tipo_manutencao, observacao) values (17,'14570275743513', '283', '06/27/2019', 'Conserto', 'Cupressaceae');

-- insere equipamento

insert into EQUIPAMENTO (equipamento, NUMERO_QUARTO) values ('Ceya', '025');
insert into EQUIPAMENTO (equipamento, NUMERO_QUARTO) values ('Smed', '178');
insert into EQUIPAMENTO (equipamento, NUMERO_QUARTO) values ('Hawai', '695');
insert into EQUIPAMENTO (equipamento, NUMERO_QUARTO) values ('Sagele', '695');
insert into EQUIPAMENTO (equipamento, NUMERO_QUARTO) values ('Macoun', '025');
insert into EQUIPAMENTO (equipamento, NUMERO_QUARTO) values ('Celeryleaf', '695');
insert into EQUIPAMENTO (equipamento, NUMERO_QUARTO) values ('Tobacco', '178');
insert into EQUIPAMENTO (equipamento, NUMERO_QUARTO) values ('Myrtle', '695');
insert into EQUIPAMENTO (equipamento, NUMERO_QUARTO) values ('Orchid ', '178');
insert into EQUIPAMENTO (equipamento, NUMERO_QUARTO) values ('Hummingbird', '025');
