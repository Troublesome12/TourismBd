<?php

//called for showing the details of the first spot 
if(isset($_COOKIE['spot_id'])){

	$id = $_COOKIE['spot_id'];
	require_once './Controller/spotImage.php';
	require_once './Controller/spotDetail.php';	
}