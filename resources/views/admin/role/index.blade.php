@extends("admin.layout.main")
@section('title')
    <title>Danh sách role</title>
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
    <script src="/admin_file/js/role/update.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    <script>
        var $disabledResults = $(".select-cate");
        $disabledResults.select2();
    </script>
@endsection
@section('content')
    <!-- Content Header (Page header) -->

    <!-- /.content-header -->
    @include('admin.layout.content-header', ['title'=>"Danh sách role", 'path_chird'=>['role'], 'route'=>['role.index']])
    <!-- Main content -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">

                    <!-- /.card-header -->
                    <div class="card-body">
                        <a href="{{route('role.add')}}" class="btn btn-primary float-lg-right mb-3">
                            <i class="fas fa-plus-square"></i> Thêm role
                        </a>
                        <a href="{{route('role.trash')}}" class="btn btn-primary float-lg-right mb-3 mr-4">
                            <i class="fas fa-trash-alt"></i> Thùng rác
                        </a>
                        <table id="example2" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>STT</th>
                                <th>Tên</th>
                                <th>Mô tả</th>
                                <th>Người tạo</th>
                                <th>Hành động</th>
                            </tr>
                            </thead>
                            <tbody>

                            @php
                                $i = 0;
                            @endphp
                            @foreach($roles as $value)
                                <tr>
                                    <td>{{++$i}}</td>
                                    <td>{{$value->name}}</td>
                                    <td>{{$value->des}}</td>
                                    <td>{{$value->user->name ?? 'trống'}}</td>
                                    <td style="text-align: center;" width="20%">
                                        <a href="{{route('role.update', ['id'=>$value->id])}}" title="Cập nhật" type="button" class="btn btn-success"><i class="fas fa-edit"></i></a>
                                        <button title="Xóa" type="button" data-url="{{route('role.delete', ['id'=>$value->id])}}" class="btn btn-danger act-del"><i class="fas fa-trash-alt"></i></button>
                                    </td>
                                </tr>
                            @endforeach

                            </tbody>
                        </table>
                        <nav aria-label="Page navigation example" class="float-right mt-3">
                            <ul class="pagination">
                                {{$roles->links()}}
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
