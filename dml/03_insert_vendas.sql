USE Sweetness;

-- Gerente (necessário para Atendente)
INSERT INTO Gerente (nome, senha_acesso) VALUES
('Marcos Oliveira', 'senha123');

-- Atendente
INSERT INTO Atendente (nome, turno, id_gerente) VALUES
('Carla Silva', 'Manhã', 1);

-- Vendas
INSERT INTO Venda (data_venda, valor_total, id_cliente, id_atendente) VALUES
('2025-11-22', 15.00, 1, 1),
('2025-11-22', 9.00, 2, 1);

-- Itens da Venda
INSERT INTO ItemVenda (quantidade, preco_unitario, id_venda, id_doce) VALUES
(3, 2.50, 1, 1),   -- 3 brigadeiros
(1, 6.00, 1, 2),   -- 1 cupcake
(1, 9.00, 2, 5);   -- 1 brownie
