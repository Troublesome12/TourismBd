$(document).ready(function() {

    //scrolling for header to shrink
    $(window).scroll(function() {
        if ($(window).scrollTop() > 200) {
            $('.header').addClass('header-shrink');
        } else {
            $('.header').removeClass('header-shrink');
        }
    });

    $('#image_input').change(function() {
        readURL(this);
        $('#save_button').css('visibility', 'visible');
    });

    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
                $('#image_display').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }

    $('#edit_button').click(function(event) {
        $('form input').prop("disabled", false);
        $('#save_button').css('visibility', 'visible');
    });

    $('form input').prop("disabled", true);

    $('#save_button').click(function(event) {
        var isDisabled = $('#name_input').prop('disabled');
        var imgLength = $('#image_input').val().length;
        if (imgLength > 1) {
            var file_data = $("#image_input").prop("files")[0];
            var form_data = new FormData();
            form_data.append("file", file_data);

            $.ajax({
                type: "POST",
                url: "./Controller/infoProcess.php",
                dataType: 'script',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                success: function(msg) {
                    if (msg == '1') {
                        alert('ok');
                    } else {
                    	alert(msg);
                    }
                }
            });
        }
    });
});
