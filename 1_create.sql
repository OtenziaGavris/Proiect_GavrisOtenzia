CREATE TABLE IF NOT EXISTS padure
(
	id SERIAL PRIMARY KEY,
	suprafata DECIMAL NULL,
	judet VARCHAR (50) NOT NULL,
	tip VARCHAR (50),
	id_proprietar INT,
	FOREIGN KEY (id_proprietar) REFERENCES proprietar (id) 
);

CREATE TABLE IF NOT EXISTS proprietar 
(
	id SERIAL PRIMARY KEY,
	nume VARCHAR (100) NOT NULL,
	adresa VARCHAR (300),
	telefon VARCHAR (15)
);

CREATE TABLE IF NOT EXISTS parcela
(
	id SERIAL PRIMARY KEY,
	suprafata DECIMAL,
	tip_sol VARCHAR (50),
	an_infiintare INT,
	id_padure INT,
	FOREIGN KEY (id_padure) references padure (id)
);

CREATE TABLE IF NOT EXISTS arbore 
(
	id SERIAL PRIMARY KEY,
	specie VARCHAR (50),
	varsta INT,
	inaltime DECIMAL,
	diametru DECIMAL,
	id_parcela INT,
	FOREIGN KEY (id_parcela) REFERENCES parcela (id)
);

CREATE TABLE IF NOT EXISTS sanatate_arbore
(
	id serial PRIMARY KEY,
	stare VARCHAR (50),
	data_verificare DATE,
	observatii TEXT,
	FOREIGN KEY (id_arbore) REFERENCES arbore (id)
);

CREATE TABLE IF NOT EXISTS interventie_silvica
(
	id serial PRIMARY KEY,
	tip_interventie VARCHAR (50),
	data_interventie DATE,
	responsabil VARCHAR (100) NOT NULL,
	id_arbore INT,
	FOREIGN KEY (id_arbore) REFERENCES arbore (id)
);

CREATE TABLE IF NOT EXISTS angajat
(
	id serial PRIMARY KEY,
	nume VARCHAR(100) NOT NULL,
	functie VARCHAR (50),
	data_angajare DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS angajat_interventie
(
	idangajat INT,
	idinterventie INT,
	PRIMARY KEY (idangajat, idinterventie),
    FOREIGN KEY (idangajat) REFERENCES angajat(id),
    FOREIGN KEY (idinterventie) REFERENCES interventie_silvica(id)
);
