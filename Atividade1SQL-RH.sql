CREATE DATABASE bd_recursosh;
USE bd_recursosh;

CREATE TABLE tb_colaboradores (
id bigint auto_increment,
nome varchar(200),
cargo varchar(200),
salario decimal(10,2),
setor varchar(50),
data_contratacao date,
primary key (id)
);

INSERT INTO tb_colaboradores (nome, cargo, salario, setor, data_contratacao)
VALUES ('Nícolas Manini', 'demolidor', 3000, 'Operação', '2020-09-09');

INSERT INTO tb_colaboradores (nome, cargo, salario, setor, data_contratacao)
VALUES ('Steffanie Manini', 'gerente', 5400, 'RH', '1999-05-09');

INSERT INTO tb_colaboradores (nome, cargo, salario, setor, data_contratacao)
VALUES ('Gustavo Medeiros', 'motorista', 2000, 'Operação', '2001-08-12');

INSERT INTO tb_colaboradores (nome, cargo, salario, setor, data_contratacao)
VALUES ('Juan Pablo', 'fiscal de caixa', 1900, 'Operação', '2008-08-12');

INSERT INTO tb_colaboradores (nome, cargo, salario, setor, data_contratacao)
VALUES ('Carla Lopes', 'CEO', 9000, 'Vendas', '1978-07-01');

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = '2100' WHERE id = 3;