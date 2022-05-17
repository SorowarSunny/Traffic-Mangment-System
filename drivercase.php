<?php include "Subquery/drivercase.php"; ?>
<!DOCTYPE html>
<html>
<head>
	<title>Drivers cases </title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<div class="box">
			<h4 class="display-4 text-center">Drivers with cases</h4><br>
			<?php if (isset($_GET['success'])) { ?>
		    <div class="alert alert-success" role="alert">
			  <?php echo $_GET['success']; ?>
		    </div>
		    <?php } ?>
			<?php if (mysqli_num_rows($result)) { ?>
			<table class="table table-striped">
			  <thead>
			    <tr>
			      
			      <th scope="col">License No </th>
                  <th scope="col">Names </th>
                  <th scope="col">Phone </th>
                 
                  <th scope="col">City </th>
                  <th scope="col">Validity</th>
                  <th scope="col">Type </th>
                  <th scope="col">License Status</th>
                  <th scope="col">Total Cases </th>
                  

			    </tr>
			  </thead>
			  <tbody>
			  	<?php 
			  	   $i = 0;
			  	   while($rows = mysqli_fetch_assoc($result)){
			  	   $i++;
			  	 ?>
			    <tr>
			     
			      <td><?=$rows['License_No']?></td>
			      <td><?=$rows['Names']; ?></td>
                  <td><?=$rows['Phone']?></td>
                  <td><?=$rows['City']?></td>
                  <td><?=$rows['Validity']; ?></td>
                  <td><?=$rows['Type']?></td>
                  <td><?=$rows['License_Status']?></td>
                  <td><?=$rows['Total_Cases']?></td>
			    
			    </tr>
			    <?php } ?>
			  </tbody>
			</table>
			<?php } ?>
			<div class="link-left">
				
			</div>
		</div>
	</div>
</body>
</html>