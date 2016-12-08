<?php

session_start();

if (isset($_SESSION['email']))
    session_destroy();

if (isset($_COOKIE['email']))
    setcookie('email', '', time()- 36000, "/");

if (isset($_COOKIE['spot_id']))
    setcookie('spot_id', '', time()- 36000, "/");

header("Location:../index.php");