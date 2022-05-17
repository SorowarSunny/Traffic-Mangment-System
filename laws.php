<?php include "templates/lawview.php"; ?>
<!DOCTYPE html>
<html>
<head>
	<title>Law view</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<div class="box">
			<h4 class="display-4 text-center">Laws</h4><br>
			<?php if (isset($_GET['success'])) { ?>
		    <div class="alert alert-success" role="alert">
			  <?php echo $_GET['success']; ?>
		    </div>
		    <?php } ?>
			<?php if (mysqli_num_rows($result)) { ?>
			<table class="table table-striped">
			  <thead>
			    <tr>
			      
			      <th scope="col">lawid  </th>
                  <th scope="col">Decription </th>
                  <th scope="col">Fine </th>
                  <th scope="col">Vehicle_Class </th>
                  

			    </tr>
			  </thead>
			  <tbody>
			  	<?php 
			  	   $i = 0;
			  	   while($rows = mysqli_fetch_assoc($result)){
			  	   $i++;
			  	 ?>
			    <tr>
			     
			      
			      
                  <td><?=$rows['lawid']?></td>
                  <td><?=$rows['Decription']?></td>
                  <td><?=$rows['Fine']?></td>
                  <td><?=$rows['Vehicle_Class']?></td>
			    
			    </tr>
			    <?php } ?>
			  </tbody>
			</table>
			<?php } ?>
			<div class="link-right">
				
			</div>
		</div>
	</div>
</body>
</html>