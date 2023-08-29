CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id INT auto_increment,
forca INT,
magia VARCHAR(255),
primary key (id)
);

CREATE TABLE tb_personagens(
id INT auto_increment,
nome VARCHAR(250) not null,
idade VARCHAR(250) not null,
poder VARCHAR(250) not null,
fraqueza VARCHAR(250) not null,
primary key (id)
);

INSERT INTO tb_classes(forca, magia) VALUES (10.5, 'curandeiro');
INSERT INTO tb_classes(forca, magia) VALUES (8.2, 'fazendeiro');
INSERT INTO tb_classes(forca, magia) VALUES (10.9, 'elemental');
INSERT INTO tb_classes(forca, magia) VALUES (12, 'guerreiro');
INSERT INTO tb_classes(forca, magia) VALUES (9.7, 'bruxo');

SELECT * FROM tb_classes;

ALTER TABLE tb_personagens ADD categoria_id int;
ALTER TABLE tb_personagens ADD constraint fk_personagens_classes foreign key(categoria_id) references tb_classes(id);

INSERT INTO tb_personagens(nome,idade,poder,fraqueza,categoria_id) VALUES ('fúria da noite','35', 9000, 2000, 4);
INSERT INTO tb_personagens(nome,idade,poder,fraqueza,categoria_id) VALUES ('wind','35', 9000, 2000, 3);
INSERT INTO tb_personagens(nome,idade,poder,fraqueza,categoria_id) VALUES ('harry','17', 5000, 1000, 5);
INSERT INTO tb_personagens(nome,idade,poder,fraqueza,categoria_id) VALUES ('voldemort','45', 1000, 2000, 5);
INSERT INTO tb_personagens(nome,idade,poder,fraqueza,categoria_id) VALUES ('snicles','19', 6000, 4000, 2);
INSERT INTO tb_personagens(nome,idade,poder,fraqueza,categoria_id) VALUES ('malfoy','20', 4000, 1000, 2);
INSERT INTO tb_personagens(nome,idade,poder,fraqueza,categoria_id) VALUES ('sirius','35', 8000, 3000, 1);
INSERT INTO tb_personagens(nome,idade,poder,fraqueza,categoria_id) VALUES ('bellatrix','35', 7500, 3000, 1);

SELECT nome,poder,categoria_id FROM tb_personagens WHERE poder>2000;

SELECT nome,poder,categoria_id FROM tb_personagens WHERE poder BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

USE db_generation_game_online;

SELECT nome,idade,poder,fraqueza FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id WHERE tb_personagens.poder = 2000;