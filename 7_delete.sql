DELETE FROM Proprietar WHERE ID_Proprietar = 6;
DELETE FROM Proprietar WHERE ID_Proprietar NOT IN (SELECT ID_Proprietar FROM Padure);
DELETE FROM Proprietar WHERE Nume LIKE '%Test%';

DELETE FROM Padure WHERE ID_Padure = 6;
DELETE FROM Padure WHERE Judet = 'Brasov';
DELETE FROM Padure WHERE Suprafata < 10;

DELETE FROM Parcela WHERE ID_Parcela = 5;
DELETE FROM Parcela WHERE ID_Padure NOT IN (SELECT ID_Padure FROM Padure);
DELETE FROM Parcela WHERE An_Infiintare < 1950;

DELETE FROM Arbore WHERE ID_Arbore = 15;
DELETE FROM Arbore WHERE Varsta > 200;
DELETE FROM Arbore WHERE ID_Parcela NOT IN (SELECT ID_Parcela FROM Parcela);

DELETE FROM Sanatate_Arbore WHERE ID_Arbore = 20;
DELETE FROM Sanatate_Arbore WHERE Data_Verificare < DATE_SUB(CURDATE(), INTERVAL 10 YEAR);----
DELETE FROM Sanatate_Arbore WHERE ID_Arbore NOT IN (SELECT ID_Arbore FROM Arbore);

DELETE FROM Interventie_Silvica WHERE ID_Interventie = 8;
DELETE FROM Interventie_Silvica WHERE Data < '2000-01-01';
DELETE FROM Interventie_Silvica WHERE ID_Arbore NOT IN (SELECT ID_Arbore FROM Arbore);

DELETE FROM Angajat WHERE ID_Angajat = 7;
DELETE FROM Angajat WHERE ID_Angajat NOT IN (SELECT ID_Angajat FROM Angajat_Interventie);
DELETE FROM Angajat WHERE Data_Angajare < '1980-01-01';

DELETE FROM Angajat_Interventie WHERE ID_Angajat = 4 AND ID_Interventie = 10;
DELETE FROM Angajat_Interventie WHERE ID_Interventie NOT IN (SELECT ID_Interventie FROM Interventie_Silvica);
DELETE FROM Angajat_Interventie WHERE ID_Angajat NOT IN (SELECT ID_Angajat FROM Angajat);

