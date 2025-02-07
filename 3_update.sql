
UPDATE Proprietar SET Telefon = '0745129999' WHERE ID_Proprietar = 1;
UPDATE Proprietar SET Adresa = 'Str. Mihai Viteazu, nr. 11, Cluj' WHERE ID_Proprietar = 2;
UPDATE Proprietar SET Nume = 'Andreea Vasilescu' WHERE ID_Proprietar = 3;
UPDATE Proprietar SET Telefon = '0722339900' WHERE ID_Proprietar = 4;
UPDATE Proprietar SET Adresa = 'Str. Victoriei, nr. 10, Sibiu' WHERE ID_Proprietar = 5;
UPDATE Proprietar SET Nume = 'Alexandru Marinescu' WHERE ID_Proprietar = 6;
UPDATE Proprietar SET Telefon = '0722556677' WHERE ID_Proprietar = 7;
UPDATE Proprietar SET Adresa = 'Str. Tudor Vladimirescu, nr. 5, Oradea' WHERE ID_Proprietar = 8;
UPDATE Proprietar SET Nume = 'Gabriela Radulescu' WHERE ID_Proprietar = 9;
UPDATE Proprietar SET Telefon = '0733779900' WHERE ID_Proprietar = 10;


UPDATE Padure SET Suprafata = 260.00 WHERE ID_Padure = 1;
UPDATE Padure SET Judet = 'Caraș-Severin' WHERE ID_Padure = 2;
UPDATE Padure SET Tip = 'Conifere' WHERE ID_Padure = 3;
UPDATE Padure SET Nume = 'Padurea Letea Mare' WHERE ID_Padure = 4;
UPDATE Padure SET Suprafata = 320.90 WHERE ID_Padure = 5;
UPDATE Padure SET ID_Proprietar = 2 WHERE ID_Padure = 6;
UPDATE Padure SET Tip = 'Mixtă' WHERE ID_Padure = 7;
UPDATE Padure SET Suprafata = 510.50 WHERE ID_Padure = 8;
UPDATE Padure SET Judet = 'Buzău' WHERE ID_Padure = 9;
UPDATE Padure SET Nume = 'Padurea Slatina Noua' WHERE ID_Padure = 10;


UPDATE Parcela SET Suprafata = 55.00 WHERE ID_Parcela = 1;
UPDATE Parcela SET Tip_Sol = 'Lutos' WHERE ID_Parcela = 2;
UPDATE Parcela SET An_Infiintare = 2010 WHERE ID_Parcela = 3;
UPDATE Parcela SET Suprafata = 85.50 WHERE ID_Parcela = 4;
UPDATE Parcela SET Tip_Sol = 'Argilos' WHERE ID_Parcela = 5;
UPDATE Parcela SET ID_Padure = 3 WHERE ID_Parcela = 6;
UPDATE Parcela SET Suprafata = 42.30 WHERE ID_Parcela = 7;
UPDATE Parcela SET Tip_Sol = 'Nisipos' WHERE ID_Parcela = 8;
UPDATE Parcela SET An_Infiintare = 2005 WHERE ID_Parcela = 9;
UPDATE Parcela SET Suprafata = 60.00 WHERE ID_Parcela = 10;


UPDATE Arbore SET Varsta = 45 WHERE ID_Arbore = 1;
UPDATE Arbore SET Inaltime = 19.00 WHERE ID_Arbore = 2;
UPDATE Arbore SET Specie = 'Stejar roșu' WHERE ID_Arbore = 3;
UPDATE Arbore SET Diametru = 0.82 WHERE ID_Arbore = 4;
UPDATE Arbore SET ID_Parcela = 2 WHERE ID_Arbore = 5;
UPDATE Arbore SET Varsta = 58 WHERE ID_Arbore = 6;
UPDATE Arbore SET Specie = 'Fag comun' WHERE ID_Arbore = 7;
UPDATE Arbore SET Inaltime = 23.50 WHERE ID_Arbore = 8;
UPDATE Arbore SET Diametru = 0.70 WHERE ID_Arbore = 9;
UPDATE Arbore SET Specie = 'Salcâm alb' WHERE ID_Arbore = 10;


