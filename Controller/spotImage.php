<?php 
	require_once 'Model/ImageModel.php';

	if(isset($_GET['spot_id']))
		$id = $_GET['spot_id'];
	else
		$id = $_COOKIE['spot_id'];

	$imageModel = new ImageModel();
	$imageList = $imageModel->getImageList($id);