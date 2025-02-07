SELECT * FROM Proprietar
WHERE ID_Proprietar IN (SELECT ID_Proprietar FROM Padure WHERE Suprafata > 500);

SELECT Nume, Adresa FROM Proprietar
WHERE ID_Proprietar = (SELECT ID_Proprietar FROM Padure ORDER BY Suprafata DESC LIMIT 1);

SELECT Nume FROM Proprietar
WHERE ID_Proprietar IN (SELECT ID_Proprietar FROM Padure WHERE Tip = 'Foioase');


SELECT * FROM Padure
WHERE ID_Padure IN (SELECT ID_Padure FROM Parcela WHERE Suprafata > 100);

SELECT * FROM Padure
WHERE Suprafata = (SELECT MIN(Suprafata) FROM Padure);

SELECT * FROM Padure
WHERE Judet = (SELECT Judet FROM Padure WHERE ID_Padure = 3);


SELECT * FROM Parcela
WHERE ID_Padure = (SELECT ID_Padure FROM Padure ORDER BY Suprafata DESC LIMIT 1);

SELECT * FROM Parcela
WHERE Tip_Sol = (SELECT Tip_Sol FROM Parcela WHERE ID_Parcela = 2);

SELECT * FROM Parcela
WHERE ID_Padure IN (SELECT ID_Padure FROM Padure WHERE ID_Proprietar = 5);


SELECT * FROM Arbore
WHERE ID_Parcela IN (SELECT ID_Parcela FROM Parcela WHERE Suprafata > 80);

SELECT * FROM Arbore
WHERE Inaltime = (SELECT MAX(Inaltime) FROM Arbore);

SELECT * FROM Arbore
WHERE ID_Parcela = (SELECT ID_Parcela FROM Arbore WHERE ID_Arbore = 7);

SELECT * FROM Sanatate_Arbore
WHERE Stare = 'Bolnav';

SELECT * FROM Sanatate_Arbore
WHERE ID_Arbore = (SELECT ID_Arbore FROM Arbore ORDER BY Inaltime DESC LIMIT 1);


SELECT * FROM Interventie_Silvica
WHERE ID_Arbore IN (SELECT ID_Arbore FROM Arbore WHERE Inaltime > 20);

SELECT * FROM Interventie_Silvica
WHERE Data = (SELECT MAX(Data) FROM Interventie_Silvica);

SELECT * FROM Interventie_Silvica
WHERE ID_Arbore IN (SELECT ID_Arbore FROM Sanatate_Arbore WHERE Stare = 'Bolnav');


SELECT * FROM Angajat
WHERE ID_Angajat IN (SELECT ID_Angajat FROM Angajat_Interventie);

SELECT * FROM Angajat
WHERE Data_Angajare = (SELECT MIN(Data_Angajare) FROM Angajat);

SELECT * FROM Angajat
WHERE Functie = (SELECT Functie FROM Angajat WHERE ID_Angajat = 5);


SELECT * FROM Interventie_Silvica
WHERE ID_Interventie IN (SELECT ID_Interventie FROM Angajat_Interventie WHERE ID_Angajat = 3);

SELECT * FROM Angajat
WHERE ID_Angajat IN (SELECT ID_Angajat FROM Angajat_Interventie WHERE ID_Interventie = (SELECT ID_Interventie FROM Interventie_Silvica ORDER BY Data DESC LIMIT 1));

SELECT * FROM Angajat
WHERE ID_Angajat IN (
    SELECT ID_Angajat FROM Angajat_Interventie 
    WHERE ID_Interventie IN (
        SELECT ID_Interventie FROM Interventie_Silvica WHERE Tip_Interventie = 'Defrișare selectivă'
    )
);
