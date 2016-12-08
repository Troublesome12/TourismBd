$(document).ready(function() {

    //plugin function for image slider
    $('#image_slider').responsiveSlides({
        height: 500, // slides conteiner height
        background: '#fff', // background color and color of overlayer to fadeout on init
        autoStart: true, // boolean autostart
        startDelay: 0, // start whit delay
        effectInterval: 6000, // time to swap photo
        effectTransition: 1000, // time effect
        pagination: [{
            active: true, // activate pagination
            inner: true, // pagination inside or aouside slides conteiner
            position: 'B_R',
            /* 
                pagination align:
                    T_L = top left
                    T_C = top center
                    T_R = top right
        
                    B_L = bottom left
                    B_C = bottom center
                    B_R = bottom right
            */
            margin: 20, // pagination margin
            dotStyle: '', // dot pagination class style
            dotStyleHover: '', // dot pagination class hover style
            dotStyleDisable: '' // dot pagination class disable style
        }]
    });

    //scrolling for header to shrink
    $(window).scroll(function() {
        if ($(window).scrollTop() > 200) {
            $('.header').addClass('header-shrink');
            $('.tooltiptext').addClass('tooltiptext-shrink');
            $('#slide-menu').css({ "top": "90px" });
        } else {
            $('.header').removeClass('header-shrink');
            $('.tooltiptext').removeClass('tooltiptext-shrink');
            $('#slide-menu').css({ "top": "180px" });
        }
    });

});

function setSelected(id) {
    $('.selected').removeClass('selected');
    $('#' + id).addClass('selected');
};

function submitComment(spot_id) {
    var comment = $('#comment_textarea').val();
    if (comment.length > 0) {
        $.ajax({
            type: "POST",
            url: "./Controller/commentProcess.php",
            data: { spot_id: spot_id, comment: comment },
            success: function(msg) {
                if (msg == 1) {
                    //submitted
                    location.reload();
                } else {
                    //didn't submitted
                    console.log(msg);
                }
            }
        });
    }
}
