/*
Boghandel
*/

-- Database
create database boghandel;
use boghandel;

-- Opret tabeller
CREATE TABLE Forfattere (
    ForfatterID INT AUTO_INCREMENT PRIMARY KEY,
    ForfatterNavn VARCHAR(255),
    Fødselsår YEAR
);

CREATE TABLE Genrer (
    GenreID INT AUTO_INCREMENT PRIMARY KEY,
    GenreNavn VARCHAR(100)
);

CREATE TABLE Bøger (
    BogID INT AUTO_INCREMENT PRIMARY KEY,
    Titel VARCHAR(255),
    Udgivelsesår YEAR,
    ForfatterID INT,
    GenreID INT,
    FOREIGN KEY (ForfatterID) REFERENCES Forfattere(ForfatterID),
    FOREIGN KEY (GenreID) REFERENCES Genrer(GenreID)
);


-- Indsæt data i Forfattere
INSERT INTO Forfattere (ForfatterNavn, Fødselsår) VALUES ('Alice Hansen', '1975');
INSERT INTO Forfattere (ForfatterNavn, Fødselsår) VALUES ('Bob Nielsen', '1980');

-- Indsæt data i Genrer
INSERT INTO Genrer (GenreNavn) VALUES ('Fiktion');

-- Antag at ForfatterID og GenreID er tildelt automatisk via AUTO_INCREMENT
-- Indsæt data i Bøger
INSERT INTO Bøger (Titel, Udgivelsesår, ForfatterID, GenreID) 
VALUES ('Hemmeligheder', '2020', 1, 1);

INSERT INTO Bøger (Titel, Udgivelsesår, ForfatterID, GenreID) 
VALUES ('Ny Begyndelse', '2021', 2, 1);

-- Vis data
select * from Forfattere;
select * from Genrer;
select * from Bøger;

