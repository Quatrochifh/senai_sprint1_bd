USE CATALOGO
GO

INSERT INTO GENERO (nomeGenero)
VALUES	('A��o'),('Romance'),('Aventura');
GO

INSERT INTO GENERO(nomeGenero)
VALUES ('Terror');
GO

INSERT INTO FILME (tituloFilme, idGenero)
VALUES('Liga da justi�a a serie', 1), ('Interstellar',3),
	  ('Her', 2)
GO

UPDATE FILME
SET tituloFilme = 'Liga da justi�a o filme'
WHERE idGenero = 1;

INSERT INTO FILME (tituloFilme, idGenero)
VALUES ('Cronicas de Narnia', null), ('Homem-Aranha', null);
GO
