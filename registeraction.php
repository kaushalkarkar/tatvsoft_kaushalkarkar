<?php
include ("include/config.php");
//session_start();
//echo "<pre>"; print_r($_POST); exit;
if(isset($_POST['submit'])){
	//  echo "<pre>"; print_r($_POST); exit;
	$username = $_POST['uname'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	$phoneno = $_POST['phone'];

	$sql = "INSERT INTO  users (username,email,password,contactno) VALUES ('$username','$email','$password','$phoneno')";
  	
  	$conn->query($sql);  	
	$_SESSION['signup_success'] = 'You are successfully signup..please login username and password';
  header("location:index.php");
}

?>