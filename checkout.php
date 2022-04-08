<?php session_start();
include 'include/config.php';
include('header.php');
if(isset($_SESSION['em']))
{
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>Check Out</title>

	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="assets/css/responsive.css">

</head>
<body>
<div class="billing-address-form">
                                    
     <form action="checkout_db.php" method="post" enctype="multipart/form-data">
        <!--PreLoader-->
        <div class="loader">
            <div class="loader-inner">
                <div class="circle"></div>
            </div>
        </div>
        <!--PreLoader Ends-->
        
        <!-- header -->
        <?php //include('header.php'); ?>
        <!-- end header -->

        
        <!-- check out section -->
        <div class="checkout-section mt-150 mb-150">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="checkout-accordion-wrap">
                            <div class="accordion" id="accordionExample">
                            <div class="card single-accordion">
                                <div class="card-header" id="headingOne">
                                <h5 class="mb-0">
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    Billing Address
                                    </button>
                                </h5>
                                </div>

                                <?php 
                                $email = $_SESSION['em'];
                                    $fetchdata = mysqli_query($conn, "select * from users where email='$email'");
                                    $f = mysqli_fetch_assoc($fetchdata);
                                    
                                ?>

                                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                <div class="card-body">
                                        
                                            <p><input type="text" placeholder="Name" name="nm" value="<?php echo $f["username"]; ?>" required></p>
                                            <p><input type="email" placeholder="Email" name="email"  value="<?php echo $f["email"]; ?>" required></p>
                                            <p><input type="text" placeholder="City" name="ct"  required></p>
                                            <p><input type="text" placeholder="Address" name="address" required></p>
                                            <p><input type="tel" placeholder="Phone" name="phone"  value="<?php echo $f["contactno"]; ?>" maxlength="10" pattern="[0-9]+" required></p>
                                    
                                    
                                </div>
                                </div>
                            </div>
                            </div>

                        </div>
                    </div>

                    <div class="col-lg-4">
                            <div class="order-details-wrap">
                                <table class="order-details">
                                    <thead>
                                        <tr>
                                            <th>Your order Details</th>
                                            <th>Price</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody class="order-details-body">
                                        <tr>
                                            <td>Product</td>
                                            <td>Total</td>
                                        </tr>
                                        <?php
                                        $userid=$_SESSION['userid'];

                                        $test = mysqli_query($con,"select * from cart_item where user_id='$userid'");
                                        
                                            while ($row=mysqli_fetch_array($test)) {
                                        ?>
                                        <tr>
                                            <td><?php echo $row['pro_name'];?> X <?php echo $row["pro_qty"]; ?></td>
                                            <td>₹<?php echo $row['total'];?></td>
                                        </tr>
                                        <?php } ?>
                                    </tbody>
                                    <tbody class="checkout-details">
                                        <!-- <tr>
                                            <td>Subtotal</td>
                                            <td>$190</td>
                                        </tr>
                                        <tr>
                                            <td>Shipping</td>
                                            <td>$50</td>
                                        </tr> -->
                                        <?php
                                                $userid=$_SESSION['userid'];

                                                $test = mysqli_query($con,"select * from cart_item where user_id='$userid'");
                                                $tes = 0;
                                                while ($row=mysqli_fetch_array($test)) {
                                                $tes+=$row['total'];
                                                }
                                            ?>	
                                        <tr>
                                            <td>Total</td>
                                            <td>₹<?php echo $tes; ?></td>
                                        </tr>
                                    </tbody>
                                    
                                </table>
                                <!-- <a href="#" class="boxed-btn">Place Order</a> -->
                                <input type="submit" name="submit"  value="Place Order" style="margin:10px;" >
                            </div>
                        </div>
                </div>
            </div>
        </div>
        <!-- end check out section -->

        <!-- logo carousel -->
        <div class="logo-carousel-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="logo-carousel-inner">
                            <div class="single-logo-item">
                                <img src="assets/img/company-logos/1.png" alt="">
                            </div>
                            <div class="single-logo-item">
                                <img src="assets/img/company-logos/2.png" alt="">
                            </div>
                            <div class="single-logo-item">
                                <img src="assets/img/company-logos/3.png" alt="">
                            </div>
                            <div class="single-logo-item">
                                <img src="assets/img/company-logos/4.png" alt="">
                            </div>
                            <div class="single-logo-item">
                                <img src="assets/img/company-logos/5.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end logo carousel -->

        <!-- footer -->
        <?php include('footer.php'); ?>
        <!-- end footer -->
        
        <!-- copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <p>Copyrights &copy; 2019 - <a href="https://imransdesign.com/">Imran Hossain</a>,  All Rights Reserved.<br>
                            Distributed By - <a href="https://themewagon.com/">Themewagon</a>
                        </p>
                    </div>
                    <div class="col-lg-6 text-right col-md-12">
                        <div class="social-icons">
                            <ul>
                                <li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fab fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <!-- end copyright -->
        
    </form> 
</div>   
        <!-- jquery -->
        <script src="assets/js/jquery-1.11.3.min.js"></script>
        <!-- bootstrap -->
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <!-- count down -->
        <script src="assets/js/jquery.countdown.js"></script>
        <!-- isotope -->
        <script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
        <!-- waypoints -->
        <script src="assets/js/waypoints.js"></script>
        <!-- owl carousel -->
        <script src="assets/js/owl.carousel.min.js"></script>
        <!-- magnific popup -->
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <!-- mean menu -->
        <script src="assets/js/jquery.meanmenu.min.js"></script>
        <!-- sticker js -->
        <script src="assets/js/sticker.js"></script>
        <!-- main js -->
        <script src="assets/js/main.js"></script>
     
</body>
</html>
<?php
}
else
{
	$ok = $_SERVER['PHP_SELF'];
	header('location:login.php?.$ok.');
}
?>