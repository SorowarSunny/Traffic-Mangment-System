<?php  

include "DB_connect.php";

$sql = "SELECT License_No,Names,Phone,City,Validity,Type,License_Status,Total_Cases
FROM driver
WHERE Total_Cases > 0
ORDER BY Total_Cases DESC;";
$result = mysqli_query($conn, $sql);