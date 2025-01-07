CREATE DATABASE Rh;

USE Rh;

CREATE TABLE colaboradores (
    id INT PRIMARY KEY AUTO_INCREMENT,  
    nome VARCHAR(100),                
    cargo VARCHAR(50),                
    data_admissao DATE,                 
    salario DECIMAL(10, 2),             
    departamento VARCHAR(50)          
);

INSERT INTO colaboradores (nome, cargo, data_admissao, salario, departamento)
VALUES 
('João Silva', 'Analista de TI', '2020-03-15', 3000.00, 'Tecnologia'),
('Maria Oliveira', 'Gerente de Vendas', '2018-06-22', 3500.00, 'Vendas'),
('Ryan Alexandre', 'Assistente Administrativo', '2021-08-10', 1800.00, 'Administração'),
('Ana Costa', 'Analista de RH', '2019-02-05', 2500.00, 'Recursos Humanos'),
('Felipe Almeida', 'Desenvolvedor', '2022-01-30', 2200.00, 'Tecnologia');

SELECT * FROM colaboradores
WHERE salario > 2000;

SELECT * FROM colaboradores
WHERE salario < 2000;

UPDATE colaboradores
SET salario = 3200.00
WHERE nome = 'Ryan Alexandre';

DROP TABLE colaboradores;

