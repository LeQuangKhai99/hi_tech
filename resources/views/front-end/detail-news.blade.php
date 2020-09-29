@extends('front-end.layout.main')
@section('css')
    <link rel="stylesheet" href="/hi-tech/content/css/tintuc.css">
@endsection
@section('title')
    <title>Bài viết</title>
@endsection
@section('content')
    <section id="nav-link" class="w-100">
        <a href="{{route('home')}}">Trang chủ</a>
        <i class="fa fa-angle-right" aria-hidden="true"></i>
        <a href="{{route('front-end.list-news', ['slug'=>$post->postCate->slug])}}">{{$post->postCate->name}}</a>
        <i class="fa fa-angle-right" aria-hidden="true"></i>
        <a>Chi tiết bài viết</a>

    </section>
    <section id="dich-vu" style="margin-top:20px">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-9">
                <div class="d-flex align-items-center title title-news-detail">
                    <img src="/hi-tech/images/icon.png" alt="Dịch vụ" class="">
                    <div>{{$post->title}}</div>
                </div>
                <div class="news-summary">
                    {{$post->summary}}
                </div>
                <div>
                    {!! $post == null ? '' : $post->content !!}
                </div>
                <div class="likeshare">
                    <div class="share share-container">
                        <ul>
                            <li><a rel="nofollow" href="javascript:;" title=""><i class="fab fa-facebook-square"></i></a></li>
                            <li><a rel="nofollow" href="javascript:;" title=""><i style="color: #1da1f2" class="fab fa-twitter-square"></i></a></li>
                            <li><a rel="nofollow" href="javascript:;" title=""><i style="color: #dd4b39" class="fab fa-google-plus-square"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="title-other">
                    <p>Tin tức khác</p>
                </div>
                <div class="lst-other-news">
                    <ul>
                        @foreach($relatedPost as $value)
                        <li><a href="{{route('front-end.detail-news', ['slug'=>$value->slug])}}" title="{{$value->title}}">{{$value->title}}</a></li>
                        @endforeach
                    </ul>
                </div>
            </div>
            @include('front-end.layout.news-product-hot')
        </div>

    </section>
@endsection
