<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <link rel="icon" type="image/x-icon" href="{{asset('assets/img/favicon.ico')}}"/>
    <link href="{{asset('assets/layouts/vertical-dark-menu/css/light/loader.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('assets/layouts/vertical-dark-menu/css/dark/loader.css')}}" rel="stylesheet" type="text/css" />
    <script src="{{asset('assets/layouts/vertical-dark-menu/loader.js')}}"></script>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet">
    <link href="{{asset('assets/css/bootstrap/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
    
    <link href="{{asset('assets/layouts/vertical-dark-menu/css/light/plugins.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('assets/css/light/authentication/auth-boxed.css')}}" rel="stylesheet" type="text/css" />
    
    <link href="{{asset('assets/layouts/vertical-dark-menu/css/dark/plugins.css')}}" rel="stylesheet" type="text/css" />
    <link href="{{asset('assets/css/dark/authentication/auth-boxed.css')}}" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    
</head>
<body class="form">

    <!-- BEGIN LOADER -->
    <div id="load_screen"> <div class="loader"> <div class="loader-content">
        <div class="spinner-grow align-self-center"></div>
    </div></div></div>
    <!--  END LOADER -->

    <div class="auth-container d-flex">

        <div class="container mx-auto align-self-center">
           
     <form method="POST" action="{{ route('login_check') }}" class="text-left">
            @csrf
            <div class="row">
    
                <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-8 col-12 d-flex flex-column align-self-center mx-auto">
                    <div class="card mt-3 mb-3">
                        <div class="card-body">
    
                            <div class="row">
                                <div class="col-md-12 mb-3">
                                    <h2>Sign In</h2>
                                    <!-- <p>Enter your email and password to login</p> -->
                                    @if (Session::has('error'))
                                        <p class="text-danger">{{ Session::get('error') }}</p>
                                    @endif
                                    @if (Session::has('success'))
                                        <p class="text-success">{{ Session::get('success') }}</p>
                                    @endif
                                    
                                </div>
                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label class="form-label">Email</label>
                                        <input type="email" class="form-control" name="email" value="admin@cork.com">
                                         @if ($errors->has('email'))
                                         <p class="text-danger">{{ $errors->first('email') }}</p>
                                         @endif
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="mb-4">
                                        <label class="form-label">Password</label>
                                        <input type="text" class="form-control" name="password" value="1234">
                                        @if ($errors->has('password'))
                                        <p class="text-danger">{{ $errors->first('password') }}</p>
                                        @endif
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="mb-3">
                                        <div class="form-check form-check-primary form-check-inline">
                                            <input class="form-check-input me-3" type="checkbox" id="form-check-default">
                                            <label class="form-check-label" for="form-check-default">
                                                Remember me
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-12">
                                    <div class="mb-4">
                                        <!-- <button type="submit" class="btn btn-secondary w-100">SIGN IN</button> -->
                                         <button type="submit" class="btn btn-secondary w-100" value="">Login</button>
                                    </div>
                                </div>
                                
                                <div class="col-12 mb-4">
                                    <div class="">
                                        <div class="seperator">
                                            <hr>
                                            <div class="seperator-text"> <span>Or continue with</span></div>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="col-sm-4 col-12">
                                    <div class="mb-4">
                                        <button class="btn  btn-social-login w-100 ">
                                            <img src="{{asset('assets/img/google-gmail.svg')}}" alt="" class="img-fluid">
                                            <span class="btn-text-inner">Google</span>
                                        </button>
                                    </div>
                                </div>
    
                                <div class="col-sm-4 col-12">
                                    <div class="mb-4">
                                        <button class="btn  btn-social-login w-100">
                                            <img src="{{asset('assets/img/github-icon.svg')}}" alt="" class="img-fluid">
                                            <span class="btn-text-inner">Github</span>
                                        </button>
                                    </div>
                                </div>
    
                                <div class="col-sm-4 col-12">
                                    <div class="mb-4">
                                        <button class="btn  btn-social-login w-100">
                                            <img src="{{asset('assets/img/twitter.svg')}}" alt="" class="img-fluid">
                                            <span class="btn-text-inner">Twitter</span>
                                        </button>
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="text-center">
                                        <p class="mb-0">Dont't have an account ? <a href="javascript:void(0);" class="text-warning">Sign Up</a></p>
                                    </div>
                                </div>
                                
                            </div>
                            
                        </div>
                    </div>
                </div>
                
            </div>
        </form>
            
        </div>

    </div>
    <!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
    <script src="{{asset('assets/js/bootstrap/bootstrap.bundle.min.js')}}"></script>
    <!-- END GLOBAL MANDATORY SCRIPTS -->
</body>
</html>