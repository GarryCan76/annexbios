<?php
$servername = 'localhost';
$username = 'root';
$password = '';
$dbName = 'module_11';


$connection = mysqli_connect($servername, $username, $password, $dbName);

if (!$connection){
    die('Database connection error : ' .mysqli_error());
}
echo "succes!";