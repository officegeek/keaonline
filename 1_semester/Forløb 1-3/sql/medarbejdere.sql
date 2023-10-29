-- Opret databasen - Medarbejdere
CREATE DATABASE Medarbejdere;
USE Medarbejdere;

-- Opretter Afdelinger tabel
CREATE TABLE Afdelinger (
    AfdelingID INT PRIMARY KEY,
    AfdelingNavn VARCHAR(255) NOT NULL
);

-- Opretter Projekter tabel
CREATE TABLE Projekter (
    ProjektID INT PRIMARY KEY,
    ProjektNavn VARCHAR(255) NOT NULL
);

-- Opretter Medarbejdere tabel
CREATE TABLE Medarbejdere (
    MedarbejderID INT PRIMARY KEY,
    Navn VARCHAR(255) NOT NULL,
    AfdelingID INT,
    ProjektID INT,
    FOREIGN KEY (AfdelingID) REFERENCES Afdelinger(AfdelingID),
    FOREIGN KEY (ProjektID) REFERENCES Projekter(ProjektID)
);

-- Indsætter eksempeldata i Afdelinger
INSERT INTO Afdelinger (AfdelingID, AfdelingNavn) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Salg');

-- Indsætter eksempeldata i Projekter
INSERT INTO Projekter (ProjektID, ProjektNavn) VALUES
(1, 'Projekt X'),
(2, 'Projekt Y'),
(3, 'Projekt Z');

-- Indsætter eksempeldata i Medarbejdere
INSERT INTO Medarbejdere (MedarbejderID, Navn, AfdelingID, ProjektID) VALUES
(1, 'Alice', 1, 1),
(2, 'Bob', 2, 2),
(3, 'Charlie', 3, 3),
(4, 'Diana', 1, 1),
(5, 'Edward', 2, 2);

-- Vis data
select * from medarbejdere;
select * from afdelinger;
select * from projekter;
