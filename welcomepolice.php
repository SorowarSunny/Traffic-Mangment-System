<?php 
include 'DB_connect.php';
session_start();

if (!isset($_SESSION['username'])) {
    header("Location:loginpolice.php");
}

?>

<!DOCTYPE html>
<html lang="en">
<?php include('templates/policehead.php') ;?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
</head>
<body>
    <?php echo "<h1>Welcome " . $_SESSION['username'] . "</h1>"; ?>
    
</body>
</html>