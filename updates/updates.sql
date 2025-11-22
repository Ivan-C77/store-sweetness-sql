USE Sweetness;

-- 1. Atualizar o telefone de um cliente específico
UPDATE Cliente
SET telefone = '8399000-1122'
WHERE id_cliente = 1;

-- 2. Atualizar o preço de um doce
UPDATE Doce
SET preco = 3.00
WHERE nome = 'Brigadeiro';

-- 3. Atualizar o turno de um atendente
UPDATE Atendente
SET turno = 'Tarde'
WHERE id_atendente = 1;
