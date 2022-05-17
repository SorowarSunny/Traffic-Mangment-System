<?php include "Subquery/muiticar.php"; ?>
<!DOCTYPE html>
<html>
<head>
	<title>Multi car </title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<div class="box">
			<h4 class="display-4 text-center">Multiple vahicles Owners </h4><br>
			<?php if (isset($_GET['success'])) { ?>
		    <div class="alert alert-success" role="alert">
			  <?php echo $_GET['success']; ?>
		    </div>
		    <?php } ?>
			<?php if (mysqli_num_rows($result)) { ?>
			<table class="table table-striped">
			  <thead>
			    <tr>
			      
			      <th scope="col">Name </th>
                  <th scope="col">Phone </th>
                  <th scope="col">Email </th>
                 
                  <th scope="col">City </th>
                  <th scope="col">1st Vahicle</th>
                  <th scope="col">2nd Vahicle</th>
                  

			    </tr>
			  </thead>
			  <tbody>
			  	<?php 
			  	   $i = 0;
			  	   while($rows = mysqli_fetch_assoc($result)){
			  	   $i++;
			  	 ?>
			    <tr>
			     
			      <td><?=$rows['Name']?></td>      
                  <td><?=$rows['Phone']?></td>
                  <td><?=$rows['Email']?></td>
                  <td><?=$rows['City']?></td>
                  <td><?=$rows['Vahicle_Number1'    ]?></td>
				  <td><?=$rows['Vahicle_Number2']?></td>
			    
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