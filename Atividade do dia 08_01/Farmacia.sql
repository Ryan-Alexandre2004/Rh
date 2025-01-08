CREATE DATABASE farmacia;

USE farmacia;

CREATE TABLE tb_categorias (
    categoria_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(100) NOT NULL,
    descricao_categoria VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos (
    produto_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    descricao TEXT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(categoria_id)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
    ('Medicamentos', 'Produtos relacionados ao tratamento e cura de doenças'),
    ('Cosméticos', 'Produtos para cuidados com a pele, cabelo e higiene pessoal'),
    ('Higiene', 'Produtos de higiene pessoal e doméstica'),
    ('Suplementos', 'Produtos alimentares para suplementação de vitaminas e nutrientes'),
    ('Produtos Naturais', 'Produtos naturais para bem-estar e saúde');

INSERT INTO tb_produtos (nome_produto, valor, descricao, categoria_id)
VALUES
    ('Paracetamol 500mg', 15.00, 'Medicamento para febre e dor', 1),
    ('Shampoo Hidratante', 30.00, 'Shampoo para cabelos secos e danificados', 2),
    ('Sabonete Líquido', 12.00, 'Sabonete líquido para uso diário', 3),
    ('Creatina 200g', 80.00, 'Suplemento para ganho de massa muscular', 4),
    ('Óleo de Coco', 25.00, 'Produto natural para hidratação da pele e cabelo', 5),
    ('Aspirina 100mg', 20.00, 'Medicamento para dor e febre', 1),
    ('Creme Anti-Rugas', 55.00, 'Creme cosmético para redução de rugas', 2),
    ('Suplemento de Vitamina C', 40.00, 'Suplemento alimentar para imunidade', 4);

SELECT * FROM tb_produtos
WHERE valor > 50.00;

SELECT * FROM tb_produtos
WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos
WHERE nome_produto LIKE '%C%';

SELECT p.produto_id, p.nome_produto, p.valor, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.categoria_id = c.categoria_id;

SELECT p.produto_id, p.nome_produto, p.valor, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c
ON p.categoria_id = c.categoria_id
WHERE c.nome_categoria = 'Cosméticos';
