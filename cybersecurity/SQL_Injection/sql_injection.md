---
    layout: default
    title: SQL Injection
    parent: SQL_Injection
    has_children: false
    nav_order: 10
---

<span class="fs-1">
[HOME](./index.md){: .btn .btn-blue }
</span>

# SQL Injection

## Files
- index.html - The main HTML file for the website
- style.css - Basic CSS to style the website
- login.php - PHP script to handle the login form
- welcome.php - A simple welcome page for successful login

## MySQL Database
Local MySQL database - **SimpleWebsite** - with one table:

 ``` sql
CREATE DATABASE SimpleWebsite;

USE SimpleWebsite;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
);
 ```

Create a valide user:

 ``` sql
CREATE USER 'tue'@'localhost' IDENTIFIED BY 'password1234';
 ```
 