<?php

session_start();

if (isset($_SESSION['email']) || isset($_COOKIE['email'])) {
    header('Location:index.php');
    exit;
}

include 'Template/top.php'; ?>

<!-- css for login page -->
<link rel="stylesheet" type="text/css" href="Asset/css/login.css" />

<body>
    <div class="container">
        <div class="form">
            <form class="register-form">
                <h1>রেজিস্ট্রেশন</h1>
                <input id="reg_name" type="text" placeholder="নাম" required >
                <input id="reg_email" type="email" placeholder="ইমেইল" required>
                <input id="reg_password" type="password" placeholder="পাসওয়ার্ড" required>
                <input id="reg_password_confirme" type="password" placeholder="কনফার্ম পাসওয়ার্ড" required>
                <button onclick="reg_form_submit(); return false;">রেজিস্টার</button>
                <p class="option">আপনার অ্যাকাউন্ট আছে? <a href="#">লগ ইন</a></p>
            </form>
            <form class="login-form">
                <h1>লগ ইন</h1>
                <input id="login_email" type="email" placeholder="ইমেইল" required>
                <input id="login_password" type="password" placeholder="পাসওয়ার্ড" required>
                <input id="login_remember" type="checkbox">
                <label >আমাকে মনে রাখুন</label>
                <button onclick="login_form_submit(); return false;">লগ ইন</button>
                <p class="option">আপনার অ্যাকাউন্ট নেই? <a href="#">রেজিস্ট্রেশন করুন</a></p>
            </form>
            <div class="message hidden">আপনার পাসওয়ার্ড সঠিক নয়</div>
        </div>    
    </div>
    <!-- jQuery -->
    <script type="text/javascript" src="Asset/js/jquery-3.1.0.min.js"></script>
    <script type="text/javascript" src="Asset/js/login.js"></script>
</body>

</html>
