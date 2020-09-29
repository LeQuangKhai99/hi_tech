@extends('front-end.layout.main')
@section('css')
    <link rel="stylesheet" href="/hi-tech/content/css/list-product-cate.css">
@endsection
@section('content')
    <section id="nav-link" class="w-100">
        <a href="{{route('home')}}">Trang chủ</a>
        <i class="fa fa-angle-right" aria-hidden="true"></i>
        <a>{{$cate->name}}</a>
    </section>
    @include('front-end.layout.brand')
    <section id="dich-vu" class="container-fluid" style="margin-top:20px">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-9">
                <div class="d-flex align-items-center title">
                    <img src="/hi-tech/images/icon.png" alt="Dịch vụ" class="">
                    <strong class="theme">{{$cate->name}}</strong>
                </div>
                <div class="support emergency">
                    @foreach($cate->childCate()->whereNull('deleted_at')->get() as $value)
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="emergency-item">
                            <div class="_img">
                                <a href="{{route('front-end.list-product', ['slug'=>$value->slug])}}" >
                                    <img src="{{$value->image_path}}" style="height: 208.93px;">
                                </a>
                            </div>
                            <div class="desc-spp">
                                <h3>
                                    <a href="{{route('front-end.list-product', ['slug'=>$value->slug])}}" >
                                        {{$value->name}}
                                    </a>
                                </h3>
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
            @include('front-end.layout.news-product-hot')
        </div>

    </section>
@endsection
