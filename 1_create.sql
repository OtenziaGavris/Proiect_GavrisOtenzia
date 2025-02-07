CREATE TABLE Padure 
(
    ID_Padure INT PRIMARY KEY,
    Nume VARCHAR(100),
    Suprafata DECIMAL(10,2),
    Judet VARCHAR(50),
    Tip VARCHAR(50),
    ID_Proprietar INT,
    FOREIGN KEY (ID_Proprietar) REFERENCES Proprietar(ID_Proprietar)
);

CREATE TABLE Proprietar (
    ID_Proprietar INT PRIMARY KEY,
    Nume VARCHAR(100),
    Adresa TEXT,
    Telefon VARCHAR(15)
);

CREATE TABLE Parcela (
    ID_Parcela INT PRIMARY KEY,
    ID_Padure INT,
    Suprafata DECIMAL(10,2),
    Tip_Sol VARCHAR(50),
    An_Infiintare INT,
    FOREIGN KEY (ID_Padure) REFERENCES Padure(ID_Padure)
);

CREATE TABLE Arbore (
    ID_Arbore INT PRIMARY KEY,
    ID_Parcela INT,
    Specie VARCHAR(50),
    Varsta INT,
    Inaltime DECIMAL(5,2),
    Diametru DECIMAL(5,2),
    FOREIGN KEY (ID_Parcela) REFERENCES Parcela(ID_Parcela)
);

CREATE TABLE Sanatate_Arbore (
    ID_Arbore INT PRIMARY KEY,
    Stare VARCHAR(50),
    Data_Verificare DATE,
    Observatii TEXT,
    FOREIGN KEY (ID_Arbore) REFERENCES Arbore(ID_Arbore)
);

CREATE TABLE Interventie_Silvica (
    ID_Interventie INT PRIMARY KEY,
    ID_Arbore INT,
    Tip_Interventie VARCHAR(50),
    Data DATE,
    Responsabil VARCHAR(100),
    FOREIGN KEY (ID_Arbore) REFERENCES Arbore(ID_Arbore)
);

CREATE TABLE Angajat (
    ID_Angajat INT PRIMARY KEY,
    Nume VARCHAR(100),
    Functie VARCHAR(50),
    Data_Angajare DATE
);

CREATE TABLE Angajat_Interventie (
    ID_Angajat INT,
    ID_Interventie INT,
    PRIMARY KEY (ID_Angajat, ID_Interventie),
    FOREIGN KEY (ID_Angajat) REFERENCES Angajat(ID_Angajat),
    FOREIGN KEY (ID_Interventie) REFERENCES Interventie_Silvica(ID_Interventie)
);
