<?php

session_start();

require_once '../Model/UserModel.php';
require_once '../Model/CommentModel.php';

if (isset($_POST['spot_id']) && isset($_POST['comment'])) {
	$spot_id = $_POST['spot_id'];
	$comment = $_POST['comment'];
	$user_email = $_SESSION['email'];

    $userModel = new UserModel();
    $user_id = $userModel->getUserId($user_email);

    $commentModel = new CommentModel();
    $result = $commentModel->submitComment($spot_id, $user_id, $comment);

    if($result){
    	echo 1;		//successful
    } else
    	echo 0;		//unsuccessful
}