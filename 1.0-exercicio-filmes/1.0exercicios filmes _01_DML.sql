USE CATALOGO
GO

INSERT INTO GENERO (nomeGenero)
VALUES	('Ação'),('Romance'),('Aventura');
GO

INSERT INTO GENERO(nomeGenero)
VALUES ('Terror');
GO

INSERT INTO FILME (tituloFilme, idGenero)
VALUES('Liga da justiça a serie', 1), ('Interstellar',3),
	  ('Her', 2)
GO

UPDATE FILME
SET tituloFilme = 'Liga da justiça o filme'
WHERE idGenero = 1;

INSERT INTO FILME (tituloFilme, idGenero)
VALUES ('Cronicas de Narnia', null), ('Homem-Aranha', null);
GO
