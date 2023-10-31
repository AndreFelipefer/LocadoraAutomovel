![locadora auto](https://github.com/AndreFelipefer/LocadoraAutomovel/assets/129207232/4e2d534f-11cf-47ad-87f2-5652ecef9429)

O Seguinte projeto de um banco de dados relacional para uma locadora de veículos, incluindo a normalização das tabelas e a criação de uma view para facilitar a recuperação de informações relacionadas às locações, veículos e clientes. Esse design eficiente contribui para a integridade dos dados e facilita a consulta e a análise dos dados da locadora.

<hr>
1- Faça o modelo lógico de banco de dados relacional;

![image](https://github.com/AndreFelipefer/LocadoraAutomovel/assets/129207232/0dfe7783-0c90-44f7-ac30-bc9881d22d50)


2- Escreva o script que cria as tabelas;
```SQL
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


```
<hr> 

3 - Crie uma view que seleciona todas as locações e seus respectivos veículos e clientes.
```SQL
CREATE VIEW LocacoesVeiculosClientes AS
SELECT
  l.CodLocacao,
  v.Veiculo,
  c.Nome,
  c.CPF
FROM
  Locacoes l
INNER JOIN
  Veiculos v ON l.Veiculo = v.Veiculo
INNER JOIN
  Clientes c ON l.Cliente = c.CPF;

```
![image](https://github.com/AndreFelipefer/LocadoraAutomovel/assets/129207232/1e2f5ef8-4227-432d-a31c-d5411eca9647)

<hr> 

Select com todas tabelas : 

![image](https://github.com/AndreFelipefer/LocadoraAutomovel/assets/129207232/1200fd84-296d-4697-a19c-05551055b95c)

<HR>



![Cartaz laranja carro vintage](https://github.com/AndreFelipefer/LocadoraAutomovel/assets/129207232/02adf3da-2568-44b4-8145-b2df0b275cb5)


