CREATE DATABASE OPTUS;
GO

USE OPTUS;
GO

CREATE TABLE ARTISTA (
 idArtista SMALLINT PRIMARY KEY  IDENTITY(1,1),
 nomeArtista VARCHAR(20) NOT NULL,
);
GO 

CREATE TABLE ESTILO (
 idEstilo TINYINT PRIMARY KEY  IDENTITY(1,1),
 estiloMusical VARCHAR(20) NOT NULL,
);
GO 

CREATE TABLE USUARIO(
idUsuario SMALLINT PRIMARY KEY  IDENTITY(1,1),
nomeUsuario VARCHAR(20) NOT NULL,
Email VARCHAR(256) NOT NULL,
Senha VARCHAR(100) NOT NULL,
Permissao VARCHAR(300) NOT NULL 
);
GO

CREATE TABLE ALBUNS(
idAlbuns SMALLINT PRIMARY KEY  IDENTITY(1,1),
idEstilo TINYINT FOREIGN KEY REFERENCES ESTILO(idEstilo),
idArtista SMALLINT FOREIGN KEY REFERENCES ARTISTA(idArtista),
Titulo VARCHAR(15) NOT NULL, 
Localização VARCHAR(15) NOT NULL,
QuantosMinutos VARCHAR(6) NOT NULL,
DataLancamento CHAR(8) NOT NULL,
);
GO