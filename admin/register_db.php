<?php session_start();
include ("include/config.php");

//echo "hello";
if(isset($_POST['submit'])){

	$username = $_POST['uname'];
	$email = $_POST['email'];
	$phone = $_POST['mobno'];
	$password = $_POST['password'];

	$sql = "INSERT INTO admin (username,email,password,contactno) VALUES ('$username', '$email','$password','$phone')";
  $conn->query($sql);  	
  $_SESSION['signup_success'] = 'You are successfully signup..please login username and password';
  header("location:index.php");
}

?>