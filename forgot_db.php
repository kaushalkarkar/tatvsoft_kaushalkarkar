<?php session_start();
include ("include/config.php");

if(isset($_POST['submit'])){

	$email = $_POST['email'];
	$password = $_POST['password1'];
	$con_pass = $_POST['password2'];

	$sql = "UPDATE users SET password='$password' WHERE email='$email'";
  $conn->query($sql);  	
  $_SESSION['signup_success'] = 'You are successfully forgoted password..please login username and password';
  header("location:login.php");
}
?>