<?php 

include 'DB_connect.php';

error_reporting(0);

session_start();


if (isset($_POST['submit'])) {
	$Vahicle_Number = $_POST['Vahicle_Number'];
	$city = $_POST['city'];
	$location = $_POST['location'];
	$law_id1 = $_POST['law_id1'];
	$Total_fine = $_POST['Total_fine'];
	

	
	

	
		if (!$result->num_rows > 0) {
			$sql = "INSERT INTO cases (Vahicle_Number, city, location,law_id1,Total_fine)
					VALUES ('$Vahicle_Number', '$city', '$location','$law_id1',$Total_fine)";
			$result = mysqli_query($conn, $sql);
			if ($result) {
				echo "<script>alert('Case Succefully enterd ')</script>";
				$Vahicle_Number = "";
				$city = "";
				$location = "";
				$law_id1 = "";
				$Total_fine = "";
				
			} else {
				echo "<script>alert('Woops! Something Wrong Went.')</script>";
			}
		} 
	
}

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="stylepolice.css">

	<title>Case give </title>
</head>
<body>
	<div class="container">
		<form action="" method="POST" class="login-email">
            <p class="login-text" style="font-size: 2rem; font-weight: 800;">Case Entry </p>
			<div class="input-group">
				<input type="text" placeholder=" Enter Vahicle Number" name="Vahicle_Number" value="<?php echo $Vahicle_Number; ?>" required>
			</div>
			<div class="input-group">
				<input type="text" placeholder="Enter City name " name="city" value="<?php echo $city; ?>" required>
			</div>
			<div class="input-group">
            <input type="text" placeholder="Enter case location" name="location" value="<?php echo $location; ?>" required>
            </div>
			<div class="input-group">
            <input type="text" placeholder="Enter Law id" name="law_id1" value="<?php echo $law_id1; ?>" required>
            </div>
            <div class="input-group">
            <input type="text" placeholder="Total Fine amount" name="Total_fine" value="<?php echo $Total_fine; ?>" required>
            </div>
			
			<div class="input-group">
				<button name="submit" class="btn">Submit</button>
			</div>
			<p class="login-register-text">Don't Remeber laws <a href="laws.php">Click Here</a>.</p>
		</form>
	</div>
</body>
</html>




