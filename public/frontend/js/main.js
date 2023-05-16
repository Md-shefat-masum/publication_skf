(function($) {
    "use strict";

    /*----------------------------
     Top Menu Stick
    ------------------------------ */
    var header = $('#header-sticky');
    var win = $(window);

    win.on('scroll', function() {
        if ($(this).scrollTop() > 120) {
            header.addClass("sticky");
        } else {
            header.removeClass("sticky");
        }
    });

    /*----------------------------
     Wow js active
    ------------------------------ */
    new WOW().init();

    /*----------------------------
     Slider active
    ------------------------------ */
    // $('.slider-active').owlCarousel({
    //     smartSpeed: 1000,
    //     margin: 0,
    //     autoplay: false,
    //     nav: true,
    //     dots: true,
    //     loop: true,
    //     navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
    //     responsive: {
    //         0: {
    //             items: 1
    //         },
    //         768: {
    //             items: 1
    //         },
    //         1000: {
    //             items: 1
    //         }
    //     }
    // })


})(jQuery);
