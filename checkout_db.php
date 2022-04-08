<?php 
include 'smtpmail/index1.php';
?>

<?php session_start();
include ("include/config.php");


if(isset($_POST['submit'])){

$userid=$_SESSION['userid'];
$usernm= $_POST['nm'];
$email=$_POST['email'];
$address=$_POST['address'];
$phone=$_POST['phone'];
$city=$_POST['ct'];

echo $userid;
 echo $usernm;
 echo $email;
 echo $address;
 echo $phone;
$s= mysqli_query($conn,"select * from  cart_item where user_id='$userid'");
	while($r = mysqli_fetch_array($s))
	{
		$p_id = $r['pro_id'];
		$p_img = $r['pro_img'];
		$p_qty = $r['pro_qty'];
		$p_total = $r['total'];
		

		mysqli_query($conn,"INSERT INTO customer(name, email, address, phone, proqty, prodimg, total, city, user_id, pro_id) VALUES ('$usernm','$email','$address','$phone','$p_qty','$p_img','$p_total','$city','$userid','$p_id')");
	}
}
header("location:order.php");
?>