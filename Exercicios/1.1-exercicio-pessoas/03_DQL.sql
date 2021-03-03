--DQL

SELECT * FROM Pessoas;
SELECT * FROM Emails;
SELECT * FROM Telefones;

SELECT Pessoas.Nome, Emails.Email
FROM Emails
LEFT JOIN Pessoas
ON Emails.idPessoa = Pessoas.idPessoa
ORDER BY Pessoas.Nome DESC;

SELECT Pessoas.Nome, Telefones.Telefone
FROM Telefones
LEFT JOIN Pessoas
ON Telefones.idPessoa = Pessoas.idPessoa
ORDER BY Pessoas.Nome DESC;

SELECT Pessoas.Nome, Pessoas.CNH
FROM Pessoas
ORDER BY Pessoas.Nome DESC;