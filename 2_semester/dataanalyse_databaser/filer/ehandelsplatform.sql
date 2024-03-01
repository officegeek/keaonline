/*
E-handelsplatform
*/

-- Opret database
CREATE DATABASE IF NOT EXISTS eHandelsDemo;
USE eHandelsDemo;

-- Opret tabeller
CREATE TABLE produkter (
    produkt_id INT AUTO_INCREMENT PRIMARY KEY,
    navn VARCHAR(60) NOT NULL,
    pris DECIMAL(10, 2) NOT NULL,
    lagerbeholdning INT DEFAULT 0
);

CREATE TABLE ordrer (
    ordre_id INT AUTO_INCREMENT PRIMARY KEY,
    produkt_id INT,
    antal INT,
    ordre_dato TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (produkt_id) REFERENCES produkter(produkt_id)
);

-- Indsæt data i tabeller
insert into produkter (navn, pris, lagerbeholdning)
values 	('Hammer', 98.75, 20),
		('Boremaskine', 1646, 15),
		('Sav', 75.25, 200),
		('Skruetrækker', 18.75, 120);
    
insert into ordrer (produkt_id, antal)
values 	(1, 5),
		(2, 10),
        (3, 1),
        (4, 20),
        (4, 5),
        (3, 3),
        (2, 1),
        (1, 2),
        (2, 3),
        (4, 10),
        (3, 25);
        
-- Storede Procedure
DELIMITER $$

CREATE PROCEDURE TilføjOrdre(IN produktID INT, IN antal INT)
BEGIN
    INSERT INTO ordrer (produkt_id, antal) VALUES (produktID, antal);
END $$

DELIMITER ;

-- Trigger
DELIMITER $$

CREATE TRIGGER OpdaterLagerEfterOrdre
AFTER INSERT ON ordrer
FOR EACH ROW
BEGIN
    UPDATE produkter
    SET lagerbeholdning = lagerbeholdning - NEW.antal
    WHERE produkt_id = NEW.produkt_id;
END $$

DELIMITER ;

-- Hvad er der på lager?
select * from produkter;

-- Indsæt en ny order
insert into ordrer (produkt_id, antal)
values 	(1, 5);

-- Hvad er der nu på lager?
select * from produkter;