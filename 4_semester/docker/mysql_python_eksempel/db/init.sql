/* 
Docker demo
Tue Hellstern
*/

CREATE DATABASE if not exists dockerdemo;
USE dockerdemo;

CREATE TABLE if not exists users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    klasse VARCHAR(20) NOT NULL
);

INSERT INTO users (name) 
VALUES ('Ole', 'DA4'), ('Lis'. 'DA2'), ('Kim', 'DA4');