-- atividades:
-- 1. recuperação simples com SELECT; ok
-- 2. filtros com WHERE; 
-- 3. expressões geradoras de atributos derivados;  
-- 4. ordenações de dados com ORDER BY; ok
-- 5. filtros aos grupos com HAVING; ok
-- 6. junções de tabelas para ter perspectiva mais complexa dos dados. ok
-- 7. agrupamentos com GROUP BY; ok

-- algumas perguntas que consegui responder: --

-- 1) Quantas ordens de serviço efetuou cada cliente?

SELECT c.idCliente, Nome, COUNT(*) AS num_ordens_servico FROM clientes c INNER JOIN ordemServico os ON c.idCliente = os.idOS
                    GROUP BY idCliente;

+-----------+------------------------------+--------------------+
| idCliente | Nome                         | num_ordens_servico |
+-----------+------------------------------+--------------------+
|         5 | Michele Laendell von Neumann |                  1 |
|         6 | Isabel Sidnei Kohn           |                  1 |
|         7 | Davi Henrique Köller         |                  1 |
|         8 | Albert Eistein von Zeppelin  |                  1 |
+-----------+------------------------------+--------------------+
-- 4 rows in set (0,02 sec)

--2) Quantos orçamentos cada cliente solicitou?

SELECT c.idCliente, Nome, COUNT(*) AS num_orcamentos FROM clientes c INNER JOIN orcamentos orc ON c.idCliente = orc.idOrcamento
                    GROUP BY idCliente;

+-----------+------------------------------+----------------+
| idCliente | Nome                         | num_orcamentos |
+-----------+------------------------------+----------------+
|         5 | Michele Laendell von Neumann |              1 |
|         6 | Isabel Sidnei Kohn           |              1 |
|         7 | Davi Henrique Köller         |              1 |
|         8 | Albert Eistein von Zeppelin  |              1 |
+-----------+------------------------------+----------------+
-- 4 rows in set (0,00 sec)

-- 3) Ordena os Nomes dos clientes por ordem alfabética crescente: 

-- order by --
SELECT * FROM clientes
      ORDER BY Nome;

+-----------+------------------------------+-------------+---------------+-----------------------------------------------------------------+--------------+
| idCliente | Nome                         | CPF         | Cliente_desde | Endereço                                                        | Telefone     |
+-----------+------------------------------+-------------+---------------+-----------------------------------------------------------------+--------------+
|         8 | Albert Eistein von Zeppelin  | 32968471390 | 2020-11-20    | Rua Berlin, 1961 - Lebom - Frioburgo, CEP 20000003              | 21969966969  |
|         7 | Davi Henrique Köller         | 13341975422 | 2017-07-07    | Avenida Bosch, 7770 - Lebom - Frioburgo, CEP 20000002           | 219677897781 |
|         6 | Isabel Sidnei Kohn           | 12332177511 | 2018-09-10    | Avenida do Kaiser, 3220 - Lebom - Frioburgo, CEP 20000004       | 21969966969  |
|         4 | Julia França Lehmann         | 78912345699 | 2020-12-30    | Rua das Laranjeiras, 862 - Centro - Frioburgo, CEP 20000001     | 21999888775  |
|         1 | Marta Wolf Bach              | 12345678912 | 2008-08-20    | Rua Silva Prata, 29 - Lebom - Frioburgo, CEP 20000003           | 21999777456  |
|         2 | Mateus Schneider             | 98765432101 | 2009-10-03    | Alameda Almada Ferreira, 289 - Centro - Frioburgo, CEP 20000001 | 21999777555  |
|         5 | Michele Laendell von Neumann | 98745612303 | 2021-07-02    | Avenida Köller, 190 - Centro - Frioburgo, CEP 20000000          | 21999775890  |
|         3 | Ricardo Fernando Meier       | 45678912321 | 2019-01-13    | Avenida das Vinhas, 1009 - Centro - Frioburgo, CEP 20000000     | 21999775776  |
+-----------+------------------------------+-------------+---------------+-----------------------------------------------------------------+--------------+
8 rows in set (0,00 sec)


-- 4) Há quanto tempo cada cliente está conosco?

SELECT * FROM clientes
      ORDER BY Cliente_desde;

