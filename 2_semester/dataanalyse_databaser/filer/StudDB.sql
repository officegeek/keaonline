/*
Opret database - StudDB - der holder styr på studerendes kurser og instruktører
Version: 28--02-2024
Tue Hellstern
*/

--- Slet databasen, Studdb, hvis den findes
drop database if exists studdb;

-- Opret Database
create database Studdb;

-- Brug databasen StudDB
use StudDB;

-- Oprette tabeler og releationer
CREATE TABLE Studerende (
    StuderendeID INT AUTO_INCREMENT PRIMARY KEY,
    StuderendeNavn VARCHAR(255) NOT NULL
);

CREATE TABLE Instruktør (
    InstruktørID INT AUTO_INCREMENT PRIMARY KEY,
    InstruktørNavn VARCHAR(255) NOT NULL
);

CREATE TABLE Kursus (
    KursusID INT AUTO_INCREMENT PRIMARY KEY,
    KursusNavn VARCHAR(255) NOT NULL,
    InstruktørID INT,
    FOREIGN KEY (InstruktørID) REFERENCES Instruktør(InstruktørID)
);

CREATE TABLE StuderendeKursus (
    StuderendeID INT,
    KursusID INT,
    PRIMARY KEY (StuderendeID, KursusID),
    FOREIGN KEY (StuderendeID) REFERENCES Studerende(StuderendeID),
    FOREIGN KEY (KursusID) REFERENCES Kursus(KursusID)
);


-- Indsæt data i Studerende
INSERT INTO Studerende (StuderendeNavn) 
VALUES ('Anna'), ('Bertil'), ('Carla'), ('Ole'), ('Peter'), ('Tue');

-- Indsæt data i Instruktør
INSERT INTO Instruktør (InstruktørNavn) 
VALUES ('Professor Eik'), ('Lektor Lind');

-- Indsæt data i Kursus
INSERT INTO Kursus (KursusNavn, InstruktørID) 
VALUES ('Databaser', 1), ('Algoritmer', 2);

-- Indsæt data i StuderendeKursus
INSERT INTO StuderendeKursus (StuderendeID, KursusID) 
VALUES (1, 1), (2, 1), (3, 1), (3, 2), (5, 1), (5, 2), (4, 1), (4, 2);

-- Vis data
select * from Studerende;
select * from Instruktør;
select * from Kursus;
select * from StuderendeKursus;


---
SELECT 
    Instruktør.InstruktørNavn,
    Kursus.KursusNavn,
    COUNT(Studerende.StuderendeID) AS AntalStuderende
FROM 
    StuderendeKursus
JOIN 
    Studerende ON StuderendeKursus.StuderendeID = Studerende.StuderendeID
JOIN 
    Kursus ON StuderendeKursus.KursusID = Kursus.KursusID
JOIN 
    Instruktør ON Kursus.InstruktørID = Instruktør.InstruktørID
GROUP BY 
    Kursus.KursusID, Instruktør.InstruktørID
ORDER BY 
    Instruktør.InstruktørNavn, Kursus.KursusNavn;
    
-- VIEW
CREATE VIEW InstruktørKursusAntal AS
    SELECT 
        Instruktør.InstruktørNavn,
        Kursus.KursusNavn,
        COUNT(Studerende.StuderendeID) AS AntalStuderende
    FROM 
        StuderendeKursus
    JOIN 
        Studerende ON StuderendeKursus.StuderendeID = Studerende.StuderendeID
    JOIN 
        Kursus ON StuderendeKursus.KursusID = Kursus.KursusID
    JOIN 
        Instruktør ON Kursus.InstruktørID = Instruktør.InstruktørID
    GROUP BY 
        Kursus.KursusID, Instruktør.InstruktørID
    ORDER BY 
        Instruktør.InstruktørNavn, Kursus.KursusNavn;

-- Brug VIEW InstruktørKursusAntal
SELECT * FROM InstruktørKursusAntal;
