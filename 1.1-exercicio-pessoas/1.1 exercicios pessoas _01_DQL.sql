USE EMPRESA
GO

SELECT * FROM TELEFONE 
SELECT * FROM PESSOA
SELECT * FROM EMAIL
SELECT * FROM CNH 

-- listar as pessoas em ordem alfabética reversa, mostrando seus telefones, seus e-mails e suas CNHs

SELECT nomePessoa, numeroTelefone,end_email,numero_cnh FROM PESSOA
INNER JOIN TELEFONE
ON PESSOA.idPessoa = TELEFONE.idPessoa
INNER JOIN EMAIL
ON PESSOA.idPessoa = EMAIL.idPessoa
INNER JOIN CNH
ON PESSOA.idPessoa = CNH.idPessoa
ORDER BY nomePessoa DESC;
GO