+-----------+------------------------------+-------------+---------------+-----------------------------------------------------------------+--------------+
| idCliente | Nome                         | CPF         | Cliente_desde | Endereço                                                        | Telefone     |
+-----------+------------------------------+-------------+---------------+-----------------------------------------------------------------+--------------+
|         1 | Marta Wolf Bach              | 12345678912 | 2008-08-20    | Rua Silva Prata, 29 - Lebom - Frioburgo, CEP 20000003           | 21999777456  |
|         2 | Mateus Schneider             | 98765432101 | 2009-10-03    | Alameda Almada Ferreira, 289 - Centro - Frioburgo, CEP 20000001 | 21999777555  |
|         7 | Davi Henrique Köller         | 13341975422 | 2017-07-07    | Avenida Bosch, 7770 - Lebom - Frioburgo, CEP 20000002           | 219677897781 |
|         6 | Isabel Sidnei Kohn           | 12332177511 | 2018-09-10    | Avenida do Kaiser, 3220 - Lebom - Frioburgo, CEP 20000004       | 21969966969  |
|         3 | Ricardo Fernando Meier       | 45678912321 | 2019-01-13    | Avenida das Vinhas, 1009 - Centro - Frioburgo, CEP 20000000     | 21999775776  |
|         8 | Albert Eistein von Zeppelin  | 32968471390 | 2020-11-20    | Rua Berlin, 1961 - Lebom - Frioburgo, CEP 20000003              | 21969966969  |
|         4 | Julia França Lehmann         | 78912345699 | 2020-12-30    | Rua das Laranjeiras, 862 - Centro - Frioburgo, CEP 20000001     | 21999888775  |
|          5 | Michele Laendell von Neumann | 98745612303 | 2021-07-02    | Avenida Köller, 190 - Centro - Frioburgo, CEP 20000000          | 21999775890  |
+-----------+------------------------------+-------------+---------------+-----------------------------------------------------------------+--------------+
8 rows in set (0,00 sec)


-- 5 Quais são as peças que temos em estoque e qual é a quanitdade delas?
-- having --
-- na tabela estoque
SELECT idEstoque, Peca, quantidade, count(*)
      From estoque
      WHERE quantidade >=10
      GROUP BY idEstoque
      HAVING COUNT(*) >=1
      ORDER BY quantidade;

+-----------+----------------------------+------------+----------+
| idEstoque | Peca                       | quantidade | count(*) |
+-----------+----------------------------+------------+----------+
|        20 | óleo SH90                  |         14 |        1 |
|        19 | filtros de ar universal    |         22 |        1 |
|        17 | correia dentada universal  |         25 |        1 |
|        18 | mangueiras X para radiador |         30 |        1 |
+-----------+----------------------------+------------+----------+
4 rows in set (0,01 sec)

-- 6 Qual é o valor das faturas geradas recentemente e a forma de pagamento de cada uma?
-- having --
-- na tabela fatura
SELECT idFatura, valor, formaPagto, count(*)
      From fatura
      WHERE valor >=100
      GROUP BY idFatura
      HAVING COUNT(*) >=1
      ORDER BY valor;
+----------+--------+-------------------------+----------+
| idFatura | valor  | formaPagto              | count(*) |
+----------+--------+-------------------------+----------+
|        1 |  399.8 | débito à vista          |        1 |
|        4 |    475 | crédito(mastercard)     |        1 |
|        2 |  482.6 | crédito (visa)          |        1 |
|        3 | 1080.5 | crédito(pix parcelado)  |        1 |
+----------+--------+-------------------------+----------+
4 rows in set (0,00 sec)
  

-- having --
-- na tabela orçamentos --
SELECT idOrcamento, Valor, count(*)
      From orcamentos
      WHERE Valor >=100
      GROUP BY idOrcamento
      HAVING COUNT(*) >=1
      ORDER BY Valor;

+-------------+-------+----------+
| idOrcamento | Valor | count(*) |
+-------------+-------+----------+
|           5 |   150 |        1 |
|           6 |   200 |        1 |
|           8 |   200 |        1 |
|           7 | 249.9 |        1 |
+-------------+-------+----------+
4 rows in set (0,00 sec)

--------------------------------------------------------------------------------

-- mensagem para o desafio 4 ----------------------------------------------------- 
https://github.com/geosidnei/Desafio4-SQL

Dei meu máximo dentro das minhas limitações de tempo, de aprendizado e de equipamentos.

Não tenho palavras para agradecer a todos da dio por esta oportunidade de estudo para mudança de carreira que logo vai chegar e em especial à Professora e Mestra Juliana Mascarenhas, pela entrega total neste ótimo curso!

Grande abraço

sidnei lopes ribeiro

 
