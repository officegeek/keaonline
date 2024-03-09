/* 
Docker demo
Tue Hellstern
*/

CREATE DATABASE if not exists dockerdemo;
USE dockerdemo;

CREATE TABLE if not exists studerende (
    id INT AUTO_INCREMENT PRIMARY KEY,
    studerendenavn VARCHAR(50) NOT NULL,
    klasse VARCHAR(20) NOT NULL
);

INSERT INTO studerende (studerendenavn, klasse ) 
VALUES 
        ('Ole', 'DA4'), 
        ('Lis', 'DA2'), 
        ('Kim', 'DA4'),
        ('Pia', 'DA4');