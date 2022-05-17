<?php include "Subquery/mutiplecase.php"; ?>
<!DOCTYPE html>
<html>
<head>
	<title>Multilaw violation </title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<div class="box">
			<h4 class="display-4 text-center">Cases with Mutiple Law Violation</h4><br>
			<?php if (isset($_GET['success'])) { ?>
		    <div class="alert alert-success" role="alert">
			  <?php echo $_GET['success']; ?>
		    </div>
		    <?php } ?>
			<?php if (mysqli_num_rows($result)) { ?>
			<table class="table table-striped">
			  <thead>
			    <tr>
			      
			      <th scope="col">Case id </th>
                  <th scope="col">Vahicle Number  </th>
                  <th scope="col">Type </th>
                 
                  <th scope="col">Drivers license NO </th>
                  <th scope="col">law IDs </th>
                  <th scope="col">Total fine </th>
                  

			    </tr>
			  </thead>
			  <tbody>
			  	<?php 
			  	   $i = 0;
			  	   while($rows = mysqli_fetch_assoc($result)){
			  	   $i++;
			  	 ?>
			    <tr>
			     
			      <td><?=$rows['Case_id']?></td>
			      <td><?php echo $rows['Number']; ?></td>
                  <td><?=$rows['Type']?></td>
                  <td><?=$rows['Driver']?></td>
                  <td><?=$rows['law_id1']?></td>
                  <td><?=$rows['Total_fine']?></td>
			    
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