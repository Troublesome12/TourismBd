<?php

session_start();

//user has sent request for login
if (isset($_POST['login_email']) && isset($_POST['login_password'])) {
    $email = $_POST['login_email'];
    $password = $_POST['login_password'];
    $remember = $_POST['login_remember'];
    

    //sha1 encryption
    $password = sha1($password);

    require_once '../Model/UserModel.php';

    $userModel = new UserModel();
    $count = $userModel->checkUser($email, $password);
    
    if ($count == 1) { 
        $_SESSION['email'] = $email;
        if ($remember) {
            $expiry = time() + (86400 * 30);    //30 days
            setcookie('email', $email, $expiry, "/", "", "", TRUE);
        }
        echo $count;
    } else
        echo 0;
} 

//user has sent a request for signing up
else if(isset($_POST['reg_name']) && isset($_POST['reg_email']) && isset($_POST['reg_password'])) {
    $name = $_POST['reg_name'];
    $email = $_POST['reg_email'];
    $password = $_POST['reg_password'];
    $image_path = "Asset/img/avatar.jpg";

    //sha1 encryption
    $password = sha1($password);

    require_once '../Model/UserModel.php';

    $userModel = new UserModel();
    $result = $userModel->saveUser($name, $email, $password, $image_path);
    if($result)
        echo 1; //successful
    else
        echo 0; //unsuccessful
}

//user is tyrping mail address for registration & checking if it's already exist or not
else if (isset($_POST['reg_email'])) {
    $email = $_POST['reg_email'];

    require_once '../Model/UserModel.php';

    $userModel = new UserModel();
    $count = $userModel->checkEmail($email);
    
    if ($count == 1) {
        echo $count;
    } else
        echo 0;
}