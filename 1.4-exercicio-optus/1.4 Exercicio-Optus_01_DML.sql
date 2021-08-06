USE OPTUS
GO

INSERT INTO USUARIO(nomeUsuario,Email,Senha, Permissao)
VALUES('CARLOS', 'Joaquin@gmail.com', 'dezdez','concedida a carlos'),('Manuel', 'manuel@gmail.com', 'doisdois','concedida a manuel');
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

