CREATE DATABASE pizzaria;

USE pizzaria;

CREATE TABLE tb_categorias (
    categoria_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao_categoria VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas (
    pizza_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_pizza VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    ingredientes TEXT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
    ('Tradicional', 'Pizzas clássicas de sabores populares'),
    ('Especial', 'Pizzas com ingredientes diferenciados'),
    ('Doce', 'Pizzas de sobremesa com frutas e chocolate'),
    ('Vegana', 'Pizzas sem produtos de origem animal'),
    ('Fit', 'Pizzas com ingredientes saudáveis e leves');

INSERT INTO tb_pizzas (nome_pizza, valor, ingredientes, categoria_id)
VALUES
    ('Margherita', 40.00, 'Molho de tomate, mussarela, manjericão', 1),
    ('Calabresa', 45.00, 'Calabresa, cebola, molho de tomate, mussarela', 1),
    ('Frango com Catupiry', 50.00, 'Frango desfiado, catupiry, molho de tomate, cebola', 2),
    ('Chocolate com Morango', 55.00, 'Chocolate, morango, massa doce', 3),
    ('Napolitana', 60.00, 'Molho de tomate, mussarela, presunto, azeitonas', 1),
    ('Portuguesa', 70.00, 'Presunto, ovo, cebola, azeitona, molho de tomate, mussarela', 1),
    ('Vegana de Cogumelos', 45.00, 'Cogumelos, molho de tomate, queijo vegano', 4),
    ('Fit de Abobrinha', 50.00, 'Abobrinha, queijo de cabra, molho pesto, massa integral', 5);

SELECT * FROM tb_pizzas
WHERE valor > 45.00;

SELECT * FROM tb_pizzas
WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas
WHERE nome_pizza LIKE '%M%';

SELECT p.pizza_id, p.nome_pizza, p.valor, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.categoria_id = c.categoria_id;

SELECT p.pizza_id, p.nome_pizza, p.valor, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.categoria_id = c.categoria_id
WHERE c.nome_categoria = 'Doce';
