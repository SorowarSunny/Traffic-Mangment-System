<?php 

include 'DB_connect.php';

error_reporting(0);

session_start();


if (isset($_POST['submit'])) {
	$Numbers = $_POST['Numbers'];
	$Expires = $_POST['Expires'];
  $CVC = $_POST['CVC'];
  $Names = $_POST['Names'];
	

	
	

	
		if (!$result->num_rows > 0) {
			$sql = "INSERT INTO card (Numbers,Expires,CVC,Names)
					VALUES ('$Numbers','$Expires',$CVC,'$Names')";
			$result = mysqli_query($conn, $sql);
			if ($result) {
				echo "<script>alert('Case Payment Successful')</script>";
        
				
			} else {
				echo "<script>alert('Woops! Case Payment Failed')</script>";
			}
		} 
	
}

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" href="">

	<link rel="stylesheet" type="text/css" href="payment.css">

	<title>Payment Gateway </title>
</head>
<body>
	<div class="container">
		<form action="" method="POST" class="login-email">
            <p class="login-text" style="font-size: 2rem; font-weight: 800;">Payment Gateway</p>
			<div class="input-group">
				<input type="text" placeholder="Enter Card Number" name="Numbers" value="<?php echo $Numbers; ?>" required>
			</div>
			<div class="input-group">
				<input type="text" placeholder="MM/YY" name="Expires" value="<?php echo $Expires; ?>" required>
			</div>
			
      <div class="input-group">
				<input type="text" placeholder="CVC/CVV" name="CVC" value="<?php echo $CVC; ?>" required>
			</div>
			
      <div class="input-group">
				<input type="text" placeholder="Card Holder Name" name="Names" value="<?php echo $Names; ?>" required>
			</div>
            
			
<div class="input-group">
				<button name="submit" class="btn">Pay</button>
			</div>
			
		</form>
	</div>
</body>
</html>



