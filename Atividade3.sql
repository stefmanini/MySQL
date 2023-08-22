CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT,
    genero VARCHAR(20),
    nota DECIMAL(4,2),
    curso VARCHAR(50)
);

INSERT INTO tb_estudantes (nome, idade, genero, nota, curso)
VALUES
    ('Nícolas', 18, 'Masculino', 8.5, 'Matemática'),
    ('Brenda', 19, 'Feminino', 9.2, 'História'),
    ('Miguel', 20, 'Masculino', 6.8, 'Geografia'),
    ('Mia', 21, 'Feminino', 7.5, 'Biologia'),
    ('Diego', 19, 'Masculino', 5.2, 'Física'),
    ('Roberta', 18, 'Feminino', 8.9, 'Literatura'),
    ('Giovani', 20, 'Masculino', 9.8, 'Matemática'),
    ('Lupita', 21, 'Feminino', 6.3, 'História');

SELECT * FROM tb_estudantes WHERE nota > 7.0;

SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes
SET nota = 7.2
WHERE id = 3;