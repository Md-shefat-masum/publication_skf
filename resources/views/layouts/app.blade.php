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
    <!-- owl.carousel css -->
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/owl.carousel.css">
    <!-- font-awesome css -->
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/font-awesome.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="{{ asset('frontend') }}/style.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/responsive.css">

    <!-- modernizr css -->
    <script src="/js/sweetalert.js"></script>
    <script src="/js/pace.min.js"></script>
    <link rel="stylesheet" href="/js/pace-theme-default.min.css">
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/custom.css">


    {{-- <script src="/js/vue2.js"></script> --}}
    <script src="{{ asset('frontend') }}/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="{{ asset('frontend') }}/js/bootstrap.min.js"></script>
    <script src="{{ asset('frontend') }}/js/owl.carousel.min.js"></script>
    <script src="{{ asset('frontend') }}/js/wow.min.js" defer></script>
    <script src="{{ asset('frontend') }}/js/custom.js"></script>
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
