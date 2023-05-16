<html>

<head>
    <title>{{$title??''}}</title>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta property="og:title" content="{{$title??''}}" />
    <meta property="og:site_name" content="{{$title??''}}" />
    <meta property="og:description" content="{{$title??''}}" />
    <meta property="og:image" content="{{$meta_image??''}}" />
    <meta property="og:image:width" content="600" />
    <meta property="og:image:height" content="315" />

    <meta name="twitter:title" content="{{$title??''}}">
    <meta name="twitter:description" content="{{$title??''}}">
    <meta name="twitter:image" content="{{$meta_image??''}}">
    <meta name="twitter:card" content="summary_large_image">
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/bootstrap.min.css">
    <!-- animate css -->
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/animate.css">
    <!-- meanmenu css -->
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/meanmenu.min.css">
    <!-- owl.carousel css -->
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/owl.carousel.css">
    <!-- font-awesome css -->
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/font-awesome.min.css">
    <!-- flexslider.css-->
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/flexslider.css">
    <!-- chosen.min.css-->
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/chosen.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="{{ asset('frontend') }}/style.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/responsive.css">
    <!-- modernizr css -->
    <script src="{{ asset('frontend') }}/js/vendor/modernizr-2.8.3.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="https://cdn.jsdelivr.net/npm/pace-js@latest/pace.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pace-js@latest/pace-theme-default.min.css">
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/custom.css">


    <!-- jquery latest version -->
    <script src="{{ asset('frontend') }}/js/vendor/jquery-1.12.4.min.js" defer></script>
    <!-- bootstrap js -->
    <script src="{{ asset('frontend') }}/js/bootstrap.min.js" defer></script>
    <!-- owl.carousel js -->
    <script src="{{ asset('frontend') }}/js/owl.carousel.min.js" defer></script>
    <!-- meanmenu js -->
    <script src="{{ asset('frontend') }}/js/jquery.meanmenu.js" defer></script>
    <!-- wow js -->
    <script src="{{ asset('frontend') }}/js/wow.min.js" defer></script>
    <!-- jquery.parallax-1.1.3.js -->
    <script src="{{ asset('frontend') }}/js/jquery.parallax-1.1.3.js" defer></script>
    <!-- jquery.countdown.min.js -->
    <script src="{{ asset('frontend') }}/js/jquery.countdown.min.js" defer></script>
    <!-- jquery.flexslider.js -->
    <script src="{{ asset('frontend') }}/js/jquery.flexslider.js" defer></script>
    <!-- chosen.jquery.min.js -->
    <script src="{{ asset('frontend') }}/js/chosen.jquery.min.js" defer></script>
    <!-- jquery.counterup.min.js -->
    <script src="{{ asset('frontend') }}/js/jquery.counterup.min.js" defer></script>
    <!-- waypoints.min.js -->
    <script src="{{ asset('frontend') }}/js/waypoints.min.js" defer></script>
    <!-- plugins js -->
    <script src="{{ asset('frontend') }}/js/plugins.js" defer></script>
    <!-- main js -->
    <script src="{{ asset('frontend') }}/js/main.js" defer></script>
    <script src="{{ asset('frontend') }}/js/livewire_hook.js" defer></script>

    <script defer>
        Pace.start();
        Pace.options = {
            restartOnRequestAfter: true
        }
        const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            onOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
        });
        window.toaster = function toaster(icon, message) {
            Toast.fire({
                icon: icon,
                title: message,
            })
        }
        window.finalEnlishToBanglaNumber = {
            '0': '০',
            '1': '১',
            '2': '২',
            '3': '৩',
            '4': '৪',
            '5': '৫',
            '6': '৬',
            '7': '৭',
            '8': '৮',
            '9': '৯'
        };

        String.prototype.getDigitBanglaFromEnglish = function() {
            var retStr = this;
            for (var x in finalEnlishToBanglaNumber) {
                retStr = retStr.replace(new RegExp(x, 'g'), finalEnlishToBanglaNumber[x]);
            }
            return retStr;
        };
    </script>
    @livewireStyles
    <script src="/js/app.js" defer></script>

</head>

<body>

    <header>
        @livewire('frontend.components.header')
        @livewire('frontend.components.nav')
    </header>
    <!-- <nav>
        <a href="/login">login</a>
        <a href="/register">register</a>
    </nav> -->
    @yield('content')

    @livewire('frontend.components.footer')
    @livewireScripts

    <script defer>
        document.addEventListener("DOMContentLoaded", () => {
            Livewire.hook('component.initialized', (component) => {
                //
                // console.log('34',component.data);
            })
            Livewire.hook('element.initialized', (el, component) => {
                // console.log('37',component.data);
                // component.data.auth_check?window.location.href='/admin':'';
            })
            Livewire.hook('element.updating', (fromEl, toEl, component) => {})
            Livewire.hook('element.updated', (el, component) => {})
            Livewire.hook('element.removed', (el, component) => {})
            Livewire.hook('message.sent', (message, component) => {})
            Livewire.hook('message.failed', (message, component) => {})
            Livewire.hook('message.received', (message, component) => {
                let access_token = message.response.serverMemo.data?.access_token;
                if (access_token) {
                    window.localStorage.setItem('token', access_token);
                    window.location.href = "/dashboard";
                }
            })
            Livewire.hook('message.processed', (message, component) => {
                // console.log('48');
            })
        });
        document.addEventListener("turbolinks:load", function(event) {
            console.log('load');
            window.livewire.start();
        });
    </script>
</body>

</html>
