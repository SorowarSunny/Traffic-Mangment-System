<?php 

include 'DB_connect.php';

error_reporting(0);

session_start();


if (isset($_POST['submit'])) {
	$case_id = $_POST['case_id'];
	$Total_Fine = $_POST['Total_Fine'];
	

	
	

	$sql = "SELECT * FROM case_payments WHERE case_id='$case_id'";
		$result = mysqli_query($conn, $sql);
		if (!$result->num_rows > 0) {
			$sql = "INSERT INTO case_payments (case_id,Total_Fine)
					VALUES ($case_id,$Total_Fine)";
			$result = mysqli_query($conn, $sql);
			if ($result) {
			$sql = " UPDATE cases
			SET Case_Status ='Closed'
			 WHERE case_id='$case_id' ";
			
			$result = mysqli_query($conn, $sql);
				header("Location: paymentgateway.php");
				
			} else {
				echo "<script>alert('Woops! Case Payment Failed')</script>";
			}
			
		} 
		else {
			echo "<script>alert('Case is already closed')</script>";
		}
	
}

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="style.css">

	<title>Case payment </title>
</head>
<body>
	<div class="container">
		<form action="" method="POST" class="login-email">
            <p class="login-text" style="font-size: 2rem; font-weight: 800;">Case Payment </p>
			<div class="input-group">
				<input type="text" placeholder=" Enter Case id" name="case_id" value="<?php echo $case_id; ?>" required>
			</div>
			<div class="input-group">
				<input type="text" placeholder="Enter fine amount " name="Total_Fine" value="<?php echo $Total_Fine; ?>" required>
			</div>
			
			
            
			
<div class="input-group">
				<button name="submit" class="btn">Pay</button>
			</div>
			
		</form>
	</div>
</body>
</html>



