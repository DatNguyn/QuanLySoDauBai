<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "quanlysodaubai";
$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) {
    echo "Kết nối cơ sở dữ liệu thất bại" . $conn->connect_error;
}
