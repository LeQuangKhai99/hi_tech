@extends('front-end.layout.main')
@section('title')
    <title>{{$postCate->name}}</title>
@endsection
@section('css')
    <link rel="stylesheet" href="/hi-tech/content/css/tintuc.css">
    <link rel="stylesheet" href="/hi-tech/content/css/duan.css">
    <script src="https://kit.fontawesome.com/26373b0a2b.js" crossorigin="anonymous"></script>
@endsection
@section('content')

    <section id="nav-link" class="w-100">
        <a href="{{route('front-end.home')}}">Trang chủ</a>
        <i class="fa fa-angle-right" aria-hidden="true"></i>
        <a>{{$postCate->name}}</a>
    </section>
    <!-- dịch vụ -->
    <section id="dich-vu" class="" style="margin-top:20px">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-9">
                <div class="d-flex align-items-center title">
                    <img src="/hi-tech/images/icon.png" alt="Tin Tức" class="">
                    <strong class="theme">{{$postCate->name}}</strong>
                </div>
                @foreach($posts as $key=> $post)
                @if($key == 0)
                        <div class="row du-an">
                            <div style="padding: 0;" class="col-sm-6">
                                <a href="{{route('front-end.detail-news', ['slug'=>$post->slug])}}"><img style="width: 495px; height: 308px" src="{{$post->image_path}}" alt=""></a>
                            </div>
                            <div class="col-sm-6">
                                <h3 class="title-du-an"><a href="{{route('front-end.detail-news', ['slug'=>$post->slug])}}">{{$post->title}}</a></h3>
                                <div class="time"><i class="far fa-clock"></i>&nbsp;{{ $post->created_at->format('Y-m-d') }}</div>
                                <div class="noi-dung-du-an">
                                    {{\Illuminate\Support\Str::limit($post->summary, 150)}}
                                </div>
                                <div>
                                    <a href="{{route('front-end.detail-news', ['slug'=>$post->slug])}}" class="btn-detail">Chi tiết <img class="img-muiten" src="/hi-tech/images/muiten2.png" alt=""></a>
                                </div>
                            </div>
                        </div>

                    @else
                        <div class="row" style="margin-top: 25px;">
                            <div style="padding: 0;" class="col-md-4">
                                <a href="{{route('front-end.detail-news', ['slug'=>$post->slug])}}">
                                    <img style="height: 195px" src="{{$post->image_path}}" class="a w-100" alt="">
                                </a>

                            </div>
                            <div class="col-md-8 pr-md-0 z">
                                <div class="title-du-an2"><a href="{{route('front-end.detail-news', ['slug'=>$post->slug])}}">{{$post->title}}</a></div>
                                <div class="time"><i class="far fa-clock"></i>&nbsp;{{ $post->created_at->format('Y-m-d') }}</div>
                                <div class="noi-dung-du-an">
                                    {{\Illuminate\Support\Str::limit($post->summary, 150)}}
                                </div>
                                <div>
                                    <a href="{{route('front-end.detail-news', ['slug'=>$post->slug])}}" class="btn-detail" >
                                        Chi tiết
                                        <img class="img-muiten" src="/hi-tech/images/muiten2.png" alt="">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <hr>
                @endif

                @endforeach
                <nav style="margin: 30px 0;">
                    {{$posts->links()}}
                </nav>
            </div>
            @include('front-end.layout.news-product-hot')
        </div>
    </section>
@endsection
