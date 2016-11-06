<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<?php
// Start the session
session_set_cookie_params(3600,"/");
session_start();
?>
<!DOCTYPE html>
<html>
<head>
<title>The foodExplorer</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
 <?php
	ini_set('display_errors',1);
	error_reporting(E_ALL);
		$db = mysqli_connect("localhost",'root','121');
		$query = "use fdx";
		mysqli_query($db, $query);
		$query = "show tables";
			//echo $query;
		//echo mysqli_num_rows(mysqli_query($db, $query));
		if (mysqli_connect_errno()){
 			echo "Failed to connect to MySQL: " . mysqli_connect_error();
 		}
 ?>
<!-- start-smoth-scrolling -->
</head>
	
<body>
<!-- header -->
	<?php include 'head.php' ?>
<!-- //header -->
<!-- products-breadcrumb -
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a href="index.php">Home</a><span>|</span></li>
				<li><?php
				$catid = $_GET['catid'];
				$query= "SELECT category_name from category where category.category_id = '$catid'";
				$a = mysqli_fetch_array(mysqli_query($db, $query));
				echo $a[0];
				 ?></li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->
<!-- banner -->
	<div class="banner">
		
		<?php include 'leftnav.php' ?>

		<div class="w3l_banner_nav_right">
			<div class="w3l_banner_nav_right_banner9 w3l_banner_nav_right_banner_pet">
				<h4>Your Pet Favourite Food</h4>
				<p>Sint occaecat cupidatat non proident</p>
				<a href="pd.php">Shop Now</a>
			</div>

			<div class="w3ls_w3l_banner_nav_right_grid w3ls_w3l_banner_nav_right_grid_sub" style="margin: 0 auto" >
				<h3 class="w3l_fruit"><?php echo $a[0]; ?></h3>
				<?php 
				if(isset($_SESSION["name"])){
				
				}
				$query = mysqli_query($db, "Select * from products where products.category_id='$catid'");
				
				$t=11;
				while($arr = mysqli_fetch_array($query)){ 
					//echo "<h1>". $arr[6] ."</h1>"; 
					?>
				<div class="hover14 column" style="float: left" height="200px" width="200px">
							<div class="agile_top_brand_left_grid1"  style="margin: 10px">
								<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<a href="pd.php?pid=<?php echo $arr[0];?>">
												<img height="200px" width="200px" src="<?php echo $arr[6]; ?>"/>
											</a>
											<p style="width: 190px"><?php echo $arr[1]; ?></p>
											<h4><?php echo "Rs." . $arr[3]; ?> <span><?php echo "Rs." . (1.1)*$arr[3]; ?></span></h4>
										</div>
										<div class="snipcart-details">
											<form action="#" method="post">
												<fieldset>
													<input type="hidden" name="cmd" value="_cart" />
													<input type="hidden" name="add" value="1" />
													<input type="hidden" name="business" value=" " />
													<input type="hidden" name="item_name" value="can - tuna for cats" />
													<input type="hidden" name="amount" value="8.00" />
													<input type="hidden" name="discount_amount" value="1.00" />
													<input type="hidden" name="currency_code" value="USD" />
													<input type="hidden" name="return" value=" " />
													<input type="hidden" name="cancel_return" value=" " />
													<a href="target.php?id=<?php echo $arr[0]; ?> "> 
													Add to cart</a> 
												</fieldset>
											</form>
										</div>
									</div>
								</figure>
							</div>
						</div>
						
				<?php } ?>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
<!-- //banner -->
<!-- newsletter -->
	<div class="newsletter">
		<div class="container">
			<div class="w3agile_newsletter_left">
				<h3>sign up for our newsletter</h3>
			</div>
			<div class="w3agile_newsletter_right">
				<form action="#" method="post">
					<input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
					<input type="submit" value="subscribe now">
				</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //newsletter -->
<!-- footer -->
	<?php include 'footer.php' ; ?>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<?php if(!isset($_SESSION["email_id"])){
	$_SESSION['lastloc'] = "category.php";
}
?>
</body>
</html>