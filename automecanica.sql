
-- desafio 4: banco de dados da oficina mecânica

CREATE DATABASE automecanica

USE automecanica

mysql> show tables;
Empty set (0,00 sec)

-- ======= tabelas criadas ==-================
-- TABELA 1: CLIENTES  --
-- Conferido: 24/9 --
CREATE TABLE clientes(
      idCliente INT AUTO_INCREMENT PRIMARY KEY,
      Nome VARCHAR(100) NOT NULL,
      CPF CHAR(11) NOT NULL,
      Cliente_desde DATE NOT NULL,
      Endereço VARCHAR(100) NOT NULL,
      Telefone CHAR(12) NOT NULL,
      CONSTRAINT unique_cpf_client UNIQUE (CPF)      
);

-- Query OK, 0 rows affected (3,15 sec)


Avenida das nações unidas, 1345, Centro - São Paulo - SP, 01249982

-- TABELA 2: Veículos --
-- conferido em 24 de setembro --
CREATE TABLE veiculos(
      idVeiculo INT AUTO_INCREMENT PRIMARY KEY,
      Proprietário VARCHAR(100) NOT NULL,      
      Marca VARCHAR(30) NOT NULL,      
      Modelo VARCHAR(30) NOT NULL,
      Placa VARCHAR(10) NOT NULL,
      CONSTRAINT unique_placa_veiculo UNIQUE (Placa)      
);

-- Query OK, 0 rows affected (3,42 sec)

-- TABELA 3: TRABALHADORES 
-- conferido em 24 de setembro --
CREATE TABLE trabalhadores(
      idTrabalhador INT AUTO_INCREMENT PRIMARY KEY,
      Nome VARCHAR(100) NOT NULL,
      CPF CHAR(11) NOT NULL,
      Profissão VARCHAR(60) NOT NULL,
      Endereço VARCHAR(100) NOT NULL,
      Telefone CHAR(12) NOT NULL,
      CONSTRAINT unique_cpf_trabalhador UNIQUE (CPF)      
);

-- Query OK, 0 rows affected (2,87 sec) --


-- CONFERIDO EM 24/9/2022 --
-- tabela 4: Valores dos tipos de serviços dos mecânicos -- 
-- Veículos em garantia têm valores diferentes dos sem garantia --
-- Conserto tem valor diferente de revisão --
-- Reais por hora de trabalho --
CREATE TABLE tabelaValoresHora(
      idTabela INT AUTO_INCREMENT PRIMARY KEY,
      revisao_na_garantia FLOAT NOT NULL,
      conserto_na_garantia FLOAT NOT NULL,      
      revisao_sem_garantia FLOAT NOT NULL,
      conserto_sem_garantia FLOAT NOT NULL
);
-- Query OK, 0 rows affected (2,81 sec)

-- table 5 Fornecedores --
-- CONFERIDO EM 24/9/2022 --
CREATE TABLE fornecedores(
      idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
      razaoSocial VARCHAR(45) NOT NULL,
      cnpj CHAR(14) NOT NULL,
      endereço VARCHAR(100) NOT NULL,
      telefone char(12) NOT NULL,
      CONSTRAINT unique_cnpj_fornecedores UNIQUE (cnpj)      
);

-- Query OK, 0 rows affected (3,25 sec)


-- CONFERIDO EM 24/9/2022 --
-- tabela 6 Estoque --
CREATE TABLE estoque(
      idEstoque INT AUTO_INCREMENT PRIMARY KEY,
      Peca VARCHAR(45) NOT NULL,
      fabricante VARCHAR(45) NOT NULL,
      fabricado_em DATE NOT NULL,
      código VARCHAR(20) NOT NULL,
      custo_R$ FLOAT NOT NULL,
      quantidade INT NOT NULL,
      CONSTRAINT fk_estoque_fornecedores FOREIGN KEY(idEstoque) REFERENCES fornecedores(idFornecedor)
);
-- Query OK, 0 rows affected (2,28 sec)

-- conferido: 24/9/2022 --
-- TABELA 7 VEÍCULOS DO CLIENTE --
CREATE TABLE veiculosCliente(
      idVCcliente INT AUTO_INCREMENT PRIMARY KEY,
      idVCveiculo INT,
      CONSTRAINT fk_vccliente_idcliente FOREIGN KEY(idVCcliente) REFERENCES clientes(idCliente),
      CONSTRAINT fk_vccliente_idveiculo FOREIGN KEY(idVCveiculo) REFERENCES veiculos(idVeiculo)
);

-- Query OK, 0 rows affected (2,58 sec) --

