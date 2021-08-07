USE OPTUS
GO

SELECT * FROM USUARIO;
GO
SELECT * FROM ARTISTA;
GO
SELECT * FROM ESTILO;
GO
SELECT * FROM ALBUNS;
GO

-- listar todos os usuários administradores, sem exibir suas senhas
SELECT nomeUsuario, Email, Permissao FROM USUARIO
WHERE USUARIO.Permissao LIKE 'Administrador'
GO

-- listar todos os usuários Usuarios, sem exibir suas senhas

SELECT nomeUsuario, Email, Permissao FROM USUARIO
WHERE USUARIO.Permissao LIKE 'Comum'
GO

-- listar todos os álbuns lançados após o um determinado ano de lançamento
SELECT Titulo, Localização, QuantosMinutos, DataLancamento FROM Albuns
INNER JOIN ARTISTA
ON Albuns.IdArtista = ARTISTA.IdArtista
WHERE Albuns.DataLancamento > '2000'
GO

-- listar os dados de um usuário através do e-mail e senha
SELECT idUsuario,nomeUsuario, Email, Permissao FROM USUARIO
WHERE Email LIKE 'Cindy@gmail.com' AND Senha LIKE 'carac'
GO

-- listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum 

SELECT Titulo, Localização, QuantosMinutos, DataLancamento, nomeArtista FROM Albuns
INNER JOIN ARTISTA
ON Albuns.IdArtista = ARTISTA.IdArtista
INNER JOIN ESTILO
ON ALBUNS.idEstilo = ESTILO.idEstilo
GO