--DML

INSERT INTO Clinicas (Endereco, RazaoSocial)
VALUES ('Rua A', 'Salve animais'), ('Rua B', 'pet');

INSERT INTO Veterinarios (idClinica, Nome)
VALUES (1, 'Alberto', '1234-SP'), (1, 'Bernardo', '1233-SP'), (1, 'Carlos', '0000-SP');

INSERT INTO Tipos (Tipo)
VALUES ('Gato'), ('Cachorro');

INSERT INTO Racas (idTipo, Raca)
VALUES (1, 'Abissinio'), (2, 'Rottweiller'), (2, 'Bulldog');

INSERT INTO Donos (Dono)
VALUES ('Alberto'), ('Bernardo'), ('Carlos');

INSERT INTO Pets (idDono, idRaca, Nome)
VALUES (1, 2, 'Cachorro'), (2, 1, 'Gato');

INSERT INTO Atendimentos (idPet, idVeterinario, Data_, HoraInicio, HoraFim)
VALUES (1, 1, '01/01/2000', '10:00', '11:00'), (2, 1, '01/01/2000', '12:30', '13:30'), (2, 2, '01/01/2000', '13:00', '13:30');