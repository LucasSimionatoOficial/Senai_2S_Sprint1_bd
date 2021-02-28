--DDL

CREATE DATABASE MicroManu;

USE MicroManu;

CREATE TABLE Clientes
(
	idCliente		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200)
);
CREATE TABLE Equipamentos
(
	idEquipamento	INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200)
);
CREATE TABLE Servicos
(
	idServico		INT PRIMARY KEY IDENTITY,
	Descricao		VARCHAR(200)
);
CREATE TABLE Pedidos
(
	idPedido		INT PRIMARY KEY IDENTITY,
	idServico		INT FOREIGN KEY REFERENCES Servicos (idServico),
	idCliente		INT FOREIGN KEY REFERENCES Clientes (idCliente),
	idEquipamento	INT FOREIGN KEY REFERENCES Equipamentos (idEquipamento),
	Inicio			DATETIME,
	Termino			DATETIME
);
CREATE TABLE Colaboradores
(
	idColaborador	INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200)
);
CREATE TABLE ColaboradoresPedidos
(
	idPedido		INT FOREIGN KEY REFERENCES Pedidos (idPedido),
	idColaborador	INT FOREIGN KEY REFERENCES Colaboradores (idColaborador)
);