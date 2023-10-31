CREATE VIEW LocacoesVeiculos AS
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


SELECT * FROM LocacoesVeiculos;
