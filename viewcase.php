
<?
php
include 'DB_connect.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv='X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Crud operation</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">

</head>
<body>
<div class="container">
<button class="btn btn-primary my-5"><a href="user.php"class="text-light">Add user</a>


</button>
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Handle</th>
    </tr>
  </thead>
  <tbody>
<?php
$sql="Select * from 'crud'";
$result=mysqli_query($con,$sql);
if($result){

while($row=mysqli_fetch_assoc($result)){
$id=$row['id'];
echo'<tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>


<td><button class="btn btn-primary"><a href="ubdate.php" class="text-light">ubdate</a></batton>
<button class="btn btn-danger><a href="delete.php?deleteteid='.$id'" class="text-light>delete</a></batton>

</td>
    </tr>';

}
}

?>
<td><button><a href="">ubdate</a></batton>
<button><a href="">delete</a></batton>

</td>
    
  </tbody>
</table>
</div>

</body>
</html>
