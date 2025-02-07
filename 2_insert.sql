INSERT INTO Proprietar (ID_Proprietar, Nume, Adresa, Telefon) VALUES
(1, 'Ion Popescu', 'Str. Mihai Eminescu, nr. 10, Cluj', '0745123456'),
(2, 'Maria Ionescu', 'Str. Libertății, nr. 5, Brașov', '0722334455'),
(3, 'Andrei Vasilescu', 'Str. Unirii, nr. 20, București', '0766778899'),
(4, 'Elena Gheorghiu', 'Str. Horea, nr. 15, Timișoara', '0744332211'),
(5, 'Vasile Dumitru', 'Str. Victoriei, nr. 8, Sibiu', '0733111222'),
(6, 'Alexandru Marin', 'Str. Carpați, nr. 12, Iași', '0755667788'),
(7, 'Cristina Pavel', 'Str. Mărășești, nr. 7, Constanța', '0722445566'),
(8, 'Mihai Stoica', 'Str. Tudor Vladimirescu, nr. 3, Oradea', '0766554433'),
(9, 'Gabriela Radu', 'Str. Avram Iancu, nr. 22, Arad', '0744556677'),
(10, 'Dan Ilie', 'Str. Pădurii, nr. 4, Suceava', '0733778899');

INSERT INTO Padure (ID_Padure, Nume, Suprafata, Judet, Tip, ID_Proprietar) VALUES
(1, 'Padurea Făget', 250.75, 'Cluj', 'Foioase', 1),
(2, 'Padurea Retezat', 600.50, 'Hunedoara', 'Conifere', 2),
(3, 'Padurea Baneasa', 120.30, 'București', 'Mixtă', 3),
(4, 'Padurea Letea', 450.80, 'Tulcea', 'Foioase', 4),
(5, 'Padurea Hoia', 300.90, 'Cluj', 'Mixtă', 5),
(6, 'Padurea Neagră', 700.60, 'Bihor', 'Conifere', 6),
(7, 'Padurea Cernica', 150.40, 'Ilfov', 'Mixtă', 7),
(8, 'Padurea Piatra Mare', 500.20, 'Brașov', 'Conifere', 8),
(9, 'Padurea Codrii Vlăsiei', 275.30, 'Ilfov', 'Foioase', 9),
(10, 'Padurea Slatina', 400.70, 'Olt', 'Mixtă', 10);

INSERT INTO Parcela (ID_Parcela, ID_Padure, Suprafata, Tip_Sol, An_Infiintare) VALUES
(1, 1, 50.20, 'Argilos', 1980),
(2, 2, 75.30, 'Nisipos', 1995),
(3, 3, 30.00, 'Lutos', 2005),
(4, 4, 80.50, 'Argilos', 1990),
(5, 5, 60.40, 'Nisipos', 1985),
(6, 6, 120.20, 'Lutos', 2000),
(7, 7, 40.10, 'Argilos', 2010),
(8, 8, 90.80, 'Lutos', 1998),
(9, 9, 65.50, 'Nisipos', 1982),
(10, 10, 55.90, 'Argilos', 1992);

INSERT INTO Arbore (ID_Arbore, ID_Parcela, Specie, Varsta, Inaltime, Diametru) VALUES
(1, 1, 'Stejar', 40, 15.30, 0.85),
(2, 2, 'Brad', 50, 18.25, 0.90),
(3, 3, 'Mesteacăn', 30, 12.40, 0.60),
(4, 4, 'Fag', 45, 16.80, 0.78),
(5, 5, 'Plop', 35, 14.10, 0.65),
(6, 6, 'Pin', 55, 20.00, 1.00),
(7, 7, 'Salcâm', 25, 10.90, 0.50),
(8, 8, 'Molift', 60, 22.30, 1.10),
(9, 9, 'Carpen', 33, 13.50, 0.68),
(10, 10, 'Frasin', 38, 15.75, 0.80);

INSERT INTO Sanatate_Arbore (ID_Arbore, Stare, Data_Verificare, Observatii) VALUES
(1, 'Sănătos', '2024-01-15', 'Nicio problemă identificată'),
(2, 'Bun', '2024-01-10', 'Ușoare semne de uscăciune'),
(3, 'Sănătos', '2024-01-20', 'Creștere normală'),
(4, 'Bolnav', '2024-02-01', 'Semne de ciupercă'),
(5, 'Sănătos', '2024-01-25', 'Nicio problemă'),
(6, 'Bun', '2024-01-12', 'Trunchi ușor afectat'),
(7, 'Bolnav', '2024-02-05', 'Dăunători detectați'),
(8, 'Sănătos', '2024-01-30', 'Frunziș dens'),
(9, 'Bun', '2024-01-28', 'Coroană parțial afectată'),
(10, 'Sănătos', '2024-02-03', 'Nicio problemă');

INSERT INTO Interventie_Silvica (ID_Interventie, ID_Arbore, Tip_Interventie, Data, Responsabil) VALUES
(1, 4, 'Tratament antifungic', '2024-02-06', 'Marian Popa'),
(2, 7, 'Îndepărtare dăunători', '2024-02-08', 'Elena Ionescu'),
(3, 2, 'Toaletare coroana', '2024-02-10', 'Dan Gheorghe'),
(4, 6, 'Tratare trunchi', '2024-02-12', 'Andrei Radu'),
(5, 9, 'Îngrășământ aplicat', '2024-02-14', 'Cristina Dumitru'),
(6, 1, 'Verificare periodică', '2024-02-16', 'Mihai Ilie'),
(7, 5, 'Protecție împotriva insectelor', '2024-02-18', 'Simona Vasilescu'),
(8, 3, 'Curățare sol', '2024-02-20', 'Gabriel Marin'),
(9, 8, 'Monitorizare creștere', '2024-02-22', 'Diana Petrescu'),
(10, 10, 'Udare suplimentară', '2024-02-24', 'Alexandru Pavel');

INSERT INTO Angajat (ID_Angajat, Nume, Functie, Data_Angajare) VALUES
(1, 'Marian Popa', 'Silvicultor', '2015-06-10'),
(2, 'Elena Ionescu', 'Tehnician silvic', '2017-04-25'),
(3, 'Dan Gheorghe', 'Pădurar', '2019-09-15'),
(4, 'Andrei Radu', 'Silvicultor', '2013-11-20');

INSERT INTO Angajat_Interventie (ID_Angajat, ID_Interventie) VALUES
(1, 1), (2, 2), (3, 3), (4, 4);