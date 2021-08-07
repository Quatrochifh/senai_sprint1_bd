USE PETSHOP
GO

SELECT * FROM CLINICA;
GO

SELECT * FROM TIPOPET;
GO

SELECT * FROM DONO;
GO

SELECT * FROM VETERINARIO;
GO

SELECT * FROM PET;
GO

SELECT * FROM RACAS;
GO

SELECT * FROM ATENDIMENTO;
GO

 --listar todos os veterinários (nome e CRMV) de uma clínica (razão social)

 SELECT Nomevet,enderecoClinica FROM VETERINARIO
INNER JOIN CLINICA
ON VETERINARIO.IdClinica = CLINICA.IdClinica;
GO
-- listar todas as raças que começam com a letra S
SELECT Qualraca FROM Racas
WHERE Qualraca LIKE 'S%';
GO
-- listar todos os tipos de pet que terminam com a letra O
SELECT tipo FROM TIPOPET
WHERE TIPOPET.Tipo LIKE '%O';
GO

-- listar todos os pets mostrando os nomes dos seus donos
SELECT nomeDono,Tipo FROM TIPOPET
INNER JOIN DONO
ON DONO.idDono = DONO.IdDono
GO

-- listar todos os atendimentos mostrando o nome do veterinário que atendeu, o nome, a raça
-- e o tipo do pet que foi atendido, o nome do dono do pet e o nome da clínica onde o pet foi atendido

SELECT Horario_Atendimento, Nomevet, NomePet, Tipo, nomeDono, enderecoClinica  FROM ATENDIMENTO
INNER JOIN VETERINARIO 
ON ATENDIMENTO.IdVeterinario = VETERINARIO.IdVeterinario
INNER JOIN PET
ON ATENDIMENTO.IdPet = PET.IdPet
INNER JOIN RACAS
ON PET.idRacas = RACAS.idRacas
INNER JOIN TIPOPET 
ON RACAS.IdTipoPet = TIPOPET.IdTipoPet
INNER JOIN DONO
ON PET.IdDono = DONO.IdDono
INNER JOIN CLINICA
ON VETERINARIO.IdClinica = CLINICA.IdClinica;
GO