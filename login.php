<?php
session_start();
require_once("_mysqlconnection.php");

// Simulated username and password for demonstration purposes
$validUsername = 'admin';
$validPassword = 'password';

// Retrieve the submitted username and password from the form
$username = $_POST['username'];
$password = $_POST['password'];

// Hash the submitted password
$hashedPassword = hash("sha256", $password);

// SQL query to retrieve user with the given username and hashed password
$sql = "SELECT * FROM accounts WHERE username='$username' AND password='$hashedPassword'";

$response = mysqli_query($connection, $sql);

// Validate the submitted credentials
if ($response && mysqli_num_rows($response) > 0) {
  // Credentials are valid, store the username in the session
  $_SESSION['username'] = $username;

  // Redirect the user to the home page or any other desired page
  header('Location: index.php');
  exit();
} else {
  // Invalid credentials, set an error message in the session
  $_SESSION['login_error'] = 'Geçersiz kullanıcı adı veya parola!';

  // Redirect the user back to the login page
  header('Location: sign-in.php');
  exit();
}
