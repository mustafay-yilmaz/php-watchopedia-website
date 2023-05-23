<?php
$server = "localhost";
$user = "root";
$password = "";
$database = "watchopedia";
$connection = mysqli_connect($server, $user,$password, $database);

if(!$connection){
    echo "Hata";
    exit();
}
?>
