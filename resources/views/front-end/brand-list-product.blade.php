@extends('front-end.layout.main')
@section('css')
    <link rel="stylesheet" href="/hi-tech/content/css/list-product-cate.css">
@endsection
@section('content')
    <section id="nav-link" class="w-100">
        <a href="{{route('home')}}">Trang chủ</a>
        <i class="fa fa-angle-right" aria-hidden="true"></i>
        <a>Hãng sản xuất {{$brand->name}}</a>
    </section>
    @include('front-end.layout.brand')
    <section id="dich-vu" class="container-fluid" style="margin-top:20px">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-9">
                <div class="d-flex align-items-center title">
                    <img src="/hi-tech/images/icon.png" alt="Dịch vụ" class="">
                    <strong class="theme">{{$brand->name}}</strong>
                </div>
                <div class="support">
                    <div class="breas">
                        @foreach($products as $product)
                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                <div class="breas-item">
                                    <a class="titA3" href="javascript:" rel="nofollow">{{$product->brand == null ? '' : $product->brand->name}}</a>
                                    <div class="img" style="height: 213px;">
                                        <a href="{{route('front-end.detail-product', ['slug'=>$product->slug])}}"  style="height: 213px;">
                                            <img src="{{$product->image_path}}"  >
                                        </a>
                                    </div>
                                    <div class="desc">
                                        <a href="{{route('front-end.detail-product', ['slug'=>$product->slug])}}"  class="titA4">{{$product->name}}</a>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
            @include('front-end.layout.news-product-hot')
        </div>

    </section>
@endsection
