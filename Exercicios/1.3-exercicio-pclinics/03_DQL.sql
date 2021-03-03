--DQL

SELECT * FROM Clinicas;

SELECT * FROM Veterinarios;

SELECT * FROM Tipos;

SELECT * FROM Racas;

SELECT * FROM Donos;

SELECT * FROM Pets;

SELECT * FROM Atendimentos;

SELECT Clinicas.RazaoSocial, Veterinarios.Nome, Veterinarios.CRMV
FROM Clinicas
INNER JOIN Veterinarios
ON Veterinarios.idClinica = Clinicas.idClinica AND Clinicas.RazaoSocial = ('Salve animais');

SELECT Racas.Raca
FROM Racas
WHERE Racas.Raca LIKE '%S';

SELECT Racas.Raca
FROM Racas
WHERE Racas.Raca Like'O%' OR Racas.Raca LIKE 'o%';

SELECT Pets.Nome, Donos.Dono
FROM Pets
INNER JOIN Donos
ON Donos.idDono = Pets.idDono;

SELECT Veterinarios.Nome AS Veterinario, Pets.Nome, Racas.Raca, Tipos.Tipo
From Atendimentos
LEFT JOIN Veterinarios
ON Veterinarios.idVeterinario = Atendimentos.idVeterinario
LEFT JOIN Pets
ON Pets.idPet = Atendimentos.idPet
LEFT JOIN Racas
ON Pets.idRaca = Racas.idRaca
LEFT JOIN Tipos
ON Tipos.idTipo = Racas.idTipo;