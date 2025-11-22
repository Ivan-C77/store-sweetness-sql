USE Sweetness;

-- 1. Listar vendas com os nomes do cliente e do atendente
SELECT 
    v.id_venda,
    v.data_venda,
    v.valor_total,
    c.nome AS cliente,
    a.nome AS atendente
FROM Venda v
JOIN Cliente c ON v.id_cliente = c.id_cliente
JOIN Atendente a ON v.id_atendente = a.id_atendente;

-- 2. Itens da venda com nome do doce
SELECT 
    iv.id_itemvenda,
    d.nome AS doce,
    iv.quantidade,
    iv.preco_unitario,
    (iv.quantidade * iv.preco_unitario) AS subtotal
FROM ItemVenda iv
JOIN Doce d ON iv.id_doce = d.id_doce;

-- 3. Total arrecadado em todas as vendas
SELECT SUM(valor_total) AS total_arrecadado FROM Venda;

-- 4. Produtos com estoque abaixo de 50 unidades
SELECT * FROM Doce WHERE quantidade_estoque < 50;

-- 5. Quantidade de vendas por cliente
SELECT 
    c.nome AS cliente,
    COUNT(v.id_venda) AS total_vendas
FROM Cliente c
LEFT JOIN Venda v ON v.id_cliente = c.id_cliente
GROUP BY c.nome;
