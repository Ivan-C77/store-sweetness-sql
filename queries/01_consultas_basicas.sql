USE Sweetness;

-- Listar todos os clientes
SELECT * FROM Cliente;

-- Listar todos os doces
SELECT * FROM Doce;

-- Listar todos os atendentes
SELECT * FROM Atendente;

-- Listar todas as vendas
SELECT * FROM Venda;

-- Contar quantos produtos existem
SELECT COUNT(*) AS total_produtos FROM Doce;
