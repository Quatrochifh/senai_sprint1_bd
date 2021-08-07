USE OPTUS
GO

INSERT INTO USUARIO(nomeUsuario,Email,Senha, Permissao)
VALUES('Cindy', 'Cindy@gmail.com', 'carac','Administrador'),('Henrique', 'Henriqu@gmail.com', 'doisd','Comum');
GO

INSERT INTO ARTISTA(nomeArtista)
VALUES('AYER'),('GUNN');
GO

INSERT INTO ESTILO(estiloMusical)
VALUES('forró'),('rock');
GO

INSERT INTO ALBUNS( idEstilo, idArtista, Titulo, Localização, QuantosMinutos, DataLancamento)
VALUES(2, 1, 'toca musica','san marinho','10min','dia10'),(1, 2, 'sol da gaita','corto maltez','11min','dia15' );
GO

INSERT INTO ALBUNS( idEstilo, idArtista, Titulo, Localização, QuantosMinutos, DataLancamento)
VALUES(2, 1, 'Rock na veia','santiago','10min','2004'),(1, 2, 'TSS','eua','15min','1996' );
GO

UPDATE ALBUNS
SET DataLancamento = '2006'
WHERE idAlbuns = 10