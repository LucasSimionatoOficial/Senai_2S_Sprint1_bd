--DQL

SELECT * FROM Marcas;

SELECT * FROM Modelos;

SELECT * FROM Empresas;

SELECT * FROM Veiculos;

SELECT * FROM Clientes;

SELECT * FROM Alugueis;

SELECT Clientes.Nome, Alugueis.DataInicio, Alugueis.DataTermino, Modelos.Modelo
FROM Alugueis
LEFT JOIN Clientes
ON Clientes.idCliente = Alugueis.idCliente
LEFT JOIN Veiculos
ON Alugueis.Placa = Veiculos.Placa
LEFT JOIN Modelos
ON Modelos.idModelo = Veiculos.idModelo;

SELECT Clientes.Nome, Alugueis.DataInicio, Alugueis.DataTermino, Modelos.Modelo
FROM Alugueis
INNER JOIN Clientes
ON Clientes.idCliente = Alugueis.idCliente AND Clientes.Nome = 'Nome'
LEFT JOIN Veiculos
ON Alugueis.Placa = Veiculos.Placa
LEFT JOIN Modelos
ON Modelos.idModelo = Veiculos.idModelo;