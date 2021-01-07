@extends("admin.layout.main")
@section('title')
    <title>Danh sách dự án</title>
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
    @include('admin.layout.content-header', ['title'=>"Danh sách dự án", 'path_chird'=>['Project'], 'route'=>['project.index']])
    <!-- Main content -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">

                    <!-- /.card-header -->
                    <div class="card-body">
                        <a href="{{route('project.add')}}" class="btn btn-primary float-lg-right mb-3">
                            <i class="fas fa-plus-square"></i> Thêm dự án
                        </a>
                        <a href="{{route('project.trash')}}" class="btn btn-primary float-lg-right mb-3 mr-4">
                            <i class="fas fa-trash-alt"></i> Thùng rác
                        </a>
                        <table id="example2" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>STT</th>
                                <th>Tiêu đề</th>
                                <th>Tóm tắt</th>
                                <th>Người tạo</th>
                                <th>Hình ảnh</th>
                                <th>Hành động</th>
                            </tr>
                            </thead>
                            <tbody>

                            @php
                                $i = 0;
                            @endphp
                            @foreach($projects as $value)
                                <tr>
                                    <td>{{++$i}}</td>
                                    <td>{{\Illuminate\Support\Str::limit($value->title, 50)}}</td>
                                    <td>{{\Illuminate\Support\Str::limit($value->summary, 50)}}</td>
                                    <td>{{$value->user->name ?? 'trống'}}</td>
                                    <td>
                                        @if($value->image_path != null)
                                            <img style="height: 100px; width: 90px" src="{{$value->image_path}}" alt="">
                                        @else
                                            Trống
                                        @endif
                                    </td>
                                    <td style="text-align: center" width="20%">
                                        <a title="Xem chi tiết" href="{{route('project.view', ['id'=>$value->id])}}" class="btn btn-info"><i class="fas fa-eye"></i></a>
                                        <a href="{{route('project.update', ['id'=>$value->id])}}" title="Cập nhật" type="button" class="btn btn-success act_update"><i class="fas fa-edit"></i></a>
                                        <button title="Xóa" type="button" data-url="{{route('project.delete', ['id'=>$value->id])}}" class="btn btn-danger act-del"><i class="fas fa-trash-alt"></i></button>
                                    </td>
                                </tr>
                            @endforeach

                            </tbody>
                        </table>
                        <nav aria-label="Page navigation example" class="float-right mt-3">
                            <ul class="pagination">
                                {{$projects->links()}}
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
