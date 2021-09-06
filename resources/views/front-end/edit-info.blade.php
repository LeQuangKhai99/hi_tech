@extends('front-end.layout.main')
@section('css')
@endsection
@section('js')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    @if (Session::get('update-oke'))
        <script>
            Swal.fire({
                position: 'top-end',
                icon: 'success',
                title: 'Cập nhật thông tin cá nhân thành công',
                showConfirmButton: false,
                timer: 1500
            })
        </script>
    @endif
@endsection
@section('content')
    <section id="nav-link" class="w-100">
        <a href="{{route('home')}}">Trang chủ</a>
        <i class="fa fa-angle-right" aria-hidden="true"></i>
        <a>Cập nhật thông tin cá nhân</a>
    </section>

    <section class="container-fluid" style="margin-top:20px;">
        <h1 style="margin-bottom: 40px !important; text-align: center">Cập nhật thông tin cá nhân</h1>
        <div class="col-md-3">
            <h3 style="margin: 0 0 20px!important; font-size: 18px; font-weight: 700;">TÀI KHOẢN</h3>
            <ul class="account-nav" style="list-style: none">
                <li class="d-flex align-items-center pb-3"><a href="{{route('front-end.edit-info')}}" style="color: black;text-decoration: none"><i class="far fa-dot-circle" style="font-size: 10px; margin-right: 8px;"></i>Thông tin cá nhân</a></li>
                <li class="d-flex align-items-center pb-3"><a href="{{route('front-end.change-pass')}}" style="color: black;text-decoration: none"><i class="far fa-dot-circle" style="font-size: 10px; margin-right: 8px;"></i>Đổi mật khẩu</a></li>
                <li class="d-flex align-items-center pb-3"><a href="{{route('front-end.order-info')}}" style="color: black;text-decoration: none"><i class="far fa-dot-circle" style="font-size: 10px; margin-right: 8px;"></i>Các đơn hàng đã đặt</a></li>
            </ul>
        </div>
        <div class="col-md-7">
            <form method="post" action="{{route('front-end.update-info')}}">
                @csrf
                <div class="form-group">
                    <label style="margin-bottom: 10px!important;">Họ và tên</label>
                    <input type="text" class="form-control" placeholder="Họ và tên" name="name" value="{{$user->name}}">
                </div>
                <div class="form-group">
                    <label style="margin: 10px 0 !important;">Số điện thoại</label>
                    <input type="text" class="form-control" placeholder="Số điện thoại" name="phone"
                           value="{{$user->phone}}">
                </div>
                <div class="form-group">
                    <label style="margin: 10px 0 !important;">Địa chỉ</label>
                    <input type="text" class="form-control" placeholder="Địa chỉ" name="address"
                           value="{{$user->address}}">
                </div>
                <button type="submit" class="btn btn-primary" style="margin: 10px 0 !important;">Cập nhật</button>
            </form>
        </div>
    </section>
@endsection
