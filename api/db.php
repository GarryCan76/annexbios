<?php
$servername = 'localhost';
$username = 'root';
$password = '';
$dbName = 'AnnexBios';

$connection = mysqli_connect($servername, $username, $password, $dbName);
mysqli_set_charset($connection, "utf8mb4");
if (!$connection){
    die('Database connection error : ' .mysqli_error());
}
