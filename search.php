<?php
// Start the session
	session_set_cookie_params(3600,"/");
	session_start();
	$db = mysqli_connect("localhost",'root','121');
	$query = "use fdx";
	mysqli_query($db, $query);
	$search = $_GET['search'];
	$query = "Select * from products where product_description like '%a%'";
	$res = mysqli_query($db,$query);
	while($a = mysqli_fetch_assoc($res)){
		echo "Jai HO";
	}
	echo "Jai hosdwqd";
?>