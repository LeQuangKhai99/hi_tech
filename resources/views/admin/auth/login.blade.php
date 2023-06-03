<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="/login/css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/login/css/bootstrap.min.css">

    <!-- Style -->
    <link rel="stylesheet" href="/login/css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

    <title>Đăng nhập</title>
</head>
<body>
@if (Session::get('mess-err'))
    <script>
        Swal.fire(
            'Thất bại !',
            'Sai tài khoản hoặc mật khẩu!',
            'error'
        )
    </script>
@endif
<div class="content">
    <div class="container">
        <div class="row">
            <div class="col-md-6 order-md-2">
                <img src="/login/images/undraw_file_sync_ot38.svg" alt="Image" class="img-fluid">
            </div>
            <div class="col-md-6 contents">
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="mb-4">
                            <h3>Đăng nhập</h3>
                        </div>
                        <form action="{{route('auth.login')}}" method="post">
                            @csrf
                            <div class="form-group first">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" id="username" name="email">

                            </div>
                            <div class="form-group last mb-4">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="password" name="password">

                            </div>
                            <input type="submit" value="Đăng nhập" class="btn text-white btn-block btn-primary">
                            <div class="d-flex mb-5 align-items-center">
                                <span class="ml-auto"><a href="{{route('auth.register')}}" class="forgot-pass">Chưa có tài khoản ? Đăng kí</a></span>
                            </div>
                        </form>
                        <div class="box-media">
                            <a href="{{route('login.google')}}">
                                <img src="/images/common/ico-google.png" alt="">
                            </a>
                            <a href="{{route('login.google')}}">
                                <img src="/images/common/ico-face.png" alt="">
                            </a>
                            <a href="{{route('login.google')}}">
                                <img src="/images/common/ico-twiter.png" alt="">
                            </a>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>


<script src="/login/js/jquery-3.3.1.min.js"></script>
<script src="/login/js/popper.min.js"></script>
<script src="/login/js/bootstrap.min.js"></script>
<script src="/login/js/main.js"></script>
</body>
</html>
