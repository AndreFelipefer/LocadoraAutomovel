-- Inserções para a tabela "Locacoes"
INSERT INTO Locacoes (Veiculo, Cliente, Diaria, Total) VALUES
('Toyota Corolla', '12345678901', 75.00, 300.00),
('Honda Civic', '23456789012', 80.00, 400.00),
('Ford Focus', '34567890123', 60.00, 240.00),
('Nissan Sentra', '45678901234', 70.00, 280.00),
('Chevrolet Malibu', '56789012345', 90.00, 360.00);

-- Inserções para a tabela "Veiculos"
INSERT INTO Veiculos (Veiculo, Cor, Placa) VALUES
('Toyota Corolla', 'Prata', 'ABC123'),
('Honda Civic', 'Azul', 'DEF456'),
('Ford Focus', 'Vermelho', 'GHI789'),
('Nissan Sentra', 'Preto', 'JKL012'),
('Chevrolet Malibu', 'Verde', 'MNO345');

-- Inserções para a tabela "Clientes"
INSERT INTO Clientes (CPF, Nome, Nascimento) VALUES
('12345678901', 'João Silva', '1980-05-10'),
('23456789012', 'Maria Santos', '1975-12-15'),
('34567890123', 'Carlos Pereira', '1990-09-20'),
('45678901234', 'Ana Souza', '1988-04-03'),
('56789012345', 'Pedro Oliveira', '1992-11-30');
