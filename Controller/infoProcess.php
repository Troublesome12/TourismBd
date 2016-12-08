<?php 

if(isset($_FILES['file'])) {
	$image_size = getimagesize($_FILES["file"]["tmp_name"]);
    // Check if image file is a actual image or fake image
    if($image_size == true) {
		$target_file = '../Public/img/'.$user_id;
		$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
        // Allow certain file formats
		if($imageFileType == "jpg" || $imageFileType == "png" || $imageFileType == "jpeg" ||
		   	$imageFileType == "JPG" || $imageFileType == "PNG" || $imageFileType == "JPEG") {
			// Check file size
			if ($_FILES["file"]["size"] < 500000) {
			    move_uploaded_file($_FILES['file']['tmp_name'], $target_file);
			    echo "1";
			} else {
				echo "Sorry, your file is too large!";
			}
		} else{
			echo "Sorry, only JPG, JPEG & PNG files are allowed!";
    	}
    } else {
        echo "File is not an image!";
    }
} else {
session_start();

if (!isset($_SESSION['email']) && !isset($_COOKIE['email'])) {
    header('Location:index.php');
    exit;
}

require_once 'Model/UserModel.php';
$user_email = $_SESSION['email'];

$userModel = new UserModel();
$user_id = $userModel->getUserId($user_email);
$user = $userModel->getUserInfo($user_id);
}
