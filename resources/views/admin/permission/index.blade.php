@extends("admin.layout.main")
@section('title')
    <title>Danh sách permission</title>
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
    <script src="/admin_file/js/permission/update.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    <script>
        var $disabledResults = $(".select-cate");
        $disabledResults.select2();
    </script>
@endsection
@section('content')
        <!-- Content Header (Page header) -->

        <!-- /.content-header -->
        @include('admin.layout.content-header', ['title'=>"Danh sách permission", 'path_chird'=>['permission'], 'route'=>['per.index']])
        <!-- Main content -->

        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">

                        <!-- /.card-header -->
                        <div class="card-body">
                            <button class="btn btn-primary float-lg-right mb-3" data-toggle="modal" data-target="#myModal">
                                <i class="fas fa-plus-square"></i> Thêm permission
                            </button>
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
                                        @if($value->parentPer == null)
                                            <td>Đây là danh mục cha</td>
                                        @else
                                            <td>{{$value->parentPer->name}}</td>
                                        @endif
                                        <td style="text-align: center;" width="20%">
                                            <button title="Cập nhật" type="button" data-status="update" data-url="{{route('per.update', ['id'=>$value->id])}}" class="btn btn-success act_update"><i class="fas fa-edit"></i></button>
                                            <button title="Xóa" type="button" data-url="{{route('per.delete', ['id'=>$value->id])}}" class="btn btn-danger act-del"><i class="fas fa-trash-alt"></i></button>
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
        <div class="modal" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Thêm permission</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <!-- Modal body -->
                        <div class="modal-body">
                            <form method="post" action="{{route('per.add')}}" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label>Tên permission</label>
                                    <input name="name" placeholder="Nhập tên permission" type=text" class="form-control" >
                                </div>
                                <div class="form-group">
                                    <label>Mô tả</label>
                                    <input name="des" placeholder="Nhập tên permission" type=text" class="form-control" >
                                </div>
                                <div class="form-group">
                                    <label>Key code</label>
                                    <input name="key_code" placeholder="Nhập tên permission" type=text" class="form-control" >
                                </div>
                                <div class="form-group">
                                    <label>Danh mục cha</label>
                                    <select name="parent_id" class="form-control select-cate">
                                        <option value="0">Đây là danh mục cha</option>
                                        {!! $htmlListpermission !!}
                                    </select>
                                </div>
                                <input class="select-action" type="hidden" name="action">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                        <!-- Modal footer -->
                    </div>
                </div>
            </div>
        <div class="modal" id="myModal2">
            <div class="modal-dialog">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Cập nhật permission</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body">
                        <form method="post" action="{{route('per.postUpdate')}}" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label>Tên permission</label>
                                <input name="name" placeholder="Nhập tên permission" type=text" class="form-control name-per" >
                            </div>
                            <div class="form-group">
                                <label>Mô tả</label>
                                <input name="des" placeholder="Nhập tên permission" type=text" class="form-control des-per" >
                            </div>
                            <div class="form-group">
                                <label>Key code</label>
                                <input name="key_code" placeholder="Nhập tên permission" type=text" class="form-control key-code-per" >
                            </div>
                            <div class="form-group">
                                <label>Danh mục cha</label>
                                <select name="parent_id" class="form-control js-example-basic-single select-per">
                                    <option value="0">Đây là danh mục cha</option>
                                    {!! $htmlListpermission !!}
                                </select>

                            </div>
                            <div class="form-group">
                                <input type="hidden" name="id" id="id-per">
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                    <!-- Modal footer -->
                </div>
            </div>
        </div>
        <!-- /.content -->
@endsection
