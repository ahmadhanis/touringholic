<?php
$servername = "localhost";
$username   = "slumber6_touringholicadmin";
$password   = "*uBgYl6Z1KCD";
$dbname     = "slumber6_touringholicdb";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>