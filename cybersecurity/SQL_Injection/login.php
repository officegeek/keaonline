<?php
// Simulated user data (replace with your database connection)
$valid_username = "tue";
$valid_password = "password1234";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    if ($username === $valid_username && $password === $valid_password) {
        // Successful login
        header("Location: welcome.php");
        exit;
    } else {
        // Invalid login
        echo "Invalid username or password. Please try again.";
    }
}
?>
