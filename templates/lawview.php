<?php  

include "DB_connect.php";

$sql = "SELECT * FROM law ORDER BY Vehicle_Class ASC";
$result = mysqli_query($conn, $sql);