--DML

INSERT INTO Lojas (Nome)
VALUES ('CelularesUsados'), ('PcBarato');

INSERT INTO Categorias (idLoja, Categoria)
VALUES (1, 'Computadores'), (1, 'Celulares');

INSERT INTO Subcategorias (idCategoria, Subcategoria)
VALUES (1, 'Notebooks'), (1, 'Fixos'), (2, 'Apple'), (2, 'Android');

INSERT INTO Produtos (idSubcategoria, Nome)
VALUES (3, 'Iphone 12'), (4, 'Galaxy S20'), (4, 'Moto G8'), (1, 'Notebook I5 8GB'), (2, 'Computador I7 RTX');

INSERT INTO Clientes (Nome)
VALUES ('Bento'), ('Revenda Pcs');

INSERT INTO Pedidos (idCliente, idProduto)
VALUES (1, 1), (1, 4), (2, 5);