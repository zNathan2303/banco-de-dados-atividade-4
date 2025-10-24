-- INSTRUÇÃO PARA A CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE loja_ds2m_b;

use loja_ds2m_b;

-- INSTRUÇÃO PARA A CRIAÇÃO DA TABELA DE CARGOS
CREATE TABLE tbl_cargo (
	id_cargo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    salario_base DECIMAL(11,2) NOT NULL,
    descricao VARCHAR(500),
    cbo VARCHAR(10)
);

-- INSTRUÇÃO PARA A CRIAÇÃO DA TABELA DE FUNCIONÁRIOS
CREATE TABLE tbl_funcionario (
	id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    data_admissao DATE NOT NULL,
    data_demissao DATE
);

-- INSTRUÇÃO PARA A CRIAÇÃO DA TABELA DE FILIAIS
CREATE TABLE tbl_filial (
	id_filial INT PRIMARY KEY AUTO_INCREMENT,
    data_abertura DATE NOT NULL,
    cnpj VARCHAR(20) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    logradouro VARCHAR(100) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    uf VARCHAR(2) NOT NULL DEFAULT 'SP',
    cep VARCHAR(9) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    historia VARCHAR(1500),
    ativa BOOLEAN DEFAULT TRUE,
    data_fechamento DATE
);

/*
	CRIAR A TABELA RELACIONAMENTO ENTR
    FUNCIONÁRIO, FILIAL E CARGO
*/

CREATE TABLE tbl_funcionario_cargo (
	id INT PRIMARY KEY AUTO_INCREMENT,
    data_inicio DATE NOT NULL,
    data_fim DATE,
	salario_atual DECIMAL(11,2) NOT NULL,
    anotacoes VARCHAR(500),
    id_filial INT NOT NULL,
    id_cargo INT NOT NULL,
    id_funcionario INT NOT NULL,
    FOREIGN KEY (id_filial) REFERENCES tbl_filial (id_filial),
    FOREIGN KEY (id_cargo) REFERENCES tbl_cargo (id_cargo),
    FOREIGN KEY (id_funcionario) REFERENCES tbl_funcionario (id_funcionario)
);

CREATE TABLE tbl_endereco_funcionario (
	id int primary key auto_increment,
    logradouro varchar(100) not null,
    numero varchar(20) not null,
    bairro varchar(100) not null,
    cidade varchar(100) not null,
    uf varchar(2) not null,
    cep varchar(9) not null,
    id_funcionario int not null,
    foreign key (id_funcionario) references tbl_funcionario(id_funcionario)
);
