@extends('front-end.layout.main')
@section('css')
    <link rel="stylesheet" href="/hi-tech/content/css/tintuc.css">
@endsection
@section('title')
    <title>Dự án</title>
@endsection
@section('content')
    <section id="nav-link" class="w-100">
        <a href="{{route('home')}}">Trang chủ</a>
        <i class="fa fa-angle-right" aria-hidden="true"></i>
        <a>Chi tiết dự án</a>

    </section>
    <section id="dich-vu" class="container-fluid" style="margin-top:20px">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-9">
                <div class="d-flex align-items-center title">
                    <img src="/hi-tech/images/icon.png" alt="Dịch vụ" class="">
                    <strong class="theme">{{$project->title}}</strong>
                </div>
                <div class="news-summary">
                    {{$project->summary}}
                </div>
                <div>
                    {!! $project == null ? '' : $project->content !!}
                </div>
            </div>
            @include('front-end.layout.news-product-hot')
        </div>

    </section>
@endsection
