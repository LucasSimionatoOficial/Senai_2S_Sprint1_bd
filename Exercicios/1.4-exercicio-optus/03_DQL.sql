--DQL

SELECT * FROM Estilos;

SELECT * FROM Artistas;

SELECT * FROM Usuarios;

SELECT * FROM Albuns;

SELECT * FROM EstilosAlbuns;

SELECT Usuarios.Nome, Usuarios.Email, Usuarios.Permissao
FROM Usuarios
WHERE Usuarios.Permissao = 'administrador';

SELECT Albuns.Titulo, Albuns.Disponibilidade
FROM Albuns
WHERE Albuns.DataLancamento >= '01/01/2020';

SELECT *
FROM Usuarios
WHERE Usuarios.Email = 'Fred@gmail.com' AND Usuarios.Senha = '123';

SELECT Albuns.Titulo, Estilos.Estilo, Albuns.Duracao, Artistas.Nome
FROM EstilosAlbuns
INNER JOIN Albuns
ON Albuns.idAlbum = EstilosAlbuns.idAlbum AND Albuns.Disponibilidade = 'Disponivel'
LEFT JOIN Estilos
ON Estilos.idEstilo = EstilosAlbuns.idEstilo
LEFT JOIN Artistas
ON Artistas.idArtista = Albuns.idArtista;