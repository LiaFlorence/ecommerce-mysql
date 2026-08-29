USE ecommerce_db;

START TRANSACTION;


-- =====================================================
-- 1. CATEGORIAS
-- =====================================================

INSERT INTO categorias (
    nome_categoria,
    descricao,
    ativo
)
VALUES (
    'Livros e Papelaria',
    'Livros, cadernos e materiais de estudo',
    1
)
ON DUPLICATE KEY UPDATE
    id_categoria = LAST_INSERT_ID(id_categoria);

SET @cat_livros = LAST_INSERT_ID();


INSERT INTO categorias (
    nome_categoria,
    descricao,
    ativo
)
VALUES (
    'Casa e Cozinha',
    'Utensílios e produtos para o lar',
    1
)
ON DUPLICATE KEY UPDATE
    id_categoria = LAST_INSERT_ID(id_categoria);

SET @cat_casa = LAST_INSERT_ID();


INSERT INTO categorias (
    nome_categoria,
    descricao,
    ativo
)
VALUES (
    'Informática',
    'Acessórios e equipamentos de informática',
    1
)
ON DUPLICATE KEY UPDATE
    id_categoria = LAST_INSERT_ID(id_categoria);

SET @cat_info = LAST_INSERT_ID();


-- =====================================================
-- 2. FORNECEDORES
-- =====================================================

INSERT INTO fornecedores (
    razao_social,
    nome_fantasia,
    cnpj,
    email,
    telefone,
    cidade,
    estado,
    ativo
)
VALUES (
    'Nordeste Tecnologia LTDA',
    'NordTech',
    '41.582.963/0001-10',
    'contato@nordtech.com.br',
    '(81) 3333-4100',
    'Recife',
    'PE',
    1
)
ON DUPLICATE KEY UPDATE
    id_fornecedor = LAST_INSERT_ID(id_fornecedor);

SET @forn_nordtech = LAST_INSERT_ID();


INSERT INTO fornecedores (
    razao_social,
    nome_fantasia,
    cnpj,
    email,
    telefone,
    cidade,
    estado,
    ativo
)
VALUES (
    'Distribuidora Horizonte LTDA',
    'Horizonte Distribuidora',
    '58.214.730/0001-42',
    'vendas@horizontedistribuidora.com.br',
    '(81) 3333-5200',
    'Jaboatão dos Guararapes',
    'PE',
    1
)
ON DUPLICATE KEY UPDATE
    id_fornecedor = LAST_INSERT_ID(id_fornecedor);

SET @forn_horizonte = LAST_INSERT_ID();


-- =====================================================
-- 3. PRODUTOS
-- =====================================================

INSERT INTO produtos (
    id_categoria,
    id_fornecedor,
    nome_produto,
    descricao,
    sku,
    preco,
    custo,
    peso,
    ativo
)
VALUES (
    @cat_info,
    @forn_nordtech,
    'Mouse sem fio',
    'Mouse óptico sem fio com receptor USB',
    'PRAT-MOUSE-001',
    79.90,
    42.00,
    0.180,
    1
)
ON DUPLICATE KEY UPDATE
    id_produto = LAST_INSERT_ID(id_produto);

SET @prod_mouse = LAST_INSERT_ID();


INSERT INTO produtos (
    id_categoria,
    id_fornecedor,
    nome_produto,
    descricao,
    sku,
    preco,
    custo,
    peso,
    ativo
)
VALUES (
    @cat_info,
    @forn_nordtech,
    'Teclado mecânico compacto',
    'Teclado mecânico ABNT2 com iluminação',
    'PRAT-TECLADO-001',
    249.90,
    158.00,
    0.750,
    1
)
ON DUPLICATE KEY UPDATE
    id_produto = LAST_INSERT_ID(id_produto);

SET @prod_teclado = LAST_INSERT_ID();


INSERT INTO produtos (
    id_categoria,
    id_fornecedor,
    nome_produto,
    descricao,
    sku,
    preco,
    custo,
    peso,
    ativo
)
VALUES (
    @cat_info,
    @forn_nordtech,
    'Suporte para notebook',
    'Suporte ergonômico ajustável em alumínio',
    'PRAT-SUPORTE-001',
    119.90,
    68.00,
    0.620,
    1
)
ON DUPLICATE KEY UPDATE
    id_produto = LAST_INSERT_ID(id_produto);

SET @prod_suporte = LAST_INSERT_ID();


