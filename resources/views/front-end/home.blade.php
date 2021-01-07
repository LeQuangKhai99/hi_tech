@extends('front-end.layout.main')
@section('css')
    <link rel="stylesheet" href="/hi-tech/content/css/trangchu.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
@endsection
@if(Session::get('mess') == 'oke')
    <script>
        alert('Đặt hàng thành công, vui long đợi nhân viên gọi điện thoại xác nhận')
    </script>
@endif
@section('content')
@include('front-end.layout.brand')
    <div class="row">

        @php
            $x = 0;
            $position = 'anim-right';
            $bit = true;
        @endphp
        @foreach($parentCates as $key => $parentCate)
        <div class="col-sm-6 device">
            <img class="img-device" src="{{$parentCate->image_path}}" alt="">
            @if($key %2 == 0)
                @if($x == 0)
                    @php
                        $class = 'anim-left';
                        $x++;
                    @endphp
                @else
                    @php
                        $class = 'anim-right';
                        $x--;
                    @endphp
                @endif
            @else
                @if($x == 0)
                    @php
                        $class = 'anim-left';
                    @endphp
                @else
                    @php
                        $class = 'anim-right';
                    @endphp
                @endif

            @endif
            <div class="{{$class}}" style="background-color: {{$colors[$key]}};">
                <div class="left-content">
                    <p>Thiết bị</p>
                    <h3>{{$parentCate->name}}</h3>
                    <a href="{{route('front-end.list-cate-product', ['slug'=>$parentCate->slug])}}">Xem thêm <i class="fa fa-angle-right"></i> </a>
                </div>
            </div>
        </div>
        @endforeach
    </div>

    <div class="knowledge">
        <div class="knowledge-title">
            <h3>Kiến thức y tế</h3>
        </div>
        <div>
            <div class="container-fluid">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol style="height: 20px" class="carousel-indicators slide-knowledge">
                        @php
                            $dem = 0;
                        @endphp
                        @foreach($posts as $key=> $post)
                            @if($key % 4 == 0)
                                <li data-target="#myCarousel" data-slide-to="{{$dem}}" class="{{$key == 0 ? 'active' : ''}}"></li>
                                @php
                                    $dem++;
                                @endphp
                            @endif
                        @endforeach
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        @foreach($posts as $key=> $post)
                            @if($key % 4 == 0)
                                <div class="item {{$key == 0 ? 'active' : ''}}">
                                    @endif
                                    @if($key %2 == 0)
                                        <div class="col-sm-3 slide-content-item">
                                            <div class="card">
                                                <a href="{{route('front-end.detail-news', ['slug'=>$post->slug])}}">
                                                    <img src="{{$post->image_path}}" class="card-img-top radius-top" alt="...">
                                                </a>

                                                <div class="card-body radius-bottom">
                                                    <b><a href="{{route('front-end.detail-news', ['slug'=>$post->slug])}}" >{{$post->title}}</a></b>
                                                    <p>{{\Illuminate\Support\Str::limit($post->summary, 100)}}</p>
                                                </div>
                                            </div>
                                        </div>
                                    @else
                                        <div class="col-sm-3 slide-content-item">
                                            <div class="card">
                                                <div class="card-body radius-top">
                                                    <b><a href="{{route('front-end.detail-news', ['slug'=>$post->slug])}}" >{{$post->title}}</a></b>
                                                    <p>{{\Illuminate\Support\Str::limit($post->summary, 100)}}</p>
                                                </div>
                                                <a href="{{route('front-end.detail-news', ['slug'=>$post->slug])}}">
                                                    <img src="{{$post->image_path}}" class="card-img-top radius-bottom" alt="...">
                                                </a>

                                            </div>
                                        </div>
                                    @endif
                                    @if($key % 4 == 3)
                                </div>
                            @endif
                        @endforeach
                    </div>

                    <!-- Left and right controls -->
                </div>
            </div>
        </div>
    </div>
@endsection
