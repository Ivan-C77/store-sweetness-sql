USE Sweetness;

-- 1. Deletar um item da venda
DELETE FROM ItemVenda
WHERE id_itemvenda = 3;

-- 2. Deletar um cliente sem vendas associadas
DELETE FROM Cliente
WHERE id_cliente = 3;

-- 3. Deletar um doce com estoque baixo
DELETE FROM Doce
WHERE quantidade_estoque < 50;
