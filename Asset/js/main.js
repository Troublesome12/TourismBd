$(document).ready(function() {
    //plugin function for image slider
    $('#slider').responsiveSlides({
        height: 600, // slides conteiner height
        background: '#fff', // background color and color of overlayer to fadeout on init
        autoStart: true, // boolean autostart
        startDelay: 0, // start whit delay
        effectInterval: 6000, // time to swap photo
        effectTransition: 1000, // time effect
        pagination: [{
            active: false, // activate pagination
            inner: false, // pagination inside or aouside slides conteiner
            position: 'B_C',
            /* 
                pagination align:
                    T_L = top left
                    T_C = top center
                    T_R = top right
        
                    B_L = bottom left
                    B_C = bottom center
                    B_R = bottom right
            */
            margin: 10, // pagination margin
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
        } else {
            $('.header').removeClass('header-shrink');
            $('.tooltiptext').removeClass('tooltiptext-shrink');
        }
    });

    //if the grid_container is in the view it will flip
    $(window).scroll(function() {
        $('.grid_container').each(function() {
            if (isScrolledIntoView(this) === true) {
                $(this).addClass('animate flip-in-y');
            }
        });
    });

    //scrolling for zilla_list to appeare
    $(window).scroll(function() {
        if ($(window).scrollTop() > 1400) {
            AnimateList();
        }
    });
});

// smooth scrolling
$(function() {
    //for top content  scrollTop will be 0px
    $('.top_content').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: 0
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });

    //for top content  scrollTop will be dynamic
    $('.bottom_content').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top - 80
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});

//if an element is on the screen
function isScrolledIntoView(elem) {
    var docViewTop = $(window).scrollTop();
    var docViewBottom = docViewTop + $(window).height();

    var elemTop = $(elem).offset().top;
    var elemBottom = elemTop + $(elem).height();

    return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
}

//Animation for zilla list to appeare
function AnimateList($listItems, index, callback) {
    $("#zilla_list ul").fadeIn(500, function() {
        $(this).children().each(function(i) {
            $(this).delay((i++) * 50).animate({ left: 0, opacity: 1 });
        });
    });
}
