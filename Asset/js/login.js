//form switching in login page
$('.option a').click(function() {
    $('form').animate({ height: "toggle", opacity: "toggle" }, "slow");
});

//email validation check function
function validateEmail(email) {
    var regex = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return regex.test(email);
}

$('#reg_name').blur(function() {
    var length = $(this).val().length;
    if (length >= 5) {
        $('.message').addClass('hidden');
        $(this).removeClass('wrong');
        $(this).addClass('right');
    } else {
        $(this).removeClass('right');
        $(this).addClass('wrong');
        $('.message').removeClass('hidden');
        $('.message').text('ন্যূনতম ৫ অক্ষরের নাম দিন');
    }
});

$('#reg_email').blur(function() {
    var email = $(this).val();
    if (validateEmail(email)) {
        //no problem with email 
        //ajax post to check database if the email already exists or not
        $.ajax({
            type: "POST",
            url: "./Controller/loginProcess.php",
            data: { reg_email: email },
            success: function(msg) {
                if (msg == 1) {
                    $('#reg_email').removeClass('right');
                    $('#reg_email').addClass('wrong');
                    $('.message').removeClass('hidden');
                    $('.message').text('এই মেইলটি ব্যাবহার করা হয়েছে');
                } else {
                    $('.message').addClass('hidden');
                    $('#reg_email').removeClass('wrong');
                    $('#reg_email').addClass('right');
                }
            }
        });
    } else {
        $(this).removeClass('right');
        $(this).addClass('wrong');
        $('.message').removeClass('hidden');
        $('.message').text('মেইল অ্যাড্রেসটি  সঠিক নয়');
    }
});

$('#reg_password').blur(function() {
    var length = $(this).val().length;
    if (length >= 4) {
        $('.message').addClass('hidden');
        $(this).removeClass('wrong');
        $(this).addClass('right');
    } else {
        $(this).removeClass('right');
        $(this).addClass('wrong');
        $('.message').removeClass('hidden');
        $('.message').text('ন্যূনতম ৪ অক্ষরের পাসওয়ার্ড দিন');
    }
});

$('#reg_password_confirme').blur(function() {
    var password = $('#reg_password').val();
    var password_confirme = $(this).val();
    if (password == password_confirme) {
        $('.message').addClass('hidden');
        $(this).removeClass('wrong');
        $(this).addClass('right');
    } else {
        $(this).removeClass('right');
        $(this).addClass('wrong');
        $('.message').removeClass('hidden');
        $('.message').text('আপনার পাসওয়ার্ডটি মেলিনি');
    }
});

$('#login_email').blur(function() {
    var email = $(this).val();
    if (validateEmail(email)) {
        $('.message').addClass('hidden');
        $(this).removeClass('wrong');
        $(this).addClass('right');
    } else {
        $(this).removeClass('right');
        $(this).addClass('wrong');
        $('.message').removeClass('hidden');
        $('.message').text('মেইল অ্যাড্রেসটি  সঠিক নয়');
    }
});

$('#login_password').blur(function() {
    var length = $(this).val().length;
    if (length >= 4) {
        $('.message').addClass('hidden');
        $(this).removeClass('wrong');
        $(this).addClass('right');
    } else {
        $(this).removeClass('right');
        $(this).addClass('wrong');
        $('.message').removeClass('hidden');
        $('.message').text('ন্যূনতম ৪ অক্ষরের পাসওয়ার্ড দিন');
    }
});

function login_form_submit() {
    var email = $('#login_email').val();
    var password = $('#login_password').val();
    var remember = 0;
    if ($('#login_remember').is(':checked'))
        remember = 1;

    if (!validateEmail(email)) {
        $('#login_email').removeClass('right');
        $('#login_email').addClass('wrong');
        $('.message').removeClass('hidden');
        $('.message').text('মেইল অ্যাড্রেসটি  সঠিক নয়');
    } else if (password.length < 4) {
        $('#login_password').removeClass('right');
        $('#login_password').addClass('wrong');
        $('.message').removeClass('hidden');
        $('.message').text('ন্যূনতম ৪ অক্ষরের পাসওয়ার্ড দিন');
    } else {
        //no problem with entries 
        //ajax post to check database
        $.ajax({
            type: "POST",
            url: "./Controller/loginProcess.php",
            data: { login_email: email, login_password: password, login_remember: remember },
            success: function(msg) {
                if (msg == 1) {
                    window.location.replace("index.php");
                } else {
                    $('#login_email').removeClass('right');
                    $('#login_email').addClass('wrong');
                    $('#login_password').removeClass('right');
                    $('#login_password').addClass('wrong');
                    $('.message').removeClass('hidden');
                    $('.message').text('পাসওয়ার্ড অথবা ইমেল সঠিক নয়');
                }
            }
        });
    }
}

function reg_form_submit() {
    var name = $('#reg_name').val();
    var email = $('#reg_email').val();
    var password = $('#reg_password').val();
    var password_confirme = $('#reg_password_confirme').val();
    if (name.length < 5) {
        $('#reg_name').removeClass('right');
        $('#reg_name').addClass('wrong');
        $('.message').removeClass('hidden');
        $('.message').text('ন্যূনতম ৫ অক্ষরের নাম দিন');
    } else if (!validateEmail(email)) {
        $('#reg_email').removeClass('right');
        $('#reg_email').addClass('wrong');
        $('.message').removeClass('hidden');
        $('.message').text('মেইল অ্যাড্রেসটি  সঠিক নয়');
    } else if (password.length < 4) {
        $('#reg_password').removeClass('right');
        $('#reg_password').addClass('wrong');
        $('.message').removeClass('hidden');
        $('.message').text('ন্যূনতম ৪ অক্ষরের পাসওয়ার্ড দিন');
    } else if (password != password_confirme) {
        $('#reg_password_confirme').removeClass('right');
        $('#reg_password_confirme').addClass('wrong');
        $('.message').removeClass('hidden');
        $('.message').text('আপনার পাসওয়ার্ডটি মেলিনি');
    } else {
        //no problem with entries 
        //ajax post to check database if the email already exists or not
        $.ajax({
            type: "POST",
            url: "./Controller/loginProcess.php",
            data: { reg_email: email },
            success: function(msg) {
                if (msg == 1) {
                    $('#reg_email').removeClass('right');
                    $('#reg_email').addClass('wrong');
                    $('.message').removeClass('hidden');
                    $('.message').text('এই মেইলটি ব্যাবহার করা হয়েছে');
                } else {
                    //everything is alright
                    //sending data to save in database
                    $.ajax({
                        type: "POST",
                        url: "./Controller/loginProcess.php",
                        data: { reg_name: name, reg_email: email, reg_password: password },
                        success: function(msg) {
                            if (msg == 1) {
                                //sign up successful
                                $('#reg_email').removeClass('wrong');
                                $('#reg_email').addClass('right');
                                $('.message').removeClass('hidden');
                                $('.message').text('রেজিস্ট্রেশান সম্পূর্ণ হয়েছে');
                                setTimeout(function() {
                                    $('.message').text('এবার লগ ইন করুন');
                                }, 2000);
                                setTimeout(function() {
                                    location.reload();
                                }, 4000);
                            } else {
                                //sign up un-successful
                                $('.message').removeClass('hidden');
                                $('.message').text('দুঃখিত, আবার চেষ্টা করুন');
                            }
                        }
                    });
                }
            }
        });
    }
}
