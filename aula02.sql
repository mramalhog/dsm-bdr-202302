drop database IF EXISTS bd_sistema_bancario;

create database bd_sistema_bancario;

\c bd_sistema_bancario;

create table tabela1 (codigo integer);
create table tabela2 (cliente char);
create table tabela3 (conta integer);
create table tabela4 (agencia integer);
create table tabela5 (valor float);

CREATE TABLE cliente(NOME_CLIENTE varchar(50), CIDADE_CLIENTE varchar(50),ENDERECO_CLIENTE varchar(50));
CREATE TABLE conta(NUMERO_CONTA integer, NOME_AGENCIA varchar(15),SALDO real);
CREATE TABLE emprestimo(NUMERO_EMPRESTIMO integer, NOME_AGENCIA varchar(15),VALOR real);
CREATE TABLE agencia(NOME_AGENCIA varchar(15),CIDADE_AGENCIA varchar(30), DEPOSITOS integer);

DROP TABLE tabela1;
DROP TABLE tabela2;
DROP TABLE tabela3;
DROP TABLE tabela4;
DROP TABLE tabela5;

ALTER TABLE cliente ADD COLUMN idade integer;
ALTER TABLE cliente RENAME COLUMN idade TO idades;
ALTER TABLE cliente DROP COLUMN idades;
ALTER TABLE cliente rename to tbl_cliente;

ALTER TABLE conta rename to tbl_conta;

ALTER TABLE emprestimo rename to tbl_emprestimo;

ALTER TABLE agencia RENAME COLUMN CIDADE_AGENCIA TO ENDERECO_AGENCIA;
ALTER TABLE agencia rename to tbl_agencia;
CREATE SCHEMA mariana;
