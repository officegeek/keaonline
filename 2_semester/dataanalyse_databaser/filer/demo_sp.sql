/*
Demo Storede Procedure
Tue Hellstern
*/

-- Opret demo database
CREATE DATABASE IF NOT EXISTS demo;
USE demo;

-- Opret demo tabel - brugere
create table brugere (
	id INT AUTO_INCREMENT PRIMARY KEY,
    navn varchar(50),
    email varchar(50));
    
-- Opret Stored Procedure - TilfojBruger
DELIMITER $$

CREATE PROCEDURE TilfojBruger(IN brugerNavn VARCHAR(50), IN brugerEmail VARCHAR(50))
BEGIN
  INSERT INTO brugere (navn, email) VALUES (brugerNavn, brugerEmail);
END $$

DELIMITER ;

-- Indsæt data uden SP
INSERT INTO brugere (navn, email) 
VALUES ('Ole Hansen', 'ole@demo.dk');

-- Indsæt data med SP
CALL TilfojBruger('Tue Hellstern', 'tueh@kea.dk');

-- Vis data
select * from brugere;