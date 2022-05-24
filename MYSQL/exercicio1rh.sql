CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
id BIGINT AUTO_INCREMENT,
nome varchar(255) not null,
setor varchar(255) not null,
salario decimal(7,2) not null,
data_admissao date,
primary key (id)
);

insert into tb_funcionarios(nome, setor, salario, data_admissao)
values("Fernando", "Compras", 2500.00, "2002-05-09");
insert into tb_funcionarios(nome, setor, salario, data_admissao) 
values ("Lisandra", "Vendas", 3200.00, "2015-03-22");
insert into tb_funcionarios(nome, setor, salario, data_admissao) 
values ("Carmencita", "Marketing", 3000.00, "2020-06-15");
insert into tb_funcionarios(nome, setor, salario, data_admissao) 
values ("Loudes", "Jurídico", 6900.00, "2016-08-15");
insert into tb_funcionarios(nome, setor, salario, data_admissao) 
values ("Matheus", "TI", 1500.00, "2022-04-01");

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 1350.00 WHERE id = 1;
