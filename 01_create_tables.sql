-- Tworzenie tabeli zawierającej dane opiekunów prawnych

CREATE TABLE opiekunowie (
id_opiekun INT PRIMARY KEY AUTO_INCREMENT,
imie VARCHAR(50) NOT NULL, 
drugie_imie VARCHAR(50),
nazwisko VARCHAR(100) NOT NULL,
nr_tel VARCHAR(20), -- przyjmuje zagraniczne numery
e_mail VARCHAR(100) UNIQUE,
ulica VARCHAR(100),
nr_domu VARCHAR(10),
nr_mieszkania VARCHAR(10),
miasto VARCHAR(100),
kod_pocztowy VARCHAR(6)
);
-- tworzenie tabeli zawierającej dane nauczycieli

CREATE TABLE nauczyciele (
id_nauczyciel INT PRIMARY KEY AUTO_INCREMENT,
imie VARCHAR(50) NOT NULL,
drugie_imie VARCHAR(50),
nazwisko VARCHAR(100) NOT NULL,
nr_tel VARCHAR(20),
adres_email VARCHAR(100) UNIQUE
);

-- Tworzenie tabeli klas 

CREATE TABLE klasa (	
id_klasa INT PRIMARY KEY AUTO_INCREMENT,
klasa CHAR(1) CHECK (klasa IN ('A', 'B', 'C', 'D', 'E', 'F')),
wychowawca INT NOT NULL, -- id_nauczyciela
rozpoczecie DATE NOT NULL, -- Data rozpoczenia nauczania
zakonczenie DATE, -- Data zakończenia nauczania
FOREIGN KEY (wychowawca) REFERENCES nauczyciele(id_nauczyciel)
);

-- Tworzenie tabeli zawierąjacej dane uczniów 

CREATE TABLE uczniowie (
id_ucznia INT PRIMARY KEY AUTO_INCREMENT ,
imie VARCHAR(50) NOT NULL,
drugie_imie VARCHAR(50),
nazwisko VARCHAR(100) NOT NULL,
data_ur DATE NOT NULL,
id_klasa INT NOT NULL,
pesel CHAR(11) UNIQUE NOT NULL,
id_opiekun_1 INT NOT NULL,
id_opiekun_2 INT NULL,
FOREIGN KEY (id_opiekun_1) REFERENCES opiekunowie(id_opiekun),
FOREIGN KEY (id_opiekun_2) REFERENCES opiekunowie(id_opiekun),
FOREIGN KEY (id_klasa) REFERENCES klasa(id_klasa)
);

-- Tworzenie tabel przedmiotów

CREATE TABLE przedmioty (
id_przedmiot INT PRIMARY KEY AUTO_INCREMENT,
id_klasa INT NOT NULL,
nazwa_przedmiot CHAR(50) NOT NULL,
prowadzacy INT NOT NULL, -- id nauczyciela prowadzacego przedmiot dla tej klasy
 FOREIGN KEY (id_klasa) REFERENCES klasa(id_klasa),
 FOREIGN KEY (prowadzacy) REFERENCES nauczyciele(id_nauczyciel)
 );
 
 -- Tworzenie tabel ocen
 CREATE TABLE oceny (
 id_oceny INT PRIMARY KEY AUTO_INCREMENT,
 id_przedmiot INT NOT NULL,
 id_nauczyciel INT NOT NULL, -- Nauczyciel wystawiający ocenę,
 id_uczen INT NOT NULL,
 ocena INT CHECK (ocena BETWEEN 1 AND 6) ,
 FOREIGN KEY (id_przedmiot) REFERENCES przedmioty(id_przedmiot),
 FOREIGN KEY (id_nauczyciel) REFERENCES nauczyciele(id_nauczyciel),
 FOREIGN KEY (id_uczen) REFERENCES uczniowie(id_ucznia)
 );
