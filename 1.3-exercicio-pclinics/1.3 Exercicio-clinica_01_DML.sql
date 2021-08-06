USE PETSHOP
GO

INSERT INTO CLINICA(nomeClinica, enderecoClinica)
VALUES('vetziZ', 'rua boto'),('medvet','rua saci');
GO


INSERT INTO TIPOPET(Tipo)
VALUES('Porco'),('Peixe');
GO



INSERT INTO DONO(nomeDono)
VALUES('Adilson'),('Carlos');
GO



INSERT INTO VETERINARIO(idClinica, Nomevet)
VALUES(2, 'Matheus'),(1, 'Ribeiro');
GO



INSERT INTO PET(idRacas,idDono, NomePet)
VALUES(1, 2, 'GREEN'),(2, 1, 'FISH');
GO



INSERT INTO RACAS(idTipopet, Qualraca)
VALUES( 2, 'JAVALI'),( 1, 'DOURADO');
GO




INSERT INTO ATENDIMENTO(idVeterinario, idPet, Horario_Atendimento)
VALUES(2, 1, '050820021 10.30H'),(1, 2, '06082021 10H');
GO

