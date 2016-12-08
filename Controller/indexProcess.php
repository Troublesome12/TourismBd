<?php

session_start();

if (isset($_COOKIE['spot_id']))
    setcookie('spot_id', '', time()- 36000, "/");

if(isset($_COOKIE['email'])){
    $_SESSION['email'] = $_COOKIE['email'];
}

include 'Template/top.php'; 

require_once 'Model/ZillaModel.php';

$zillaModel = new ZillaModel();
$zillaList = $zillaModel->getZillaList();