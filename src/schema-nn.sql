CREATE DATABASE perguntas;

USE perguntas;

CREATE TABLE quizzes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE questoes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    enunciado INT NOT NULL
);

CREATE TABLE quizzes_possuem_questoes(
    id_quiz INT,
    id_questao INT,
    PRIMARY KEY (id_quiz, id_questao),
    FOREIGN KEY (id_quiz) REFERENCES quizzes (id),
    FOREIGN KEY (id_questao) REFERENCES questoes (id)
);

CREATE TABLE alternativas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    texto VARCHAR(255) NOT NULL,
    correta BOOLEAN NOT NULL,
    id_questao INT NOT NULL,
    FOREIGN KEY (id_questao) REFERENCES questoes(id)
);

-- SHOW FIELDS FROM quizzes_possuem_questoes;

SHOW TABLES FROM perguntas;