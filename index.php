<?php include ( "inc/connect.inc.php" ); ?>
<?php 
ob_start();
session_start();
if (!isset($_SESSION['user_login'])) {
	$user = "";
}
else {
	$user = $_SESSION['user_login'];
	$result = mysqli_query($con, "SELECT * FROM user WHERE id='$user'");
	$get_user_email = mysqli_fetch_assoc($result);
	$uname_db = $get_user_email != null ? $get_user_email['firstName'] : null;
}
?>
<!DOCTYPE html>
<html>
	<head>
		<title>ECart Shoping</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<script src="/js/homeslideshow.js"></script>

		
	</head>
			<style>

		.mySlides {display: none;}
		img {vertical-align: middle;}

		/* Slideshow container */
		.slideshow-container {
		max-width: 1000px;
		position: relative;
		margin: auto;
		}

		/* Next & previous buttons */
		.prev, .next {
		cursor: pointer;
		position: absolute;
		top: 50%;
		width: auto;
		padding: 16px;
		margin-top: -22px;
		color: white;
		font-weight: bold;
		font-size: 18px;
		transition: 0.6s ease;
		border-radius: 0 3px 3px 0;
		user-select: none;
		}

		/* Position the "next button" to the right */
		.next {
		right: 0;
		border-radius: 3px 0 0 3px;
		}

		/* On hover, add a black background color with a little bit see-through */
		.prev:hover, .next:hover {
		background-color: rgba(0,0,0,0.8);
		}

		/* Caption text */
		.text {
		color: black;
		font-size: 15px;
		padding: 8px 12px;
		position: absolute;
		bottom: 8px;
		width: 100%;
		text-align: center;
		}

		/* Number text (1/3 etc) */
		.numbertext {
		color: black;
		font-size: 12px;
		padding: 8px 12px;
		position: absolute;
		top: 0;
		}

		/* The dots/bullets/indicators */
		.dot {
		cursor: pointer;
		height: 15px;
		width: 15px;
		margin: 0 2px;
		background-color: #bbb;
		border-radius: 50%;
		display: inline-block;
		transition: background-color 0.6s ease;
		}

		.active, .dot:hover {
		background-color: #717171;
		}

		/* Fading animation */
		.fade {
		animation-name:fade;
		animation-duration: 1.5s;
		}

		@keyframes fade {
		from {opacity: 1} 
		to {opacity: 1}
		}

		/* On smaller screens, decrease text size */
		@media only screen and (max-width: 300px) {
		.prev, .next,.text {font-size: 11px}
		}

		/* Centered text */
		.textcentered {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		}
		</style>

	<script>
		let slideIndex = 1;
		showSlides(slideIndex);

		function plusSlides(n) {
		showSlides(slideIndex += n);
		}

		function currentSlide(n) {
		showSlides(slideIndex = n);
		}

		function showSlides(n) {
		let i;
		let slides = document.getElementsByClassName("mySlides");
		let dots = document.getElementsByClassName("dot");
		if (n > slides.length) {slideIndex = 1}    
		if (n < 1) {slideIndex = slides.length}
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";  
		}
		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		}
		slides[slideIndex-1].style.display = "block";  
		dots[slideIndex-1].className += " active";
		}

	</script>
	<body style="min-width: 980px;">
		<div class="homepageheader" style="position: relative;">
			<div class="signinButton loginButton">
				<div class="uiloginbutton signinButton loginButton" style="margin-right: 40px;">
					<?php 
						if ($user!="") {
							echo '<a style="text-decoration: none; color: #fff;" href="logout.php">LOG OUT</a>';
						}
						else {
							echo '<a style="color: #fff; text-decoration: none;" href="signin.php">SIGN UP</a>';
						}
					 ?>
					
				</div>
				<div class="uiloginbutton signinButton loginButton" style="">
					<?php 
						if ($user!="") {
							echo '<a style="text-decoration: none; color: #fff;" href="profile.php?uid='.$user.'">Hi '.$uname_db.'</a>';
						}
						else {
							echo '<a style="text-decoration: none; color: #fff;" href="login.php">LOG IN</a>';
						}
					 ?>
				</div>
			</div>
			<div style="float: left; margin: 5px 0px 0px 23px;">
				<a href="index.php">
					<img style=" height: 75px; width: 130px;" src="image/cart.png">
				</a>
			</div>
			<div class="">
				<div id="srcheader">
					<form id="newsearch" method="get" action="search.php">
					        <input type="text" class="srctextinput" name="keywords" size="21" maxlength="120"  placeholder="Search ECart..."><input type="submit" value="search" class="srcbutton" >
					</form>
				<div class="srcclear"></div>
				</div>
			</div>
		</div>
		<div class="home-welcome">
			<div class="home-welcome-text" style="height: 60px; ">
				<div style="padding-top: 10px;">
					<div style=" background-color: #fff;">
						<h2 style="margin: 0px;">ECart Shoping</h2>
					</div>
				</div>
			</div>
		</div>

		<div class="slideshow-container">

			<div class="mySlides" style="display:block;" >
			<div class="numbertext">1 / 3</div>
			<img src="image/slideimage1.jpg" style="width:100%;" >
			<div class="text">Head Phone</div>
		</div>

		<div class="mySlides">
			<div class="numbertext">2 / 3</div>
			<img src="image/slideimage2.jpg" style="width:100%">
			<div class="text">Mobiles</div>
		</div>

		<div class="mySlides">
			<div class="numbertext">3 / 3</div>
			<img src="image/slideimage3.jpg" style="width:100%">
			<div class="text">Home Appliance</div>
		</div>

		<a class="prev" onclick="plusSlides(-1)">❮</a>
		<a class="next" onclick="plusSlides(1)">❯</a>

		</div>
		<br>
		<div style="text-align:center">
			<span class="dot" onclick="currentSlide(1)"></span> 
			<span class="dot" onclick="currentSlide(2)"></span> 
			<span class="dot" onclick="currentSlide(3)"></span> 
		</div>
		<div class="home-prodlist">
			<div>
				<h3 style="text-align: center;">Products Category</h3>
			</div>
			<div style="padding: 20px 30px; width: 85%; margin: 0 auto;">
				<ul style="float: left;">
					<li style="float: left; padding: 25px;">
						<div class="home-prodlist-img"><a href="OurProducts/Mobile.php">
							<img src="./image/product/Mobile.jpg" class="home-prodlist-imgi">
							</a>
						</div>

					</li>
				</ul>
				<ul style="float: left;">
					<li style="float: left; padding: 25px;">
						<div class="home-prodlist-img"><a href="OurProducts/Laptop.php">
							<img src="./image/product/laptops.jpg" class="home-prodlist-imgi">
							</a>
						</div>
					</li>
				</ul>
				<ul style="float: left;">
					<li style="float: left; padding: 25px;">
						<div class="home-prodlist-img"><a href="OurProducts/Headphones.php">
							<img src="./image/product/headphones.jpg" class="home-prodlist-imgi"></a>
						</div>
					</li>
				</ul>
				<ul style="float: left;">
					<li style="float: left; padding: 25px;">
						<div class="home-prodlist-img"><a href="OurProducts/Tv.php">
							<img src="./image/product/tvs.jpg" class="home-prodlist-imgi"></a>
						</div>
					</li>
				</ul>
				<ul style="float: left;">
					<li style="float: left; padding: 25px;">
						<div class="home-prodlist-img"><a href="OurProducts/Alexa.php">
							<img src="./image/product/alexa.jpg" class="home-prodlist-imgi"></a>
						</div>
					</li>
				</ul>
				<ul style="float: left;">
					<li style="float: left; padding: 25px;">
						<div class="home-prodlist-img"><a href="OurProducts/Ac.php">
							<img src="./image/product/ac.jpg" class="home-prodlist-imgi"></a>
						</div>
					</li>
				</ul>
					</li>
				</ul>
			</div>			
		</div>
	</body>
</html>