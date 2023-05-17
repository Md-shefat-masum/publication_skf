(function ($) {
    "use strict";

    /*----------------------------
     Top Menu Stick
    ------------------------------ */
    var header = $("#header-sticky");
    var win = $(window);

    win.on("scroll", function () {
        if ($(this).scrollTop() > 120) {
            header.addClass("sticky");
        } else {
            header.removeClass("sticky");
        }
    });

    Pace.start();
    Pace.options = {
        restartOnRequestAfter: true,
    };
    const Toast = Swal.mixin({
        toast: true,
        position: "top-end",
        showConfirmButton: false,
        timer: 2000,
        timerProgressBar: true,
        onOpen: (toast) => {
            toast.addEventListener("mouseenter", Swal.stopTimer);
            toast.addEventListener("mouseleave", Swal.resumeTimer);
        },
    });
    window.toaster = function toaster(icon, message) {
        Toast.fire({
            icon: icon,
            title: message,
        });
    };
    
})(jQuery);
