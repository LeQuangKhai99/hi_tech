@extends("admin.layout.main")
@section('title')
    <title>Danh sách sản phẩm</title>
@endsection
@section('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
@endsection
@section('js')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    @if (Session::get('add-oke'))
        <script>
            Swal.fire(
                'Thành công!',
                'Dữ liệu mới đã được thêm vào database!',
                'success'
            )
        </script>

    @endif
    @if (Session::get('update-oke'))
        <script>
            Swal.fire(
                'Thành công!',
                'Dữ liệu đã được cập nhật vào database!',
                'success'
            )
        </script>

    @endif
    <script src="/admin_file/js/category/delete.js"></script>
@endsection
@section('content')
    <!-- Content Header (Page header) -->

    <!-- /.content-header -->
    @include('admin.layout.content-header', ['title'=>"Danh sách sản phẩm", 'path_chird'=>['Product'], 'route'=>['product.index']])
    <!-- Main content -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">

                    <!-- /.card-header -->
                    <div class="card-body">
                        <a href="{{route('product.add')}}" class="btn btn-primary float-lg-right mb-3">
                            <i class="fas fa-plus-square"></i> Thêm sản phẩm
                        </a>
                        <a href="{{route('product.trash')}}" class="btn btn-primary float-lg-right mb-3 mr-4">
                            <i class="fas fa-trash-alt"></i> Thùng rác
                        </a>
                        <table id="example2" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>STT</th>
                                <th>Tên</th>
                                <th>Mẫu</th>
                                <th>Thương hiệu</th>
                                <th>Loại sản phẩm</th>
                                <th>Người tạo</th>
                                <th>Hình ảnh</th>
                                <th>Hành động</th>
                            </tr>
                            </thead>
                            <tbody>

                            @php
                                $i = 0;
                            @endphp
                            @foreach($products as $value)
                                <tr>
                                    <td>{{++$i}}</td>
                                    <td>{{$value->name}}</td>
                                    <td>{{$value->model == null ? 'Trống' : $value->model}}</td>
                                    <td>{{$value->brand == null ? 'Trống' : $value->brand->name}}</td>
                                    <td>{{$value->category == null ? 'Trống' : $value->category->name}}</td>
                                    <td>{{$value->user->name}}</td>
                                    <td>
                                        @if($value->image_path != null)
                                            <img style="height: 100px; width: 90px" src="{{$value->image_path}}" alt="">
                                        @else
                                            Trống
                                        @endif
                                    </td>
                                    <td style="text-align: center" width="20%">
                                        <a title="Xem chi tiết" href="{{route('product.view', ['id'=>$value->id])}}" class="btn btn-info"><i class="fas fa-eye"></i></a>
                                        <a href="{{route('product.update', ['id'=>$value->id])}}" title="Cập nhật" type="button" class="btn btn-success act_update"><i class="fas fa-edit"></i></a>
                                        <button title="Xóa" type="button" data-url="{{route('product.delete', ['id'=>$value->id])}}" class="btn btn-danger act-del"><i class="fas fa-trash-alt"></i></button>
                                    </td>
                                </tr>
                            @endforeach

                            </tbody>
                        </table>
                        <nav aria-label="Page navigation example" class="float-right mt-3">
                            <ul class="pagination">
                                {{$products->links()}}
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
