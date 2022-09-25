
-- inserção dos dados no banco de dados da Automecânica Deutschwagen, Frioburgo - Frio de Janeiro --

-- 1. clientes --
INSERT INTO clientes(Nome, CPF, Cliente_desde, Endereço,Telefone)
      VALUES('Marta Wolf Bach', 12345678912, '2008-08-20', 'Rua Silva Prata, 29 - Lebom - Frioburgo, CEP 20000003', 21999777456),
            ('Mateus Schneider', 98765432101, '2009-10-03', 'Alameda Almada Ferreira, 289 - Centro - Frioburgo, CEP 20000001', 21999777555),
            ('Ricardo Fernando Meier', 45678912321, '2019-01-13', 'Avenida das Vinhas, 1009 - Centro - Frioburgo, CEP 20000000', 21999775776),
            ('Julia França Lehmann', 78912345699, '2020-12-30', 'Rua das Laranjeiras, 862 - Centro - Frioburgo, CEP 20000001', 21999888775),
            ('Michele Laendell von Neumann', 98745612303, '2021-07-02',  'Avenida Köller, 190 - Centro - Frioburgo, CEP 20000000', 21999775890),
            ('Isabel Sidnei Kohn', 12332177511, '2018-09-10', 'Avenida do Kaiser, 3220 - Lebom - Frioburgo, CEP 20000004', 21969966969),
            ('Davi Henrique Köller', 13341975422, '2017-07-07','Avenida Bosch, 7770 - Lebom - Frioburgo, CEP 20000002', 219677897781),
            ('Albert Eistein von Zeppelin', 32968471390, '2020-11-20', 'Rua Berlin, 1961 - Lebom - Frioburgo, CEP 20000003', 21969966969);
mysql> select * from clientes;
+-----------+------------------------------+-------------+---------------+-----------------------------------------------------------------+--------------+
| idCliente | Nome                         | CPF         | Cliente_desde | Endereço                                                        | Telefone     |
+-----------+------------------------------+-------------+---------------+-----------------------------------------------------------------+--------------+
|         1 | Marta Wolf Bach              | 12345678912 | 2008-08-20    | Rua Silva Prata, 29 - Lebom - Frioburgo, CEP 20000003           | 21999777456  |
|         2 | Mateus Schneider             | 98765432101 | 2009-10-03    | Alameda Almada Ferreira, 289 - Centro - Frioburgo, CEP 20000001 | 21999777555  |
|         3 | Ricardo Fernando Meier       | 45678912321 | 2019-01-13    | Avenida das Vinhas, 1009 - Centro - Frioburgo, CEP 20000000     | 21999775776  |
|         4 | Julia França Lehmann         | 78912345699 | 2020-12-30    | Rua das Laranjeiras, 862 - Centro - Frioburgo, CEP 20000001     | 21999888775  |
|         5 | Michele Laendell von Neumann | 98745612303 | 2021-07-02    | Avenida Köller, 190 - Centro - Frioburgo, CEP 20000000          | 21999775890  |
|         6 | Isabel Sidnei Kohn           | 12332177511 | 2018-09-10    | Avenida do Kaiser, 3220 - Lebom - Frioburgo, CEP 20000004       | 21969966969  |
|         7 | Davi Henrique Köller         | 13341975422 | 2017-07-07    | Avenida Bosch, 7770 - Lebom - Frioburgo, CEP 20000002           | 219677897781 |
|         8 | Albert Eistein von Zeppelin  | 32968471390 | 2020-11-20    | Rua Berlin, 1961 - Lebom - Frioburgo, CEP 20000003              | 21969966969  |
+-----------+------------------------------+-------------+---------------+-----------------------------------------------------------------+--------------+
8 rows in set (0,00 sec)


-- 2. inserindo dados na tabela trabalhadores --
INSERT INTO trabalhadores(Nome, CPF, Profissão, Endereço,Telefone)values
      ('Ricardo Frohmmer', 72233987392, 'Empresário e Mecânico Chefe', 'Rua Rudolph Frohmmer Lehmann, 79 - Hilflandia', 21999121397),
      ('Kelly Einsenban Frohmmer', 73933297782, 'Empresária e Secretária', 'Rua Rudolph Frohmmer Lehmann, 79 - Hilflandia', 21999121398),      
      ('Adolpho Melle Einsenban', 21523098736, 'Mecânico Senior','Avenida Köller, 3203 - Centro - Frioburgo, CEP 20000000', 21998274092),
      ('Inge Porsche Einsenban',31923198478, 'Administradora','Avenida Köller, 3203 - Centro - Frioburgo, CEP 20000000', 21998274092),      
      ('Denis Jung Frohmmer', 91533198863, 'Mecânico Junior, cozinheiro e auxiliar de limpeza','Rua Rudolph Frohmmer Lehmann, 79 - Hilflandia', 21999121399);
