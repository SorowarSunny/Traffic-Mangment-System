<?php include "templates/viewcasepolice.php"; ?>
<!DOCTYPE html>
<html>
<head>
	<title>Case Home </title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<div class="box">
			<h4 class="display-4 text-center">Cases</h4><br>
			<?php if (isset($_GET['success'])) { ?>
		    <div class="alert alert-success" role="alert">
			  <?php echo $_GET['success']; ?>
		    </div>
		    <?php } ?>
			<?php if (mysqli_num_rows($result)) { ?>
			<table class="table table-striped">
			  <thead>
			    <tr>
			      
			      <th scope="col">Case_id </th>
                  <th scope="col">Vahicle_Number </th>
                  <th scope="col">Occur_time </th>
                  <th scope="col">city </th>
                  <th scope="col">location </th>
                  <th scope="col">law ID </th>
                  <th scope="col">Total_fine </th>
                  <th scope="col">last_pay_date </th>
                  <th scope="col">Case_Status </th>

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
			      <td><?php echo $rows['Vahicle_Number']; ?></td>
                  <td><?=$rows['Occur_time']?></td>
                  <td><?=$rows['city']?></td>
                  <td><?=$rows['location']?></td>
                  <td><?=$rows['law_id1']?></td>
			      <td><?=$rows['Total_fine']?></td>
                  <td><?=$rows['last_pay_date']?></td>
			      <td><?=$rows['Case_Status']?></td>
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