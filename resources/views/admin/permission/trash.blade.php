@extends("admin.layout.main")
@section('title')
    <title>Danh sách permission đã xóa</title>
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
    @include('admin.layout.content-header', ['title'=>"Danh sách permission đã xóa", 'path_chird'=>['permission', 'trash'], 'route'=>['per.index', 'per.trash']])
    <!-- Main content -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">

                    <!-- /.card-header -->
                    <div class="card-body">
                        <a href="{{route('per.trash')}}" class="btn btn-primary float-lg-right mb-3 mr-4">
                            <i class="fas fa-trash-alt"></i> Thùng rác
                        </a>
                        <table id="example2" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>STT</th>
                                <th>Tên</th>
                                <th>Mô tả</th>
                                <th>Key code</th>
                                <th>Danh mục lớn</th>
                                <th>Hành động</th>
                            </tr>
                            </thead>
                            <tbody>

                            @php
                                $i = 0;
                            @endphp
                            @foreach($pers as $value)
                                <tr>
                                    <td>{{++$i}}</td>
                                    <td>{{$value->name}}</td>
                                    <td>{{$value->des}}</td>
                                    <td>{{$value->key_code}}</td>
                                    @if($value->parentCate == null)
                                        <td>Đây là danh mục cha</td>
                                    @else
                                        <td>{{$value->parentCate->name}}</td>
                                    @endif
                                    <td width="25%">
                                        <button type="button" data-url="{{route('per.restore', ['id'=>$value->id])}}" class="btn btn-success act-restore"><i class="fas fa-sync-alt"></i> Khôi phục</button>
                                        <button type="button" data-url="{{route('per.forceDelete', ['id'=>$value->id])}}" class="btn btn-danger act-del"><i class="fas fa-trash-alt"></i> Xóa</button>
                                    </td>
                                </tr>
                            @endforeach

                            </tbody>
                        </table>
                        <nav aria-label="Page navigation example" class="float-right mt-3">
                            <ul class="pagination">
                                {{$pers->links()}}
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
