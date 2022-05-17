<?php  

include "DB_connect.php";

$sql = "SELECT cases.Case_id,vahicle.Number,vahicle.Type,vahicle.Driver,cases.law_id1,cases.Total_fine
FROM vahicle CROSS JOIN cases ON vahicle.Number = cases.Vahicle_Number
WHERE cases.Total_fine =(SELECT MAX(Total_fine)
               FROM cases)";
$result = mysqli_query($conn, $sql);