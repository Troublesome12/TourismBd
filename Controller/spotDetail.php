<?php 
	require_once 'Model/SpotModel.php';
	require_once 'Model/CommentModel.php';

	if(isset($_GET['spot_id']))
		$id = $_GET['spot_id'];
	else
		$id = $_COOKIE['spot_id'];

	$spotModel = new SpotModel();
	$spotDetail = $spotModel->getDescription($id);

	//get all the comments for selected spot
	$commentModel = new CommentModel();
	$spotComments = $commentModel->getCommentList($id);