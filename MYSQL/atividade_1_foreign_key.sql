CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
classe varchar(255) not null,
local_de_origem varchar(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
arma varchar(255) NOT NULL,
poder_de_ataque int,
poder_de_defesa int,
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(classe, local_de_origem)
VALUES ("Arqueire", "Isla"),
("Guerreire", "Vulcano"),
("Mage", "Jura Tempest"),
("Ladine", "Shadow"),
("Clérige", "Skypiea");

SELECT * FROM tb_classes;

INSERT INTO tb_personagens(nome, arma, poder_de_ataque, poder_de_defesa, classe_id)
VALUES ("Rimuru", "Cajado", 1900, 2300, 3),
("Nami", "Bastão", 1550, 1100, 4),
("Leona", "Escudo", 1350, 2800, 2),
("Millicent", "Anel", 1200, 1500, 5),
("Ellef", "Arco", 2350, 1200, 1),
("Kaguya", "Adagas", 2100, 1550, 4),
("Cirilla", "Besta", 3400, 2300, 1),
("Shirogane", "Espada", 1550, 2100, 2);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_de_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_de_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.id = 4;


