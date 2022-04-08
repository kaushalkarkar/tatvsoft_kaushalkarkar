<?php //session_start();

?>
<div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-sm-12 text-center">
					<div class="main-menu-wrap">
						<!-- logo -->
						<div class="site-logo">
							<a href="index.php">
								<img src="assets/img/kk1.jpg" alt="tatvsoft">
							</a>
						</div>
						<!-- logo -->

						<!-- menu start -->
						<nav class="main-menu">
							<ul>
								<li class="current-list-item">
									<a href="index.php" style="color: black;">Home</a>
								</li>
								<li><a href="shop.php" style="color: black;">Shop</a></li>
								<li><a href="news.php" style="color: black;">News</a>
								<li><a href="about.php" style="color: black;">About</a></li>
								</li>
								<li><a href="contact.php" style="color: black;">Contact</a></li>
								
								<li>
									<div class="header-icons">
										<a title="cart" class="shopping-cart" href="cart.php" style="color: black;"><i class="fas fa-shopping-cart"></i></a>
										<?php 
                                        if(isset($_SESSION['em']))
                                        {
                                    ?>
                                    
                                        <a title="logout" href="logout.php"><i  class="fas fa-power-off fa-lg" style="color: black;"></i></a>
                                    <?php }else{ ?>
                                    <a title="Login/Register" href="index.php"><i class="fas fa-user-circle fa-lg"></i></a>
                                    <?php } ?>
										<!-- <a class="login-registre" href="login.php"><i class="fas fa-user-circle fa-lg"></i></a> -->
										<!-- <a class="logout" href="#"><i class="fas fa-power-off fa-lg"></i></a> -->
									</div>
								</li>
							</ul>
						</nav>
						
						<div class="mobile-menu"></div>
						<!-- menu end -->
					</div>
				</div>
			</div>
		</div>
	</div>