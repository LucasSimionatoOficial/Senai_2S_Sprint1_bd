--DDL

CREATE DATABASE Locadora;

USE Locadora;

CREATE TABLE Empresas
(
	idEmpresa		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200) NOT NULL,
);
CREATE TABLE Marcas
(
	idMarca			INT PRIMARY KEY IDENTITY,
	Marca			VARCHAR(200) NOT NULL
);
CREATE TABLE Modelos
(
	idModelo		INT PRIMARY KEY IDENTITY,
	idMarca			INT FOREIGN KEY REFERENCES Marcas (idMarca),
	Modelo			VARCHAR(200) NOT NULL,
);
CREATE TABLE Veiculos
(
	Placa			VARCHAR(10) PRIMARY KEY,
	idModelo		INT FOREIGN KEY REFERENCES Modelos (idModelo),
	idEmpresa		INT FOREIGN KEY REFERENCES Empresas (idEmpresa),
);
CREATE TABLE Clientes
(
	idCliente		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200),
	CPF				INT
);
CREATE TABLE Alugueis
(
	idAluguel		INT PRIMARY KEy IDENTITY,
	Placa			VARCHAR(10) FOREIGN KEY REFERENCES Veiculos (Placa),
	idCliente		INT FOREIGN KEY REFERENCES Clientes (idCliente),
	DataInicio		DATETIME NOT NULL,
	DataTermino		DATETIME NOT NULL
);