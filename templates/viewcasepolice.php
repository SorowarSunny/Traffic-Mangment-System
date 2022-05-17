<?php  

include "DB_connect.php";

$sql = "SELECT * FROM cases ORDER BY Case_id  DESC";
$result = mysqli_query($conn, $sql);