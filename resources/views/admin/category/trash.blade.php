@extends("admin.layout.main")
@section('title')
    <title>Danh sách loại sản phẩm đã xóa</title>
@endsection
@section('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
@endsection
@section('js')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="/admin_file/js/category/restore.js"></script>
    <script src="/admin_file/js/category/delete.js"></script>
@endsection
@section('content')
    <!-- Content Header (Page header) -->

    <!-- /.content-header -->
    @include('admin.layout.content-header', ['title'=>"Danh sách loại sản phẩm đã xóa", 'path_chird'=>['category', 'trash'], 'route'=>['category.index', 'category.trash']])
    <!-- Main content -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">

                    <!-- /.card-header -->
                    <div class="card-body">
                        <button class="btn btn-primary float-lg-right mb-3" data-toggle="modal" data-target="#myModal">
                            <i class="fas fa-plus-square"></i> Thêm sản phẩm
                        </button>
                        <a href="{{route('category.trash')}}" class="btn btn-primary float-lg-right mb-3 mr-4">
                            <i class="fas fa-trash-alt"></i> Thùng rác
                        </a>
                        <table id="example2" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>STT</th>
                                <th>Tên</th>
                                <th>Tên không dấu</th>
                                <th>Danh mục lớn</th>
                                <th>Người tạo</th>
                                <th>Hình ảnh</th>
                                <th>Hành động</th>
                            </tr>
                            </thead>
                            <tbody>

                            @php
                                $i = 0;
                            @endphp
                            @foreach($categories as $value)
                                <tr>
                                    <td>{{++$i}}</td>
                                    <td>{{$value->name}}</td>
                                    <td>{{$value->slug}}</td>
                                    @if($value->parentCate == null)
                                        <td>Đây là danh mục cha</td>
                                    @else
                                        <td>{{$value->parentCate->name}}</td>
                                    @endif
                                    <td>{{$value->user->name ?? 'trống'}}</td>
                                    <td>
                                        @if($value->image_path == null)
                                            Trống
                                        @else
                                            <img style="height: 100px; width: 90px" src="{{$value->image_path}}" alt="">
                                        @endif
                                    </td>
                                    <td width="25%">
                                        <button type="button" data-url="{{route('category.restore', ['id'=>$value->id])}}" class="btn btn-success act-restore"><i class="fas fa-sync-alt"></i> Khôi phục</button>
                                        <button type="button" data-url="{{route('category.forceDelete', ['id'=>$value->id])}}" class="btn btn-danger act-del"><i class="fas fa-trash-alt"></i> Xóa</button>
                                    </td>
                                </tr>
                            @endforeach

                            </tbody>
                        </table>
                        <nav aria-label="Page navigation example" class="float-right mt-3">
                            <ul class="pagination">
                                {{$categories->links()}}
                            </ul>
                        </nav>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

    </div>
    <!-- /.content -->
@endsection
