<?php
session_start();

//called for the first time the page is loaded to show the spot list
require_once 'Model/SpotModel.php';

$zilla_id = $_GET['id'];	
$spotModel = new SpotModel();
$spotList = $spotModel->getSpotList($zilla_id);

$spotDetail ="";

//called for showing the details of a specific spot 
if(isset($_GET['spot_id'])){
	require_once 'Model/SpotModel.php';

	$id = $_GET['spot_id'];
	require_once 'spotImage.php';
	require_once 'spotDetail.php';

	if (isset($_COOKIE['spot_id']))
    	setcookie('spot_id', '', time()- 36000, "/");
}