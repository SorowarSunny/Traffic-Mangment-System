<?php  

include "DB_connect.php";

$sql = "SELECT Name,Phone,Email,City,Vahicle_Number1,Vahicle_Number2
FROM owner
WHERE Vahicle_Number2 != 'NULL';";
$result = mysqli_query($conn, $sql);