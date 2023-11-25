CREATE DATABASE perguntas;

USE perguntas;

CREATE TABLE quizzes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

-- SHOW FIELDS FROM quizzes;

CREATE TABLE questoes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    enunciado INT NOT NULL,
    id_quiz INT NOT NULL,
    FOREIGN KEY (id_quiz) REFERENCES quizzes(id)
);

-- SHOW FIELDS FROM questoes;

CREATE TABLE alternativas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    texto VARCHAR(255) NOT NULL,
    correta BOOLEAN NOT NULL,
    id_questao INT NOT NULL,
    FOREIGN KEY (id_questao) REFERENCES questoes(id)
);

-- SHOW FIELDS FROM alternativas;

-- DROP DATABASE perguntas;