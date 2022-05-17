<?php  

include "DB_connect.php";

$sql = "SELECT cases.Case_id,vahicle.Number,vahicle.Type,vahicle.Driver,cases.law_id1,cases.Total_fine
FROM vahicle CROSS JOIN cases ON vahicle.Number = cases.Vahicle_Number
WHERE cases.law_id1 LIKE '%+%'";
$result = mysqli_query($conn, $sql);