UPDATE Sanatate_Arbore SET Stare = 'Bolnav' WHERE ID_Arbore = 1;
UPDATE Sanatate_Arbore SET Observatii = 'Ciuperci detectate' WHERE ID_Arbore = 2;
UPDATE Sanatate_Arbore SET Data_Verificare = '2024-02-10' WHERE ID_Arbore = 3;
UPDATE Sanatate_Arbore SET Stare = 'Sănătos' WHERE ID_Arbore = 4;
UPDATE Sanatate_Arbore SET Observatii = 'Frunza ruginie' WHERE ID_Arbore = 5;
UPDATE Sanatate_Arbore SET Stare = 'Bun' WHERE ID_Arbore = 6;
UPDATE Sanatate_Arbore SET Data_Verificare = '2024-02-12' WHERE ID_Arbore = 7;
UPDATE Sanatate_Arbore SET Stare = 'Bolnav' WHERE ID_Arbore = 8;
UPDATE Sanatate_Arbore SET Observatii = 'Dăunători mici observați' WHERE ID_Arbore = 9;
UPDATE Sanatate_Arbore SET Stare = 'Sănătos' WHERE ID_Arbore = 10;


UPDATE Interventie_Silvica SET Tip_Interventie = 'Curățare ciuperci' WHERE ID_Interventie = 1;
UPDATE Interventie_Silvica SET Data = '2024-02-09' WHERE ID_Interventie = 2;
UPDATE Interventie_Silvica SET Responsabil = 'Mihai Gheorghe' WHERE ID_Interventie = 3;
UPDATE Interventie_Silvica SET Tip_Interventie = 'Stropire preventivă' WHERE ID_Interventie = 4;
UPDATE Interventie_Silvica SET Data = '2024-02-16' WHERE ID_Interventie = 5;
UPDATE Interventie_Silvica SET Responsabil = 'Dan Ilie' WHERE ID_Interventie = 6;
UPDATE Interventie_Silvica SET Data = '2024-02-19' WHERE ID_Interventie = 7;
UPDATE Interventie_Silvica SET Tip_Interventie = 'Defrișare selectivă' WHERE ID_Interventie = 8;
UPDATE Interventie_Silvica SET Responsabil = 'Gabriel Stoica' WHERE ID_Interventie = 9;
UPDATE Interventie_Silvica SET Data = '2024-02-25' WHERE ID_Interventie = 10;


UPDATE Angajat SET Functie = 'Tehnician forestier' WHERE ID_Angajat = 1;
UPDATE Angajat SET Data_Angajare = '2018-03-15' WHERE ID_Angajat = 2;
UPDATE Angajat SET Nume = 'Dumitru Gheorghe' WHERE ID_Angajat = 3;
UPDATE Angajat SET Functie = 'Silvicultor principal' WHERE ID_Angajat = 4;
UPDATE Angajat SET Data_Angajare = '2020-07-01' WHERE ID_Angajat = 5;
UPDATE Angajat SET Functie = 'Inginer silvic' WHERE ID_Angajat = 6;
UPDATE Angajat SET Nume = 'Cristian Popescu' WHERE ID_Angajat = 7;
UPDATE Angajat SET Data_Angajare = '2021-09-10' WHERE ID_Angajat = 8;
UPDATE Angajat SET Functie = 'Monitor Pădure' WHERE ID_Angajat = 9;
UPDATE Angajat SET Data_Angajare = '2016-12-20' WHERE ID_Angajat = 10;


UPDATE Angajat_Interventie SET ID_Interventie = 5 WHERE ID_Angajat = 1;
UPDATE Angajat_Interventie SET ID_Interventie = 7 WHERE ID_Angajat = 2;
UPDATE Angajat_Interventie SET ID_Angajat = 3 WHERE ID_Interventie = 3;
UPDATE Angajat_Interventie SET ID_Angajat = 4 WHERE ID_Interventie = 4;