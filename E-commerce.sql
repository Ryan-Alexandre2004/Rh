CREATE DATABASE EcommerceDB;

USE EcommerceDB;

CREATE TABLE Produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    categoria VARCHAR(100),
    preco DECIMAL(10, 2),
    estoque INT
);

INSERT INTO Produtos (nome, descricao, categoria, preco, estoque)
VALUES
('Smartphone XYZ', 'Smartphone com 6GB de RAM e 128GB de memória interna', 'Eletrônicos', 799.99, 50),
('Camiseta Estampada', 'Camiseta com estampa exclusiva', 'Roupas', 49.90, 200),
('Notebook Gamer', 'Notebook com placa de vídeo dedicada', 'Eletrônicos', 4200.00, 30),
('Tênis Running', 'Tênis ideal para corridas', 'Calçados', 299.90, 100),
('Relógio Inteligente', 'Relógio com monitoramento de saúde', 'Acessórios', 599.00, 70),
('Cadeira Ergonômica', 'Cadeira confortável para escritório', 'Móveis', 799.00, 40),
('Fone de Ouvido Bluetooth', 'Fone sem fio com cancelamento de ruído', 'Eletrônicos', 350.00, 150),
('Mochila Executiva', 'Mochila com compartimento para notebook', 'Acessórios', 199.90, 80);

SELECT * FROM Produtos
WHERE preco > 500;

SELECT * FROM Produtos
WHERE preco < 500;

UPDATE Produtos
SET preco = 250.00
WHERE nome = 'Tênis Running';
