<div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
            <img src="/adminlte/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
            <a href="#" class="d-block">{{auth()->user()->name}}</a>
        </div>

    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
                 with font-awesome or any other icon font library -->
            <li class="nav-item">
                <a href="{{route('trang-chu')}}" class="nav-link {{$page == 'control' ? 'active' : ''}}">
                    <i class="nav-icon fas fa-tachometer-alt"></i>
                    <p>
                        Bảng điều khiển
                    </p>
                </a>
            </li>
            <li class="nav-header">Sản phẩm</li>
            <li class="nav-item">
                <a href="{{route('category.index')}}" class="nav-link {{$page == 'category' ? 'active' : ''}}">
                    <i class="nav-icon fas fa-list-alt"></i>
                    <p>
                        Danh mục sản phẩm
                    </p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{route('product.index')}}" class="nav-link {{$page == 'product' ? 'active' : ''}}">
                    <i class="nav-icon fab fa-battle-net"></i>
                    <p>
                        Sản phẩm
                    </p>
                </a>
            </li>
            <li class="nav-header">Đơn hàng</li>
            <li class="nav-item">
                <a href="{{route('order.index')}}" class="nav-link {{$page == 'order' ? 'active' : ''}}">
                    <i class="nav-icon fas fa-shopping-cart"></i>
                    <p>
                        Quản lý đơn hàng
                    </p>
                </a>
            </li>
            <li class="nav-header">Bài viết</li>
            <li class="nav-item">
                <a href="{{route('post-cate.index')}}" class="nav-link {{$page == 'post_cate' ? 'active' : ''}}">
                    <i class=" nav-icon fas fa-newspaper"></i>
                    <p>
                        Danh mục bài viết
                    </p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{route('post.index')}}" class="nav-link {{$page == 'post' ? 'active' : ''}}">
                    <i class="nav-icon far fa-file-word"></i>
                    <p>
                        Bài viết
                    </p>
                </a>
            </li>
            <li class="nav-header">Khác</li>
            <li class="nav-item">
                <a href="{{route('tag.index')}}" class="nav-link {{$page == 'tag' ? 'active' : ''}}">
                    <i class="nav-icon fas fa-tags"></i>
                    <p>
                        Tags
                    </p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{route('slide.index')}}" class="nav-link {{$page == 'slide' ? 'active' : ''}}">
                    <i class="nav-icon far fa-images"></i>
                    <p>
                        Slides
                    </p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{route('brand.index')}}" class="nav-link {{$page == 'brand' ? 'active' : ''}}">
                    <i class="nav-icon fas fa-copyright"></i>
                    <p>
                        Hãng sản xuất
                    </p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{route('intro.index')}}" class="nav-link {{$page == 'intro' ? 'active' : ''}}">
                    <i class="fas fa-bullhorn nav-icon"></i>
                    <p>
                        Giới thiệu
                    </p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{route('service.index')}}" class="nav-link {{$page == 'service' ? 'active' : ''}}">
                    <i class="fab fa-servicestack nav-icon"></i>
                    <p>
                         DỊch vụ
                    </p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{route('recruitment.index')}}" class="nav-link {{$page == 'recruitment' ? 'active' : ''}}">
                    <i class="fab fa-hire-a-helper nav-icon"></i>
                    <p>
                        Tuyển dụng
                    </p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{route('contact.index')}}" class="nav-link {{$page == 'contact' ? 'active' : ''}}">
                    <i class="nav-icon fas fa-address-card"></i>
                    <p>
                        Liên hệ
                    </p>
                </a>
            </li>
            <li class="nav-header">Dự án</li>
            <li class="nav-item">
                <a href="{{route('project.index')}}" class="nav-link {{$page == 'project' ? 'active' : ''}}">
                    <i class="fab fa-r-project nav-icon"></i>
                    <p>Project</p>
                </a>
            </li>
            <li class="nav-header">Thiết lập</li>
            <li class="nav-item">
                <a href="https://adminlte.io/docs/3.0" class="nav-link {{$page == 'logo' ? 'active' : ''}}">
                    <i class="nav-icon fab fa-angellist"></i>
                    <p>Logo</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link {{$page == 'hotline' ? 'active' : ''}}">
                    <i class="nav-icon fas fa-phone"></i>
                    <p>Hot Line</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{route('user.index')}}" class="nav-link {{$page == 'user' ? 'active' : ''}}">
                    <i class="nav-icon fas fa-user"></i>
                    <p>User</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{route('role.index')}}" class="nav-link {{$page == 'role' ? 'active' : ''}}">
                    <i class="nav-icon fas fa-user-cog"></i>
                    <p>Vai trò</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="{{route('per.index')}}" class="nav-link {{$page == 'permission' ? 'active' : ''}}">
                    <i class="nav-icon fas fa-user-shield"></i>
                    <p>Phân quyền</p>
                </a>
            </li>

            <div style="margin-top: 50px"></div>
        </ul>
    </nav>
    <!-- /.sidebar-menu -->
</div>
