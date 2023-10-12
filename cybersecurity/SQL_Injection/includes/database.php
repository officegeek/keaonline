<?php
$host = "localhost"; // Replace with your database host
$username = "tue"; // Replace with your database username
$password = "password1234"; // Replace with your database password
$database = "SimpleWebsite"; // Replace with your database name

// Create a MySQLi database connection
$mysqli = new mysqli($host, $username, $password, $database);

// Check for connection errors
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
}
?>