INSERT INTO produtos (
    id_categoria,
    id_fornecedor,
    nome_produto,
    descricao,
    sku,
    preco,
    custo,
    peso,
    ativo
)
VALUES (
    @cat_livros,
    @forn_horizonte,
    'Livro Introdução a SQL',
    'Livro prático sobre bancos de dados relacionais',
    'PRAT-LIVRO-001',
    89.90,
    51.00,
    0.490,
    1
)
ON DUPLICATE KEY UPDATE
    id_produto = LAST_INSERT_ID(id_produto);

SET @prod_livro = LAST_INSERT_ID();


INSERT INTO produtos (
    id_categoria,
    id_fornecedor,
    nome_produto,
    descricao,
    sku,
    preco,
    custo,
    peso,
    ativo
)
VALUES (
    @cat_livros,
    @forn_horizonte,
    'Caderno executivo',
    'Caderno de capa dura com 160 folhas',
    'PRAT-CADERNO-001',
    34.90,
    17.50,
    0.420,
    1
)
ON DUPLICATE KEY UPDATE
    id_produto = LAST_INSERT_ID(id_produto);

SET @prod_caderno = LAST_INSERT_ID();


INSERT INTO produtos (
    id_categoria,
    id_fornecedor,
    nome_produto,
    descricao,
    sku,
    preco,
    custo,
    peso,
    ativo
)
VALUES (
    @cat_casa,
    @forn_horizonte,
    'Garrafa térmica 1 litro',
    'Garrafa térmica com ampola de vidro',
    'PRAT-GARRAFA-001',
    69.90,
    38.00,
    0.690,
    1
)
ON DUPLICATE KEY UPDATE
    id_produto = LAST_INSERT_ID(id_produto);

SET @prod_garrafa = LAST_INSERT_ID();


-- =====================================================
-- 4. ESTOQUE
-- =====================================================

INSERT INTO estoque (
    id_produto,
    quantidade,
    estoque_minimo,
    estoque_maximo
)
VALUES (
    @prod_mouse,
    35,
    10,
    80
)
ON DUPLICATE KEY UPDATE
    quantidade = 35,
    estoque_minimo = 10,
    estoque_maximo = 80;


INSERT INTO estoque (
    id_produto,
    quantidade,
    estoque_minimo,
    estoque_maximo
)
VALUES (
    @prod_teclado,
    18,
    5,
    40
)
ON DUPLICATE KEY UPDATE
    quantidade = 18,
    estoque_minimo = 5,
    estoque_maximo = 40;


INSERT INTO estoque (
    id_produto,
    quantidade,
    estoque_minimo,
    estoque_maximo
)
VALUES (
    @prod_suporte,
    8,
    10,
    50
)
ON DUPLICATE KEY UPDATE
    quantidade = 8,
    estoque_minimo = 10,
    estoque_maximo = 50;


INSERT INTO estoque (
    id_produto,
    quantidade,
    estoque_minimo,
    estoque_maximo
)
VALUES (
    @prod_livro,
    42,
    10,
    100
)
ON DUPLICATE KEY UPDATE
    quantidade = 42,
    estoque_minimo = 10,
    estoque_maximo = 100;


INSERT INTO estoque (
    id_produto,
    quantidade,
    estoque_minimo,
    estoque_maximo
)
VALUES (
    @prod_caderno,
    75,
    20,
    150
)
ON DUPLICATE KEY UPDATE
    quantidade = 75,
    estoque_minimo = 20,
    estoque_maximo = 150;


INSERT INTO estoque (
    id_produto,
    quantidade,
    estoque_minimo,
    estoque_maximo
)
VALUES (
    @prod_garrafa,
    4,
    8,
    60
)
ON DUPLICATE KEY UPDATE
    quantidade = 4,
    estoque_minimo = 8,
    estoque_maximo = 60;


COMMIT;


-- =====================================================
-- 5. CONSULTA DE CONFERÊNCIA
-- =====================================================

SELECT
    p.id_produto,
    p.nome_produto,
    p.sku,
    c.nome_categoria,
    f.nome_fantasia AS fornecedor,
    p.preco,
    p.custo,
    e.quantidade,
    e.estoque_minimo,
    e.estoque_maximo,
    CASE
        WHEN e.quantidade < e.estoque_minimo
            THEN 'REPOR ESTOQUE'
        ELSE 'ESTOQUE OK'
    END AS situacao_estoque
FROM produtos AS p

INNER JOIN categorias AS c
    ON p.id_categoria = c.id_categoria

LEFT JOIN fornecedores AS f
    ON p.id_fornecedor = f.id_fornecedor

INNER JOIN estoque AS e
    ON p.id_produto = e.id_produto

WHERE p.sku LIKE 'PRAT-%'

ORDER BY p.nome_produto;