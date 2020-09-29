<nav class="navbar navbar-expand-lg navbar-light ">
    <a class="navbar-brand d-block d-sm-none" href="#">TM HI-Tech</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item {{$page == 'home' ? 'active' : ''}}">
                <a class="nav-link" href="{{route('front-end.home')}}">TRANG CHỦ <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item {{$page == 'intro' ? 'active' : ''}}">
                <a class="nav-link" href="{{route('front-end.intro')}}">GIỚI THIỆU</a>
            </li>
            <li class="nav-item btn-list-product {{$page == 'product' ? 'active' : ''}}">
                <a class="nav-link" href="javascript:">SẢN PHẨM</a>
                <div class="dropdown-menu-product">
                    <div class="row list-menu-product">
                        @foreach($parentCates as $key => $parentCate)
                            @if($key == count($parentCates)-1)
                                <div class="col-md-2 list-cate-product last-col-menu">
                                    <ul>
                                        <li class="link-header-product"><a href="{{route('front-end.list-cate-product', ['slug'=>$parentCate->slug])}}">{{$parentCate->name}}</a></li>
                                        @foreach($parentCate->childCate()->whereNull('deleted_at')->limit(5)->get() as $child)
                                            <li class="link-normal-product"><a href="{{route('front-end.list-product', ['slug'=>$child->slug])}}">{{$child->name}}</a></li>
                                        @endforeach
                                        <li class="link-footer-product"><a href="{{route('front-end.list-cate-product', ['slug'=>$parentCate->slug])}}">Xem tất cả <i class="fas fa-caret-down"></i> </a></li>
                                    </ul>
                                </div>
                            @else
                                <div class="col-md-2 list-cate-product">
                                    <ul>
                                        <li class="link-header-product"><a href="{{route('front-end.list-cate-product', ['slug'=>$parentCate->slug])}}">{{$parentCate->name}}</a></li>
                                        @foreach($parentCate->childCate()->whereNull('deleted_at')->limit(5)->get() as $child)
                                            <li class="link-normal-product"><a href="{{route('front-end.list-product', ['slug'=>$child->slug])}}">{{$child->name}}</a></li>
                                        @endforeach
                                        <li class="link-footer-product"><a href="{{route('front-end.list-cate-product', ['slug'=>$parentCate->slug])}}">Xem tất cả <i class="fas fa-caret-down"></i> </a></li>
                                    </ul>
                                </div>
                            @endif

                        @endforeach
                    </div>
                    <img src="/hi-tech/images/menu4.png" alt="">
                </div>
            </li>
            <li class="nav-item {{$page == 'project' ? 'active' : ''}}">
                <a class="nav-link" href="{{route('front-end.list-project')}}">DỰ ÁN</a>
            </li>
            <li class="nav-item {{$page == 'service' ? 'active' : ''}}">
                <a class="nav-link" href="{{route('front-end.service')}}">DỊCH VỤ</a>
            </li>
            <li class="w3-container nav-item btn-list-news {{$page == 'news' ? 'active' : ''}}">
                <div class="w3-dropdown-hover" style="background-color: #ffffff">
                    <a class="nav-link ">TIN TỨC</a>
                    <div class="w3-dropdown-content w3-bar-block w3-border">
                        @foreach($postCates as $key => $postCate)
                        <a href="{{route('front-end.list-news', ['slug'=>$postCate->slug])}}" class="w3-bar-item w3-button {{$key == count($postCates) ? 'w3-border-none' : ''}}">{{$postCate->name}}</a>
                        @endforeach
                    </div>
                </div>
            </li>
            <li class="nav-item {{$page == 'recruitment' ? 'active' : ''}}">
                <a class="nav-link" href="{{route('front-end.recruitment')}}">TUYỂN DỤNG</a>
            </li>
            <li class="nav-item {{$page == 'contact' ? 'active' : ''}}">
                <a class="nav-link" href="{{route('front-end.contact')}}">LIÊN HỆ</a>
            </li>
        </ul>
        <form action="{{route('front-end.search-product')}}" method="get" class="form-inline my-2 my-lg-0 search">
            <input class="form-control mr-sm-2 key-word" type="search" name="key" placeholder="Tìm kiếm sản phẩm..." aria-label="">
            <button class="btn  my-2 my-sm-0 " type="submit">
                <i class="fas fa-search"></i>
            </button>
        </form>

    </div>

</nav>

