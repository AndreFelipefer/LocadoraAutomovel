SELECT
    L.CodLocacao,
    L.Veiculo,
    L.Cliente,
    L.Diaria,
    L.Total,
    V.Cor,
    V.Placa,
    C.Nome,
    C.Nascimento
FROM Locacoes L
INNER JOIN Veiculos V ON L.Veiculo = V.Veiculo
INNER JOIN Clientes C ON L.Cliente = C.CPF;
