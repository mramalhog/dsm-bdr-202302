create database bd_aula03;

\c bd_aula03;

create table tbl_cliente (codigo_cliente integer PRIMARY KEY, nome text NOT NULL, cidade text, endereco text);
create table tbl_titulo (codigo_titulo integer PRIMARY KEY, titulo text NOT NULL, descricao text, categoria text);
create table tbl_emprestimo (numero_emprestimo integer PRIMARY KEY, codigo_cliente integer, codigo_livro integer);
create table tbl_livros (codigo_livro integer PRIMARY KEY, status text);