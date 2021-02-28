--DDL

CREATE DATABASE Ecommerce

USE Ecommerce

CREATE TABLE Lojas
(
	idLoja			INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200)
);
CREATE TABLE Categorias
(
	idCategoria		INT PRIMARY KEY IDENTITY,
	idLoja			INT FOREIGN KEY REFERENCES Lojas (idLoja),
	Categoria		VARCHAR(200)
);
CREATE TABLE Subcategorias
(
	idSubcategoria	INT PRIMARY KEY IDENTITY,
	idCategoria		INT FOREIGN KEY REFERENCES Categorias (idCategoria),
	Subcategoria	VARCHAR(200)
);
CREATE TABLE Produtos
(
	idProduto		INT PRIMARY KEY IDENTITY,
	idSubcategoria	INT FOREIGN KEY REFERENCES Subcategorias (idSubcategoria)
);
CREATE TABLE Clientes
(
	idCliente		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR(200)
);
CREATE TABLE Pedidos
(
	idCliente		INT FOREIGN KEY REFERENCES Clientes (idCliente),
	idProduto		INT FOREIGN KEY REFERENCES Produtos (idProduto)
);