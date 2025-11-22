-- Criar Tabelas

-- ----------------------------------------------------------
-- Tabela Cliente
-- ----------------------------------------------------------
CREATE TABLE Cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    data_cadastro DATE NOT NULL
);



-- ----------------------------------------------------------
-- Tabela Gerente
-- ----------------------------------------------------------
CREATE TABLE Gerente (
    id_gerente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    senha_acesso VARCHAR(100) NOT NULL
);



-- ----------------------------------------------------------
-- Tabela Atendente (FK → Gerente)
-- ----------------------------------------------------------
CREATE TABLE Atendente (
    id_atendente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    turno VARCHAR(20) NOT NULL,
    id_gerente INT NOT NULL,
    FOREIGN KEY (id_gerente) REFERENCES Gerente(id_gerente)
);



-- ----------------------------------------------------------
-- Tabela Doce
-- ----------------------------------------------------------
CREATE TABLE Doce (
    id_doce INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco DECIMAL(10,2) NOT NULL,
    quantidade_estoque INT NOT NULL
);



-- ----------------------------------------------------------
-- Tabela Venda (FK → Cliente, Atendente)
-- ----------------------------------------------------------
CREATE TABLE Venda (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    data_venda DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    id_cliente INT NOT NULL,
    id_atendente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_atendente) REFERENCES Atendente(id_atendente)
);



-- ----------------------------------------------------------
-- Tabela ItemVenda (FK → Venda, Doce)
-- ----------------------------------------------------------
CREATE TABLE ItemVenda (
    id_itemvenda INT AUTO_INCREMENT PRIMARY KEY,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    id_venda INT NOT NULL,
    id_doce INT NOT NULL,
    FOREIGN KEY (id_venda) REFERENCES Venda(id_venda),
    FOREIGN KEY (id_doce) REFERENCES Doce(id_doce)
);



-- ----------------------------------------------------------
-- Tabela CadastroProduto (FK → Doce, Gerente)
-- ----------------------------------------------------------
CREATE TABLE CadastroProduto (
    id_cadastro INT AUTO_INCREMENT PRIMARY KEY,
    data_cadastro DATE NOT NULL,
    id_doce INT NOT NULL,
    id_gerente INT NOT NULL,
    FOREIGN KEY (id_doce) REFERENCES Doce(id_doce),
    FOREIGN KEY (id_gerente) REFERENCES Gerente(id_gerente)
);