-- conferido em 24/9/2022 --
-- 8 Tabela dos Valores dos Serviços Prestados --
CREATE TABLE valoresServicosPrestados(
      idVSPtabela INT,
      idVSPmec INT,
      CONSTRAINT fk_vsp_tabela FOREIGN KEY(idVSPtabela) REFERENCES tabelaValoresHora(idTabela),
      CONSTRAINT fk_vsp_trabalhadores FOREIGN KEY(idVSPmec) REFERENCES trabalhadores(idTrabalhador)
);
-- Query OK, 0 rows affected (3,03 sec) --

-- 9 TABELA DERIVADA EQUIPE DE CONSERTOS --
-- CONFERIDA 24/09/2022 --
CREATE TABLE equipe(
      idEquipe INT AUTO_INCREMENT PRIMARY KEY,
      idEqTrab INT,     
      CONSTRAINT fk_equipe_veiculo FOREIGN KEY(idEquipe) REFERENCES 
veiculos(idVeiculo),
      CONSTRAINT fk_equipe_trabalhadores FOREIGN KEY(idEqTrab) REFERENCES trabalhadores(idTrabalhador)
);
-- Query OK, 0 rows affected (2,59 sec) --

-- table 10 -- Orçamentos --
-- conferido: 24/9/2022 --
CREATE TABLE orcamentos(
      idOrcamento INT AUTO_INCREMENT PRIMARY KEY,
      idOrcVeic INT,
      idOrcCliente INT,
      Data DATE NOT NULL,
      Relatorio VARCHAR (100) NOT NULL,
      Valor FLOAT NOT NULL,
      Responsavel VARCHAR(50),
      CONSTRAINT fk_orcamentos_equipe FOREIGN KEY(idOrcamento) REFERENCES equipe(idEquipe),
      CONSTRAINT fk_veiculos_orcamentos FOREIGN KEY(idOrcVeic) REFERENCES veiculos(idVeiculo),
      CONSTRAINT fk_orcamentos_veiculos_cliente FOREIGN KEY(idOrcCliente) REFERENCES veiculosCliente(idVCcliente)
);
-- Query OK, 0 rows affected (3,54 sec)

-- 11 tabela das Ordens de Serviços --
-- CONFERIDA 24/09/2022
CREATE TABLE ordemServico(
      idOS INT AUTO_INCREMENT PRIMARY KEY,
      idOStabela INT,      
      idOSveiculo INT,
      idOStrabalhador INT,
      OStempo_hr FLOAT,
      OSvalor_R$ FLOAT,
      CONSTRAINT fk_ordem_de_servico_orcamentos FOREIGN KEY(idOS) REFERENCES orcamentos(idOrcamento),
      CONSTRAINT fk_ordem_de_servico_tabela FOREIGN KEY(idOStabela) REFERENCES tabelaValoresHora(idTabela),
      CONSTRAINT fk_ordem_de_servico_veiculo FOREIGN KEY(idOSveiculo) REFERENCES equipe(idEquipe),
      CONSTRAINT fk_ordem_de_servico_trabalhador FOREIGN KEY(idOStrabalhador) REFERENCES equipe(idEqTrab)
);
-- Query OK, 0 rows affected (3,95 sec)

-- 12 --
CREATE TABLE retiradas_do_estoque_pelas_ordens_de_servicos(
      idRetiradasEstoqueidOS INT,
      idRetiradasEstoqueidEstoque INT,
      CONSTRAINT fk_retiradas_estoque_OS FOREIGN KEY(idRetiradasEstoqueidOS) REFERENCES ordemServico(idOS),
      CONSTRAINT fk_retiradas_estoque_estoque FOREIGN KEY(idRetiradasEstoqueidEstoque) REFERENCES estoque(idEstoque)
);

-- Query OK, 0 rows affected (3,78 sec)

-- 13 TABELA FATURA -- 
-- CONFERIDO EM 24 DE SETEMBRO DE 2022 --
CREATE TABLE fatura(
      idFatura INT AUTO_INCREMENT PRIMARY KEY,
      idFatCliente INT,
      valor FLOAT NOT NULL,
      formaPagto VARCHAR(50) NOT NULL,
      parcelas INT DEFAULT (1),
      CONSTRAINT fk_fatura_ordem_servico FOREIGN KEY(idFatura) REFERENCES ordemServico(idOS),
      CONSTRAINT fk_fatura_clientes FOREIGN KEY(idFatCliente) REFERENCES clientes(idCliente)   
);

-- Query OK, 0 rows affected (3,55 sec)

====================================================================================
todas tabelas criadas até 19:04 de 24 de setembro de 2022.
====================================================================================