f
Query OK, 5 rows affected (0,53 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from trabalhadores;
+---------------+--------------------------+-------------+----------------------------------------------------+----------------------------------------------------------+-------------+
| idTrabalhador | Nome                     | CPF         | Profissão                                          | Endereço                                                 | Telefone    |
+---------------+--------------------------+-------------+----------------------------------------------------+----------------------------------------------------------+-------------+
|             1 | Ricardo Frohmmer         | 72233987392 | Empresário e Mecânico Chefe                        | Rua Rudolph Frohmmer Lehmann, 79 - Hilflandia            | 21999121397 |
|             2 | Kelly Einsenban Frohmmer | 73933297782 | Empresária e Secretária                            | Rua Rudolph Frohmmer Lehmann, 79 - Hilflandia            | 21999121398 |
|             3 | Adolpho Melle Einsenban  | 21523098736 | Mecânico Senior                                    | Avenida Köller, 3203 - Centro - Frioburgo, CEP 20000000  | 21998274092 |
|             4 | Inge Porsche Einsenban   | 31923198478 | Administradora                                     | Avenida Köller, 3203 - Centro - Frioburgo, CEP 20000000  | 21998274092 |
|             5 | Denis Jung Frohmmer      | 91533198863 | Mecânico Junior, cozinheiro e auxiliar de limpeza  | Rua Rudolph Frohmmer Lehmann, 79 - Hilflandia            | 21999121399 |
+---------------+--------------------------+-------------+----------------------------------------------------+----------------------------------------------------------+-------------+
5 rows in set (0,00 sec)



-- 3. tabela valores hora --
INSERT INTO tabelaValoresHora(revisao_na_garantia, conserto_na_garantia, revisao_sem_garantia, conserto_sem_garantia)values
                             (150.00, 190.00, 200.00, 249.90); 

Query OK, 1 row affected (0,30 sec)

mysql> select * from tabelaValoresHora;
+----------+---------------------+----------------------+----------------------+-----------------------+
| idTabela | revisao_na_garantia | conserto_na_garantia | revisao_sem_garantia | conserto_sem_garantia |
+----------+---------------------+----------------------+----------------------+-----------------------+
|        1 |                 150 |                  190 |                  200 |                 249.9 |
+----------+---------------------+----------------------+----------------------+-----------------------+
1 row in set (0,00 sec)


-- 4. veículos --

INSERT INTO veiculos(Proprietário, Marca, Modelo, Placa)values
            ('Giovanni Meneguelli', 'BMW', 'Z4','NSP1939'),
            ('Karl Mannesmann', 'Mercedes-Benz', 'Classe-E','NSP1945'),
            ('Enzo Ferrari dos Santos', 'FIAT', '500-E','NSR2022'),
            ('Margareth von Neumann', 'Porsche', '911','NSR2945'),
            ('Margareth von Neumann', 'Porsche', '929','NSX3793'),
            ('Sebastian Schultz Ribeiro', 'VW', 'Amarok', 'NSX9922');

Query OK, 6 rows affected (0,41 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from veiculos;
+-----------+---------------------------+---------------+----------+---------+
| idVeiculo | Proprietário              | Marca         | Modelo   | Placa   |
+-----------+---------------------------+---------------+----------+---------+
|         1 | Giovanni Meneguelli       | BMW           | Z4       | NSP1939 |
|         2 | Karl Mannesmann           | Mercedes-Benz | Classe-E | NSP1945 |
|         3 | Enzo Ferrari dos Santos   | FIAT          | 500-E    | NSR2022 |
|         4 | Margareth von Neumann     | Porsche       | 911      | NSR2945 |
|         5 | Margareth von Neumann     | Porsche       | 929      | NSX3793 |
|         6 | Sebastian Schultz Ribeiro | VW            | Amarok   | NSX9922 |
+-----------+---------------------------+---------------+----------+---------+
6 rows in set (0,00 sec)


-- 5 Fornecedores -- 
INSERT INTO fornecedores(razaoSocial, cnpj, endereço, telefone)values
                        ('RNM Brasil', 92312348562349, 'Rua Gilles Villeneuve, 244 - Vila Nova França - FrioBurgo - CEP 20000011', 21987308044),
                        ('Estrelantes do Brasil', 82112948962794, 'Rua Tierry Peugeot, 408 - Vila Nova França - FrioBurgo - CEP 20000011', 21987309077),
                        ('Gilberto Bosche no Brasil', 72172947960004, 'Rua Egberto Bosche, 408 - Vila Nova Teutônia - FrioBurgo - CEP 20000011', 21955607070),
                        ('Dasautowagen América Latina', 66572647600004, 'Rua Fernando Porsche, 911 - Vila Nova Teutônia - FrioBurgo - CEP 20000911', 21911929982),
                        ('Soichiro Honda & Sons Brasil', 4446668880004, 'Avenida Ayrton Senna da Silva, 2000 - Parque das Nações - Frioburgo - CEP 20000027', 21999716090);

Query OK, 5 rows affected (0,23 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from fornecedores;
+--------------+------------------------------+----------------+--------------------------------------------------------------------------------------+-------------+
| idFornecedor | razaoSocial                  | cnpj           | endereço                                                                             | telefone    |
+--------------+------------------------------+----------------+--------------------------------------------------------------------------------------+-------------+
|            1 | RNM Brasil                   | 92312348562349 | Rua Gilles Villeneuve, 244 - Vila Nova França - FrioBurgo - CEP 20000011             | 21987308044 |
|            2 | Estrelantes do Brasil        | 82112948962794 | Rua Tierry Peugeot, 408 - Vila Nova França - FrioBurgo - CEP 20000011                | 21987309077 |
|            3 | Gilberto Bosche no Brasil    | 72172947960004 | Rua Egberto Bosche, 408 - Vila Nova Teutônia - FrioBurgo - CEP 20000011              | 21955607070 |
|            4 | Dasautowagen América Latina  | 66572647600004 | Rua Fernando Porsche, 911 - Vila Nova Teutônia - FrioBurgo - CEP 20000911            | 21911929982 |
|            5 | Soichiro Honda & Sons Brasil | 4446668880004  | Avenida Ayrton Senna da Silva, 2000 - Parque das Nações - Frioburgo - CEP 20000027   | 21999716090 |
+--------------+------------------------------+----------------+--------------------------------------------------------------------------------------+-------------+
5 rows in set (0,00 sec)


-- 6 inserindo dados na tabela estoque --
INSERT INTO estoque(Peca, fabricante, fabricado_em, código, custo_R$, quantidade)values
                   ('correia dentada universal', 'bosch', '2022-07-23', 'B22cdu8', 187.67, 25),
                   ('mangueiras X para radiador', 'frahmm', '2022-02-14', 'F22X77m', 60.00, 30),
                   ('filtros de ar universal', 'frahmm', '2021-11-07', 'Ff21AU49', 49.90, 22),
                   ('óleo SH90', 'Bardhal Plus', '2022-09-22', 'BP022SHX', 45.70, 14);

ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`automecanica`.`estoque`, CONSTRAINT `fk_estoque_fornecedores` FOREIGN KEY (`idEstoque`) REFERENCES `fornecedores` (`idFornecedor`))

-- mysql> SET FOREIGN_KEY_CHECKS = 0; da página stackoverflow brasil

ERROR 1292 (22007): Incorrect date value: '1991' for column 'fabricado_em' at row 4

Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from estoque;
+-----------+----------------------------+--------------+--------------+----------+----------+------------+
| idEstoque | Peca                       | fabricante   | fabricado_em | código   | custo_R$ | quantidade |
+-----------+----------------------------+--------------+--------------+----------+----------+------------+
|        17 | correia dentada universal  | bosch        | 2022-07-23   | B22cdu8  |   187.67 |         25 |
|        18 | mangueiras X para radiador | frahmm       | 2022-02-14   | F22X77m  |       60 |         30 |
|        19 | filtros de ar universal    | frahmm       | 2021-11-07   | Ff21AU49 |     49.9 |         22 |
|        20 | óleo SH90                  | Bardhal Plus | 2022-09-22   | BP022SHX |     45.7 |         14 |
+-----------+----------------------------+--------------+--------------+----------+----------+------------+
4 rows in set (0,00 sec)

      
-- mysql> SET FOREIGN_KEY_CHECKS = 1; da página stackoverflow brasil
-- Query OK, 0 rows affected (0,01 sec)


INSERT INTO orcamentos(Data, Relatorio, Valor, Responsavel)values
                      ('2022-09-22', 'Sr. von Zeppelin, revisão na garantia: trocar filtros, óleo de motor e câmbio', 150.00, 'A. M. Einsenban'), 
                      ('2022-09-22', 'Sra. Schneider, revisão sem garantia: trocar filtros e óleo de motor', 200.00, 'Ricardo Frohmmer'),
                      ('2022-09-22', 'Sr. Meier, conserto sem garantia: troca de radiador, água, aditivo e teste', 249.90, 'A. M. Einsenban'),
                      ('2022-09-23', 'Sra Michele von Neumann: revisão completa sem garantia. Vai descer a serra amanhã!', 200.00, 'A. M. Einsenban'); 

-- ERROR 1136 (21S01): Column count doesn't match value count at row 4   

apertei sem querer o enter antes de terminar de digitar a palavra clientes e tive a grata surpresa abaixo:

mysql> select * from cl
clear                   clientes.CPF            clientes.Nome          
clientes                clientes.Endereço      clientes.Telefone      
clientes.Cliente_desde  clientes.idCliente  

mysql> select * from orcamentos;
+-------------+-----------+--------------+------------+--------------------------------------------------------------------------------------+-------+------------------+
| idOrcamento | idOrcVeic | idOrcCliente | Data       | Relatorio                                                                            | Valor | Responsavel      |
+-------------+-----------+--------------+------------+--------------------------------------------------------------------------------------+-------+------------------+
|           5 |      NULL |         NULL | 2022-09-22 | Sr. von Zeppelin, revisão na garantia: trocar filtros, óleo de motor e câmbio        |   150 | A. M. Einsenban  |
|           6 |      NULL |         NULL | 2022-09-22 | Sra. Schneider, revisão sem garantia: trocar filtros e óleo de motor                 |   200 | Ricardo Frohmmer |
|           7 |      NULL |         NULL | 2022-09-22 | Sr. Meier, conserto sem garantia: troca de radiador, água, aditivo e teste           | 249.9 | A. M. Einsenban  |
|           8 |      NULL |         NULL | 2022-09-23 | Sra Michele von Neumann: revisão completa sem garantia. Vai descer a serra amanhã!   |   200 | A. M. Einsenban  |
+-------------+-----------+--------------+------------+--------------------------------------------------------------------------------------+-------+------------------+
4 rows in set (0,00 sec)



-- --
INSERT INTO ordemServico(OStempo_hr, OSvalor_R$)values
                        (1, 399.80),
                        (1, 482.60),
                        (2, 1080.50),
                        (2, 475);

mysql> select * from ordemServico;
+------+------------+-------------+-----------------+------------+------------+
| idOS | idOStabela | idOSveiculo | idOStrabalhador | OStempo_hr | OSvalor_R$ |
+------+------------+-------------+-----------------+------------+------------+
|    5 |       NULL |        NULL |            NULL |          1 |      399.8 |
|    6 |       NULL |        NULL |            NULL |          1 |      482.6 |
|    7 |       NULL |        NULL |            NULL |          2 |     1080.5 |
|    8 |       NULL |        NULL |            NULL |          2 |        475 |
+------+------------+-------------+-----------------+------------+------------+
4 rows in set (0,00 sec)


INSERT INTO fatura(valor, formaPagto, parcelas)values
                  (399.80, 'débito à vista', 0),
                  (482.60, 'crédito (visa)', 2),
                  (1080.5, 'crédito(pix parcelado)', 5),
                  (475.00, 'crédito(mastercard)', 2);

mysql> select * from fatura;
+----------+--------------+--------+-------------------------+----------+
| idFatura | idFatCliente | valor  | formaPagto              | parcelas |
+----------+--------------+--------+-------------------------+----------+
|        1 |         NULL |  399.8 | débito à vista          |        0 |
|        2 |         NULL |  482.6 | crédito (visa)          |        2 |
|        3 |         NULL | 1080.5 | crédito(pix parcelado)  |        5 |
|        4 |         NULL |    475 | crédito(mastercard)     |        2 |
+----------+--------------+--------+-------------------------+----------+
4 rows in set (0,00 sec)

mysql> show tables;
+-----------------------------------------------+
| Tables_in_automecanica                        |
+-----------------------------------------------+
| clientes ok                                   |
| equipe - não sei fazer ainda                  |
| estoque ok                                    |
| fatura  ok                                    |
| fornecedores ok                               |
| orcamentos ok                                 |
| ordemServico ok                               |
| retiradas_do_estoque_pelas_ordens_de_servicos | 
| tabelaValoresHora ok                          |
| trabalhadores  ok                             |
| valoresServicosPrestados                      | 
| veiculos   ok                                 |
| veiculosCliente                               | 
+-----------------------------------------------+ 
13 rows in set (0,00 sec)
