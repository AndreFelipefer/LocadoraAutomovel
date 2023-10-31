-- Tabela Locações
CREATE TABLE Locacoes (
  CodLocacao INT AUTO_INCREMENT NOT NULL,
  Veiculo VARCHAR(255) NOT NULL,
  Cliente VARCHAR(11) NOT NULL,
  Diaria DECIMAL(10,2) NOT NULL,
  Total DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (CodLocacao),
  FOREIGN KEY (Veiculo) REFERENCES Veiculos (Veiculo),
  FOREIGN KEY (Cliente) REFERENCES Clientes (CPF)
);

-- Tabela Veiculos
CREATE TABLE Veiculos (
  Veiculo VARCHAR(255) NOT NULL,
  Cor VARCHAR(255) NOT NULL,
  Placa VARCHAR(255) NOT NULL,
  PRIMARY KEY (Veiculo)
);

-- Tabela Clientes
CREATE TABLE Clientes (
  CPF VARCHAR(11) NOT NULL,
  Nome VARCHAR(255) NOT NULL,
  Nascimento DATE NOT NULL,
  PRIMARY KEY (CPF)
);
