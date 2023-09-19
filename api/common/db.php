<?php
$servername = 'localhost';
$username = 'root';
$password = '';
$dbName = 'AnnexBios';

$connection = mysqli_connect($servername, $username, $password, $dbName);

if (!$connection){
    die('Database connection error : ' .mysqli_error());
}
