<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <meta name="csrf-token" content="{{ csrf_token() }}"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <title>CORK Admin - Multipurpose Bootstrap Dashboard Template </title>
    <link rel="icon" type="image/x-icon" href="{{asset('assets/img/favicon.ico')}}"/>
    <link href="{{asset('assets/layouts/vertical-dark-menu/css/light/loader.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('assets/layouts/vertical-dark-menu/css/dark/loader.css')}}" rel="stylesheet" type="text/css" />
    <script src="{{asset('assets/layouts/vertical-dark-menu/loader.js')}}"></script>

    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">
    <link href="{{asset('assets/css/bootstrap/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('assets/layouts/vertical-dark-menu/css/light/plugins.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('assets/layouts/vertical-dark-menu/css/dark/plugins.css')}}" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->

    <!-- BEGIN PAGE LEVEL PLUGINS/CUSTOM STYLES -->
    <!-- <link href="{{asset('assets/plugins/src/apex/apexcharts.css')}}" rel="stylesheet" type="text/css"> -->
    <link href="{{asset('assets/css/light/dashboard/dash_1.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('assets/css/dark/dashboard/dash_1.css')}}" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL PLUGINS/CUSTOM STYLES -->
     <!-- css3SIS -->
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css3SIS/dataTable3SIS.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css3SIS/browser3SIS.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css3SIS/entryScreen3SIS.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css3SIS/button3SIS.css') }}">

    <!-- END css3SIS -->
    <link rel="stylesheet" href="{{asset('assets/plugins/src/font-icons/fontawesome/css/regular.css') }}">
    <link rel="stylesheet" href="{{asset('assets/plugins/src/font-icons/fontawesome/css/fontawesome.css') }}">
    
    <link href="{{ asset('assets/css/light/scrollspyNav.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('assets/css/light/components/font-icons.css') }}" rel="stylesheet" type="text/css">
    
    <link href="{{ asset('assets/css/dark/scrollspyNav.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('assets/css/dark/components/font-icons.css') }}" rel="stylesheet" type="text/css">

    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/light/elements/alert.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css/dark/elements/alert.css')}}">
    @yield('css')
</head>
<body class="layout-boxed">
    <!-- BEGIN LOADER -->
    <div id="load_screen"> <div class="loader"> <div class="loader-content">
        <div class="spinner-grow align-self-center"></div>
    </div></div></div>
    <!--  END LOADER -->

    @include('inc.navbar')

    <!--  BEGIN MAIN CONTAINER  -->
    <div class="main-container" id="container">

        <div class="overlay"></div>
        <div class="search-overlay"></div>

        @include('inc.sidebar')

        <!--  BEGIN CONTENT AREA  -->
        <div id="content" class="main-content">
            <div class="layout-px-spacing">
                <div class="middle-content container-xxl p-0">
                  @include('inc.breadcrumb')
                  @yield('content')
                 {{-- @include('inc.content') --}}

       </div>
       </div>

            {{-- @include('inc.footer') --}}

        </div>
        <!--  END CONTENT AREA  -->

    </div>
    <!-- END MAIN CONTAINER -->
<!-- <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script> -->
<script src="{{asset('assets/plugins/src/global/vendors.min.js')}}"></script>
    <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="{{asset('assets/js/bootstrap/bootstrap.bundle.min.js')}}"></script>
    <script src="{{asset('assets/js/bootstrap/bootstrap.bundle.min2.js')}}"></script>
    <script src="{{asset('assets/plugins/src/perfect-scrollbar/perfect-scrollbar.min.js')}}"></script>
    <script src="{{asset('assets/plugins/src/mousetrap/mousetrap.min.js')}}"></script>
    <script src="{{asset('assets/plugins/src/waves/waves.min.js')}}"></script>
    <script src="{{asset('assets/layouts/vertical-dark-menu/app.js')}}"></script>
    <script src="{{asset('assets/plugins/src/font-icons/feather/feather.min.js')}}"></script>

    <script src="{{asset('assets/plugins/src/bootstrap-maxlength/bootstrap-maxlength.js')}}"></script>
    <script src="{{asset('assets/plugins/src/bootstrap-maxlength/custom-bs-maxlength.js')}}"></script>
    <!-- END GLOBAL MANDATORY SCRIPTS -->

    <!-- BEGIN PAGE LEVEL PLUGINS/CUSTOM SCRIPTS -->
    <!-- <script src="{{asset('assets/plugins/src/apex/apexcharts.min.js')}}"></script> -->
    <!-- <script src="{{asset('assets/js/dashboard/dash_1.js')}}"></script> -->

    <script src="{{ asset('assets/js/common3SIS/validation3SIS.js') }}"></script>

    <!-- BEGIN PAGE LEVEL PLUGINS/CUSTOM SCRIPTS -->
    @yield('js_code')
     <script type="text/javascript">
        function fastpath(_this) {
            console.log('FastPath text:' + _this.value);
            $.ajax({
                type: 'get',
                url: "{{ url('fastpath') }}",
                data: {
                    'search': _this.value
                },
                success: function(response) {
                    console.log(response.status);
                    if (response.status == 'success') {
                        console.log(response.redirect_url);
                        window.location = response.redirect_url;
                    } else {
                        alert("FastPath not found ?");
                        return false;
                    }
                }
            });
        }
    </script>
</body>
</html>
