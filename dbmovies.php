<?php
require_once("_mysqlconnection.php");

/*
$name = $_POST['name'];
$rank = $_POST['rank'];
$score = $_POST['score'];
$date = $_POST['date'];
*/
$sql = "SELECT * FROM movies ORDER BY rank";
$result = mysqli_query($connection, $sql);


?>