CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
produto varchar(255) NOT NULL,
quantidade int,
preco decimal (7,2) NOT NULL,
tipo varchar(255) NOT NULL,
PRIMARY KEY (id)
);

insert into tb_produtos(produto, quantidade, preco, tipo)
values("Mousepad", 300, 35.00, "Acessórios Eletrônicos");
insert into tb_produtos(produto, quantidade, preco, tipo)
values ("Cachecol", 500, 53.00, "Roupas");
insert into tb_produtos(produto, quantidade, preco, tipo)
values ("Boina", 100, 47.00, "Roupas");
insert into tb_produtos(produto, quantidade, preco, tipo)
values ("Computador All-in-One", 50, 4000.00, "Eletrônicos");
insert into tb_produtos(produto, quantidade, preco, tipo)
values ("Cadeira", 200, 600.00, "Móveis");
insert into tb_produtos(produto, quantidade, preco, tipo)
values ("Par de Brincos", 1500, 18.00, "Acessórios");
insert into tb_produtos(produto, quantidade, preco, tipo)
values ("Pulseira", 1000, 15.00, "Acessórios");
insert into tb_produtos(produto, quantidade, preco, tipo)
values ("Estabilizador", 280, 100.00, "Eletrônicos");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 5350.00 WHERE id = 4;
