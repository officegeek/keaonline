/*
Demo Trigger
Tue Hellstern
*/

-- Opret demo database
CREATE DATABASE IF NOT EXISTS demo;
USE demo;

-- Oprettelse af tabeller
CREATE TABLE ordrer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ordre_maengde DECIMAL(10,2),
    ordre_dato DATE
);

CREATE TABLE ordre_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    ordre_id INT,
    log_dato TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Oprettelse af Trigger

DELIMITER $$

CREATE TRIGGER efterOrdreIndsaettelse
	AFTER INSERT ON ordrer
	FOR EACH ROW
	BEGIN
		INSERT INTO ordre_log (ordre_id) VALUES (NEW.id);
	END $$

DELIMITER ;

-- Test
INSERT INTO ordrer (ordre_maengde, ordre_dato) 
VALUES (100, '2024-02-28');

-- Vis data
select * from ordrer;
select * from ordre_log; 