<?php
require_once("_mysqlconnection.php");

$username = $_POST['username'];
$password = hash("sha256", $_POST['password']);
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$email = $_POST['email'];
$birthdate = $_POST['birthdate'];

$sql = "SELECT * FROM accounts WHERE username = '$username'";
$result = mysqli_query($connection, $sql);

if (mysqli_num_rows($result) > 0) {
    session_start();
    $_SESSION['name']= "Kullanıcı adı zaten kullanılıyor.";
    header('Location: sign-up.php');
    exit();
}

// E-posta kontrolü
$sql = "SELECT * FROM accounts WHERE email = '$email'";
$result = mysqli_query($connection, $sql);

if (mysqli_num_rows($result) > 0) {
    session_start();
    $_SESSION['mail']= "E-posta zaten kullanılıyor.";

    header('Location: sign-up.php');
    exit();
}


$sql = "INSERT INTO accounts (username, password, firstname, lastname, email, birthdate) VALUES ('$username', '$password', '$firstname', '$lastname', '$email', '$birthdate')";
$response = mysqli_query($connection, $sql);


if ($response ) {
    session_start();
    $_SESSION['register_succes'] = "Kullanıcı başarıyla oluşturuldu.";
  
    header('Location: sign-up.php');
    exit();
  } else {
    session_start();
    $_SESSION['register_danger']= "Kullanıcı oluşturulamadı!";
  
    header('Location: sign-up.php');
    exit();
  }
?>