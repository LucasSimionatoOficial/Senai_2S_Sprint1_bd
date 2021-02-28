--DML

INSERT INTO Clientes (Nome)
VALUES ('A'), ('B');

INSERT INTO Equipamentos (Nome)
VALUES ('Computador'), ('TV'), ('Celulares'), ('Videogames');

INSERT INTO Servicos (Descricao)
VALUES ('Quebrou'), ('Limpeza');

INSERT INTO Pedidos (idServico, idCliente, idEquipamento, Inicio, Termino)
VALUES (1, 1, 1, '01/01/2020 02:00:00', '01/01/2020 03:00:00'), (2, 2, 2, '01/01/2020 02:00:00', '01/01/2020 03:00:00');

INSERT INTO Colaboradores (Nome)
VALUES ('Erik'), ('Claudio'), ('Daniel');

INSERT INTO ColaboradoresPedidos (idPedido, idColaborador)
VALUES (1, 1), (1, 2), (2, 3);