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
            <li class="w3-container nav-item btn-list-news {{$page == 'product' ? 'active' : ''}}">
                <div class="w3-dropdown-hover" style="background-color: #ffffff">
                    <a class="nav-link ">SẢN PHẨM</a>
                    <div class="w3-dropdown-content w3-bar-block w3-border">
                        @foreach($parentCates as $key => $parentCate)
                        <a href="{{route('front-end.list-product', ['slug'=>$parentCate->slug])}}" class="w3-bar-item w3-button {{$key == count($parentCates) ? 'w3-border-none' : ''}}">{{$parentCate->name}}</a>
                        @endforeach
                    </div>
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
            @if(auth()->user() != null)
                <li class="w3-container nav-item btn-list-news {{$page == 'info' ? 'active' : ''}}">
                    <div class="w3-dropdown-hover" style="background-color: #ffffff">
                        <a class="nav-link "><i class="fas fa-user"></i></a>
                        <div class="w3-dropdown-content w3-bar-block w3-border">
                            <a href="{{route('front-end.edit-info')}}" class="w3-bar-item w3-button">Cập nhật thông tin</a>
                            <a href="{{route('auth.logout')}}" class="w3-bar-item w3-button">Đăng xuất</a>
                        </div>
                    </div>
                </li>
            @else
                <li class="nav-item ">
                    <a class="nav-link" href="{{route('auth.login')}}">ĐĂNG NHẬP</a>
                </li>
            @endif
            <li class="nav-item {{$page == 'cart' ? 'active' : ''}}">
                <a href="{{route('front-end.cart')}}" class="nav-link" href="">
                    <i class="fas fa-shopping-cart"></i>
                </a>
            </li>
        </ul>
        <form action="{{route('front-end.search-product')}}" method="get" style="float: right" class="form-inline my-2 my-lg-0 search">
            <input class="form-control key-word" type="search" name="key" placeholder="Tìm kiếm sản phẩm..." aria-label="">
            <button class="btn my-2 my-sm-0 " type="submit" style="margin-right: 10px">
                <i class="fas fa-search"></i>
            </button>
        </form>
    </div>
</nav>

