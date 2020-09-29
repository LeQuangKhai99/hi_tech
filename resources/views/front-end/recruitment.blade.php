@extends('front-end.layout.main')
@section('css')

@endsection
@section('content')
    <section id="nav-link" class="w-100">
        <a href="{{route('home')}}">Trang chủ</a>
        <i class="fa fa-angle-right" aria-hidden="true"></i>
        <a>Tuyển dụng</a>

    </section>
    <section id="dich-vu" class="container-fluid" style="margin-top:20px">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-9">
                <div class="d-flex align-items-center title">
                    <img src="/hi-tech/images/icon.png" alt="Dịch vụ" class="">
                    <strong class="theme">Tuyển dụng</strong>
                </div>
                <span>
                    {!! $recruitment == null ? '' : $recruitment->content !!}
                </span>
            </div>
            @include('front-end.layout.news-product-hot')
        </div>

    </section>
@endsection
