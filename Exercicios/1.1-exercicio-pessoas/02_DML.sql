--DML

INSERT INTO Pessoas(Nome, CNH)
VALUES ('Nome', 123), ('Outro', 1234);

INSERT INTO Emails (idPessoa, Email)
VALUES (1, 'nome@gmail.com'), (2, 'outro@gmail.com'), (1, 'nome@hotmail.com');

INSERT INTO Telefones (idPessoa, Telefone)
Values (1, 1234), (1, 111), (2, 12345678), (2, 123456);