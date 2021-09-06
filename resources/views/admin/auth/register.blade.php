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

    <title>Đăng Ký</title>
</head>
<body>
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
                            <h3>Đăng ký</h3>
                        </div>
                        <form action="{{route('auth.create')}}" method="post">
                            @csrf
                            <div class="form-group first">
                                <label for="fullname">Họ tên</label>
                                <input type="text" class="form-control" id="fullname" value="{{old('name')}}" name="name">
                            </div>
                            @error('name')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                            <div class="form-group first">
                                <label for="username">Email</label>
                                <input type="text" class="form-control" id="username" value="{{old('email')}}" name="email">
                            </div>
                            @error('email')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                            <div class="form-group last mb-4">
                                <label for="password">Mật khẩu</label>
                                <input type="password" class="form-control" id="password" name="password" value="{{old('password')}}">
                            </div>
                            @error('password')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                            <div class="form-group last mb-4">
                                <label for="password">Xác nhận mật khẩu</label>
                                <input type="password" class="form-control" id="password" name="password_confirmation" value="{{old('password_confirmation')}}">
                            </div>
                            <div class="form-group last mb-4">
                                <label for="password">Địa chỉ</label>
                                <input type="text" class="form-control" name="address" value="{{old('address')}}">
                            </div>
                            @error('address')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                            <div class="form-group last mb-4">
                                <label for="password">Số điện thoại</label>
                                <input type="text" class="form-control" name="phone" value="{{old('phone')}}">
                            </div>
                            @error('phone')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                            <input type="submit" value="Đăng ký" class="btn text-white btn-block btn-primary">
                        </form>
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
