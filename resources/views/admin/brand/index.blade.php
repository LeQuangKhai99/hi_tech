@extends("admin.layout.main")
@section('title')
    <title>Danh sách hãng sản xuất</title>
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
    <script src="/admin_file/js/brand/update.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    <script>
        var $disabledResults = $(".select-cate");
        $disabledResults.select2();
    </script>
@endsection
@section('content')
        <!-- Content Header (Page header) -->

        <!-- /.content-header -->
        @include('admin.layout.content-header', ['title'=>"Danh sách hãng sản xuất", 'path_chird'=>['brand'], 'route'=>['brand.index']])
        <!-- Main content -->

        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">

                        <!-- /.card-header -->
                        <div class="card-body">
                            <button class="btn btn-primary float-lg-right mb-3" data-toggle="modal" data-target="#myModal">
                                <i class="fas fa-plus-square"></i> Thêm loại sản phẩm
                            </button>
                            <a href="{{route('brand.trash')}}" class="btn btn-primary float-lg-right mb-3 mr-4">
                                <i class="fas fa-trash-alt"></i> Thùng rác
                            </a>
                            <table id="example2" class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên</th>
                                    <th>Tên không dấu</th>
                                    <th>Người tạo</th>
                                    <th>Hình ảnh</th>
                                    <th>Hành động</th>
                                </tr>
                                </thead>
                                <tbody>

                                @php
                                    $i = 0;
                                @endphp
                                @foreach($brands as $value)
                                    <tr>
                                        <td>{{++$i}}</td>
                                        <td>{{$value->name}}</td>
                                        <td>{{$value->slug}}</td>
                                        <td>{{$value->user->name ?? 'trống'}}</td>
                                        <td>
                                            @if($value->image_path != null)
                                                <img style="height: 100px; width: 90px" src="{{$value->image_path}}" alt="">
                                            @else
                                                Trống
                                                @endif
                                        </td>
                                        <td style="text-align: center;" width="20%">
                                            <button title="Cập nhật" type="button" data-status="update" data-url="{{route('brand.update', ['id'=>$value->id])}}" class="btn btn-success act_update"><i class="fas fa-edit"></i></button>
                                            <button title="Xóa" type="button" data-url="{{route('brand.delete', ['id'=>$value->id])}}" class="btn btn-danger act-del"><i class="fas fa-trash-alt"></i></button>
                                        </td>
                                    </tr>
                                @endforeach

                                </tbody>
                            </table>
                            <nav aria-label="Page navigation example" class="float-right mt-3">
                                <ul class="pagination">
                                    {{$brands->links()}}
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
                            <h4 class="modal-title">Thêm loại sản phẩm</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <!-- Modal body -->
                        <div class="modal-body">
                            <form method="post" action="{{route('brand.add')}}" enctype="multipart/form-data">
                                @csrf
                                <div class="form-group">
                                    <label>Tên hãng sản xuất</label>
                                    <input name="name" placeholder="Nhập tên hãng sản xuất" type=text" class="form-control" >
                                </div>
                                <div class="form-group">
                                    <label>Hình ảnh</label>
                                    <input type="file" name="image" class="form-control-file">
                                </div>
                                <div class="form-group">
                                    <label>Người tạo</label>
                                    <input disabled value="{{auth()->user()->name}}" type=text" class="form-control" >
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
                        <h4 class="modal-title">Cập nhật loại sản phẩm</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body">
                        <form method="post" action="{{route('brand.postUpdate')}}" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label>Tên loại sản phẩm</label>
                                <input name="name" placeholder="Nhập tên loại sản phẩm" type=text" class="form-control name-brand" >
                                @error('name')
                                <div class="alert alert-danger alert-custom">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh</label>
                                <div class="mb-2 update-image" style="position: relative">

                                </div>
                            </div>
                            <div class="form-group">
                                <label>Người tạo</label>
                                <input disabled type=text" class="form-control user-update-brand" >
                                <input type="hidden" name="id" id="id-brand">
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
