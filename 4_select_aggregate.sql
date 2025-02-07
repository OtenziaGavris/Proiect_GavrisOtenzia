SELECT * FROM Proprietar;

SELECT Nume, Telefon FROM Proprietar WHERE Adresa LIKE '%Cluj%';


SELECT Nume, Suprafata, Judet FROM Padure WHERE Suprafata > 300;

SELECT COUNT(*) AS Numar_Paduri, Judet FROM Padure GROUP BY Judet;


SELECT ID_Parcela, Suprafata, Tip_Sol FROM Parcela WHERE An_Infiintare > 2000;

SELECT AVG(Suprafata) AS Suprafata_Medie FROM Parcela WHERE Tip_Sol = 'Argilos';


SELECT ID_Arbore, Specie, Varsta, Inaltime FROM Arbore WHERE Varsta > 50;

SELECT Specie, COUNT(*) AS Numar_Arbori FROM Arbore GROUP BY Specie;


SELECT ID_Arbore, Stare, Observatii FROM Sanatate_Arbore WHERE Stare = 'Bolnav';

SELECT COUNT(*) AS Arbori_Verificati, Data_Verificare FROM Sanatate_Arbore GROUP BY Data_Verificare;


SELECT ID_Interventie, Tip_Interventie, Data FROM Interventie_Silvica WHERE Data > '2024-02-15';

SELECT Responsabil, COUNT(*) AS Numar_Interventii FROM Interventie_Silvica GROUP BY Responsabil;


SELECT Nume, Functie FROM Angajat WHERE Data_Angajare < '2018-01-01';

SELECT COUNT(*) AS Numar_Angajati, Functie FROM Angajat GROUP BY Functie;


SELECT ID_Angajat, ID_Interventie FROM Angajat_Interventie WHERE ID_Interventie = 5;

SELECT ID_Interventie, COUNT(*) AS Numar_Angajati FROM Angajat_Interventie GROUP BY ID_Interventie;
