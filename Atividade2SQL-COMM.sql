CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(200),
descricao text,
preco decimal (10.2),
estoque int,
categoria varchar(80),
primary key (id)
);

INSERT INTO tb_produtos (nome,descricao,preco,estoque,categoria)
VALUES ('Milka Oreo','uma deliciosa combinação de chocolate ao leite suave da marca Milka com pedaços crocantes de biscoito Oreo', 39.9, 50, 'Chocolates Importados'),
('Milka Avelã','é uma harmoniosa fusão entre o cremoso chocolate ao leite da Milka e a delicada intensidade das avelãs', 19.9,40,'Chocolates Importados'),
('Milka Cheesecake','O Chocolate Milka Cheesecake oferece a doçura suave do chocolate ao leite Milka com um toque de indulgência inspirado na cheesecake', 35.9,50,'Chocolates Importados'),
('Razzles Frutas Vermelhas','As Razzles de Frutas Vermelhas são uma divertida explosão de sabor que começa como balas e se transforma em chiclete.', 15.9,30,'Balas Importadas'),
('Razzles Original','As Razzles são uma divertida explosão de sabor que começa como balas e se transforma em chiclete.', 12.9, 40,'Balas Importadas'),
('Doritos Flamin Hot','Doritos Flamin Hot é uma explosão de calor e sabor.', 9.9,60,'Snacks'),
('Doritos Queijo Nacho','Doritos Queijo Nacho é uma festa de sabor no estilo tex-mex.',9.9,50,'Snacks'),
('Fandangos Presunto','Fandangos de Presunto são uma explosão de sabor suíno.',8.9,40,'Snacks');

SELECT * FROM tb_produtos WHERE preco<500;

SELECT * FROM tb_produtos WHERE preco>500;

UPDATE tb_produtos SET preco=9.9 WHERE id=8;