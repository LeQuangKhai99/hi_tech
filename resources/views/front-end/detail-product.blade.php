@extends('front-end.layout.main')
@section('css')
    <link rel="stylesheet" href="/hi-tech/content/css/list-product-cate.css">
    <link rel="stylesheet" href="/hi-tech/content/css/product-detail.css">
@endsection
@section('js')
    <script src="/hi-tech/content/js/ToastMess.js"></script>
    @if(Session::get('err') != null)
        <script>
            Toast.fire({
                icon: 'error',
                title: "<?php echo Session::get('err')?>"
            })
        </script>
    @endif
    <script>
        $('.img-detail').on('click', function (){
            var src = $(this).attr('src');
            $('.img-main').attr('src', src)
        })
    </script>
@endsection
@section('content')
    <section id="nav-link" class="w-100">
        <a href="{{route('home')}}">Trang chủ</a>
        <i class="fa fa-angle-right" aria-hidden="true"></i>
        <a href="{{route('front-end.list-cate-product', ['slug'=>$cate->parentCate()->whereNull('deleted_at')->first()->slug])}}">{{$cate->parentCate()->whereNull('deleted_at')->first()->name}}</a>
        <i class="fa fa-angle-right" aria-hidden="true"></i>
        <a href="{{route('front-end.list-product', ['slug'=>$cate->slug])}}">{{$cate->name}}</a>
        <i class="fa fa-angle-right" aria-hidden="true"></i>
        <a>{{$product->name}}</a>
    </section>
    @include('front-end.layout.brand')
    <section id="dich-vu" class="container-fluid" style="margin-top:20px">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-9 content-sp">
                <div class="row">
                    <div class="col-md-5">
                        <div>
                            <img class="img-main" src="{{$product->image_path}}" alt="">
                        </div>
                        <div>
                            <img class="img-detail" src="{{$product->image_path}}">
                            @foreach($product->images()->get() as $image)
                                <img class="img-detail" src="{{$image->image_path}}">
                            @endforeach
                        </div>
                    </div>
                    <div class="view-sp col-lg-7 col-md-7 col-sm-6 col-xs-12">
                        <h1 class="titH3">{{$product->name}}</h1>
                        <div class="detail">
                            <p class="col-md-6"><b>Mẫu sản phẩm  :</b>{{$product->model == null ? 'Trống' : $product->model}}</p>
                            <p class="col-md-6"><b>Hãng sản xuất :</b>{{$product->brand == null ? 'Trống' : $product->brand->name}}</p>
                        </div>
                        <div class="detail">
                            <p class="col-md-6"><b>Nước sản xuất :</b>{{$product->made_by == null ? 'Trống' : $product->made_by}}</p>
                            <p class="col-md-6"><b>Loại sản phẩm :</b>{{$product->category == null ? 'Trống' : $product->category->name}}</p>
                        </div>

                        <div class="view-detail">
                            {!! $product->des !!}
                        </div>
                        <div class="view-mxh">
                            <a style="color: #ffffff !important;" href="javascript:" class="btn-book add-to-cart" id="booking" data-id="171" data-name="Hệ thống Monitor trung tâm Omni (Mỹ)" data-quality="1">
                                <i class="fa fa-envelope" aria-hidden="true"></i>Liên hệ với chúng tôi
                            </a>
                            <div class="link_mxh">
                                <div class="likeshare">
                                    <div class="share share-container">
                                        <ul>
                                            <li><a style="color: #125ab1 !important;" rel="nofollow" href="javascript:;" title=""><i class="fab fa-facebook-square"></i></a></li>
                                            <li><a rel="nofollow" href="javascript:;" title=""><i style="color: #1da1f2" class="fab fa-twitter-square"></i></a></li>
                                            <li><a rel="nofollow" href="javascript:;" title=""><i style="color: #dd4b39" class="fab fa-google-plus-square"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <p>
                            <span class="tag">Tags:</span>
                            @foreach($product->tags()->whereNull('deleted_at')->get() as $tag)
                            <a title="Hệ thống Monitor trung tâm Omni">{{$tag->name.', '}}</a>
                            @endforeach
                        </p>
                        <a href="{{route('front-end.add-cart', ['id'=>$product->id])}}" class="btn btn-success">Success</a>
                    </div>
                </div>
                <div>
                    <div class="detail-sp">
                        <div class="titPgCt">
                            <p class="titP4">Thông tin chi tiết</p>
                        </div>
                        <div class="_detail">
                            {!! $product->content !!}
                        </div>
                    </div>
                </div>
                @if(count($productRelated) > 0)
                <div>
                    <div class="dongloai">
                        <div class="titPgCt">
                            <p class="titP4">Sản phẩm cùng loại</p>
                        </div>
                        <div class="support">
                            <div class="breas">
                                @foreach($productRelated as $product)
                                    <div style="padding: 0" class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
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
                </div>
                @endif
            </div>

            @include('front-end.layout.news-product-hot')
        </div>
    </section>
@endsection
