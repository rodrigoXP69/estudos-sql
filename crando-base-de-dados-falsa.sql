-- 1. Criar a tabela de Clientes
CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(100),
    cidade VARCHAR(50),
    estado VARCHAR(2)
);

-- 2. Criar a tabela de Vendas
CREATE TABLE IF NOT EXISTS vendas (
    id_venda INTEGER PRIMARY KEY AUTOINCREMENT,
    id_cliente INTEGER,
    data_venda DATE,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- 3. Inserir Dados dos Clientes
INSERT INTO clientes (nome, cidade, estado) VALUES
('Lucas Silva', 'Itabaiana', 'SE'),
('Mariana Costa', 'Aracaju', 'SE'),
('Carlos Eduardo', 'Lagarto', 'SE'),
('Fernanda Lima', 'Itabaiana', 'SE'),
('João Pedro', 'Salvador', 'BA');

-- 4. Inserir Dados das Vendas
INSERT INTO vendas (id_cliente, data_venda, valor_total) VALUES
(1, '2026-09-01', 150.00),
(1, '2026-09-10', 300.50),
(2, '2026-09-05', 89.90),
(2, '2026-09-15', 1200.00),
(3, '2026-09-12', 450.00),
(4, '2026-09-20', 75.00);