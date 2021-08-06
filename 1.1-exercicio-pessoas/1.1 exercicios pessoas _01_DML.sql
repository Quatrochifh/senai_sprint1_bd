USE EMPRESA;
GO

INSERT INTO PESSOA (nomePessoa)
VALUES ('ANA'),('FABIO');
GO

INSERT INTO  TELEFONE (idPessoa,numeroTelefone)
VALUES (1,'15238'), (2,'99357'), (1,'90454');
GO

INSERT INTO EMAIL (idPessoa,end_email)
VALUES (2,'Nomee@email.com'),(1,'sobrenome@email.com');
GO

INSERT INTO CNH (idPessoa, numero_cnh)
VALUES (1,'132'),(2,'4343');

GO