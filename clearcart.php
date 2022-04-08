<?php 
include ("include/config.php");
$id = $_GET['id'];
//echo $id;
mysqli_query($con,"DELETE FROM cart_item WHERE user_id='$id'");

header("location:cart.php");
?>