CREATE DATABASE db_escola; 

USE db_escola; 

CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome varchar(200),
    serie int,
    turma int,
    nota decimal(2,1),
    primary key (id)
);

INSERT INTO tb_estudantes (nome, serie, turma, nota) 
VALUES ("Bruno Madrigal", 8, 81, 6.0);
INSERT INTO tb_estudantes (nome, serie, turma, nota) 
VALUES ("Barbara Millicent", 7, 71, 9.0);
INSERT INTO tb_estudantes (nome, serie, turma, nota) 
VALUES ("Bartholomew Simpson", 5, 52, 2.1);
INSERT INTO tb_estudantes (nome, serie, turma, nota) 
VALUES ("James Hook", 8, 82, 6.5);
INSERT INTO tb_estudantes (nome, serie, turma, nota)  
VALUES ("Cássio Marques de Araújo", 3, 32, 3.5);
INSERT INTO tb_estudantes (nome, serie, turma, nota) 
VALUES ("Marjorie Jacqueline Bouvier", 8, 83, 9.2);
INSERT INTO tb_estudantes (nome, serie, turma, nota) 
VALUES ("Aurora Phillip", 7, 73, 8.7);
INSERT INTO tb_estudantes (nome, serie, turma, nota) 
VALUES ("Elsa de Arendelle", 6, 61, 8.0);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 3.0 WHERE id = 2;