-- Opretter databasen
CREATE DATABASE SkoleDB;
USE SkoleDB;

-- Opretter Studerende-tabellen
CREATE TABLE Studerende (
    StuderendeID INT AUTO_INCREMENT PRIMARY KEY,
    Navn VARCHAR(255) NOT NULL,
    KlasseID INT
);

-- Opretter StuderendeDetaljer-tabellen
CREATE TABLE StuderendeDetaljer (
    StuderendeID INT PRIMARY KEY,
    Email TEXT,
    FOREIGN KEY (StuderendeID) REFERENCES Studerende(StuderendeID) 
    ON DELETE CASCADE
);

-- Opretter Klasser-tabellen
CREATE TABLE Klasser (
    KlasseID INT AUTO_INCREMENT PRIMARY KEY,
    KlasseNavn VARCHAR(255) NOT NULL
);

-- Tilføjer fremmednøglerelation til Studerende-tabellen for at forbinde til Klasser
ALTER TABLE Studerende
ADD FOREIGN KEY (KlasseID) REFERENCES Klasser(KlasseID)
ON DELETE SET NULL;

-- Opretter Kurser-tabellen
CREATE TABLE Kurser (
    KursusID INT AUTO_INCREMENT PRIMARY KEY,
    KursusNavn VARCHAR(255) NOT NULL
);

-- Opretter StuderendeKurser-tabellen for at håndtere mange-til-mange relation mellem Studerende og Kurser
CREATE TABLE StuderendeKurser (
    StuderendeID INT,
    KursusID INT,
    PRIMARY KEY (StuderendeID, KursusID),
    FOREIGN KEY (StuderendeID) REFERENCES Studerende(StuderendeID)
    ON DELETE CASCADE,
    FOREIGN KEY (KursusID) REFERENCES Kurser(KursusID)
    ON DELETE CASCADE
);

-- INDSÆT DATA

-- Indsætter data i Klasser-tabellen
INSERT INTO Klasser (KlasseNavn) VALUES
('1.A'),
('2.B'),
('3.C'),
('4.D');

-- Indsætter data i Studerende-tabellen
INSERT INTO Studerende (Navn, KlasseID) VALUES
('Peter Jensen', 1),
('Maria Nielsen', 1),
('Lars Mikkelsen', 2),
('Anna Jørgensen', 3),
('Ole Hansen', 4);

-- Indsætter data i StuderendeDetaljer-tabellen
INSERT INTO StuderendeDetaljer (StuderendeID, Email) VALUES
(1, 'peter@skole.dk'),
(2, 'maria@skole.dk'),
(3, 'lars@skole.dk'),
(4, 'anna@skole.dk'),
(5, 'ole@skole.dk');


-- Indsætter data i Kurser-tabellen
INSERT INTO Kurser (KursusNavn) VALUES
('Matematik'),
('Dansk'),
('Engelsk'),
('Naturfag'),
('Fransk');

-- Indsætter data i StuderendeKurser-tabellen
INSERT INTO StuderendeKurser (StuderendeID, KursusID) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 1),
(3, 4),
(4, 4);

-- VIS DATA
select * from klasser;
select * from kurser;
select * from studerende;
select * from studerendedetaljer;
select * from studerendekurser;