<p align="center">
  <img src="https://github.com/AndreFelipefer/LocadoraAutomovel/assets/129207232/64938eeb-62a1-4496-90f1-a53d70c0f003" alt="Descrição da imagem">
</p>
O Seguinte projeto de um banco de dados relacional para uma locadora de veículos, incluindo a normalização das tabelas e a criação de uma view para facilitar a recuperação de informações relacionadas às locações, veículos e clientes. Esse design eficiente contribui para a integridade dos dados e facilita a consulta e a análise dos dados da locadora.

<hr>

<h1 align="center"> 1- Faça o modelo lógico de banco de dados relacional; </h1>
<p align="center">
  <img src="https://github.com/AndreFelipefer/LocadoraAutomovel/assets/129207232/0dfe7783-0c90-44f7-ac30-bc9881d22d50" alt="Descrição da imagem">
</p>

<hr>

<h1 align="center"> 2- Escreva o script que cria as tabelas; </h1>

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

<h1 align="center"> 3 - Crie uma view que seleciona todas as locações e seus respectivos veículos e clientes. </h1>

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
<p align="center">
  <img src="https://github.com/AndreFelipefer/LocadoraAutomovel/assets/129207232/1e2f5ef8-4227-432d-a31c-d5411eca9647" alt="Descrição da imagem">
</p>


<hr> 

<h1 align="center"> Select com todas tabelas :  </h1>

<p align="center">
  <img src="https://github.com/AndreFelipefer/LocadoraAutomovel/assets/129207232/1200fd84-296d-4697-a19c-05551055b95c" alt="Descrição da imagem">
</p>

<hr>

<p align="center">
  <img src="https://github.com/AndreFelipefer/LocadoraAutomovel/assets/129207232/6264913e-edc9-428c-b65a-f58aadf59787" alt="Descrição da imagem">
</p>


