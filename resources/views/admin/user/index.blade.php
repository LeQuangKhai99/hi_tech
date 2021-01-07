@extends("admin.layout.main")
@section('title')
    <title>Danh sách user</title>
@endsection
@section('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet"/>
@endsection
@section('js')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
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
    <script src="/admin_file/js/user/update.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    <script>
        var $disabledResults = $(".select-role");
        $disabledResults.select2();
    </script>
@endsection
@section('content')
    <!-- Content Header (Page header) -->

    <!-- /.content-header -->
    @include('admin.layout.content-header', ['title'=>"Danh sách user", 'path_chird'=>['user'], 'route'=>['user.index']])
    <!-- Main content -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">

                    <!-- /.card-header -->
                    <div class="card-body">
                        <button class="btn btn-primary float-lg-right mb-3" data-toggle="modal" data-target="#myModal">
                            <i class="fas fa-plus-square"></i> Thêm user
                        </button>
                        <a href="{{route('user.trash')}}" class="btn btn-primary float-lg-right mb-3 mr-4">
                            <i class="fas fa-trash-alt"></i> Thùng rác
                        </a>
                        <table id="example2" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>STT</th>
                                <th>Tên</th>
                                <th>Email</th>
                                <th>Vai trò</th>
                                <th>Hành động</th>
                            </tr>
                            </thead>
                            <tbody>

                            @php
                                $i = 0;
                            @endphp
                            @foreach($users as $value)
                                <tr>
                                    <td>{{++$i}}</td>
                                    <td>{{$value->name}}</td>
                                    <td>{{$value->email}}</td>
                                    <td>
                                        @if(count($value->roles) == 0)
                                            {{'Trống'}}
                                        @else
                                            @foreach($value->roles as $role)
                                                <div>
                                                    {{'-- '.$role->name}}
                                                </div>
                                            @endforeach
                                        @endif
                                    </td>
                                    <td style="text-align: center;" width="20%">
                                        <button title="Cập nhật" type="button"
                                                data-url="{{route('user.update', ['id'=>$value->id])}}"
                                                class="btn btn-success act_update"><i class="fas fa-edit"></i></button>
                                        <button title="Xóa" type="button"
                                                data-url="{{route('user.delete', ['id'=>$value->id])}}"
                                                class="btn btn-danger act-del"><i class="fas fa-trash-alt"></i></button>
                                    </td>
                                </tr>
                            @endforeach

                            </tbody>
                        </table>
                        <nav aria-label="Page navigation example" class="float-right mt-3">
                            <ul class="pagination">
                                {{$users->links()}}
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
                    <h4 class="modal-title">Thêm user</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <form method="post" action="{{route('user.add')}}" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label>Tên user</label>
                            <input name="name" placeholder="Nhập tên user" type=text" class="form-control">
                            @error('name')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label>Email</label>
                            <input name="email" placeholder="Nhập email" type=email" class="form-control">
                        </div>
                        @error('email')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                        <div class="form-group">
                            <label>Phone</label>
                            <input name="phone" placeholder="Nhập số điện thoại" type=email" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <input name="address" placeholder="Nhập địa chỉ" type=email" class="form-control">
                        </div>
                        <div class="mul-address">

                        </div>
                        <div style="text-align: center">
                            <button type="button" class="btn btn-success btn-add-address">Thêm địa chỉ </button>
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu</label>
                            <input name="password" type="password" placeholder="Nhập mật khẩu" class="form-control">
                        </div>
                        @error('password')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                        <div class="form-group">
                            <label>Xác nhận mật khẩu</label>
                            <input name="password_confirmation" type="password" placeholder="Nhập mật khẩu" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Role</label>
                            <select class="form-control select-role" name="roles[]" multiple>
                                @foreach($roles as $role)
                                    <option value="{{$role->id}}">{{$role->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <input class="select-action" type="hidden" name="admin" value="admin">
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
                    <h4 class="modal-title">Cập nhật user</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <!-- Modal body -->
                <div class="modal-body">
                    <form method="post" action="{{route('user.postUpdate')}}" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label>Tên user</label>
                            <input name="name" placeholder="Nhập tên user" type=text" class="form-control name-user">
                            @error('name')
                            <div class="alert alert-danger">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <input name="address" placeholder="Nhập địa chỉ" type=text" class="form-control address-user">
                        </div>
                        <div class="mul-address">

                        </div>
                        <div style="text-align: center">
                            <button type="button" class="btn btn-success btn-add-address">Thêm địa chỉ </button>
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input name="email" placeholder="Nhập email" type=email" class="form-control email-user">
                        </div>
                        @error('email')
                        <div class="alert alert-danger">{{ $message }}</div>
                        @enderror
                        <div class="form-group">
                            <label>Phone</label>
                            <input name="phone" placeholder="Nhập số điện thoại" type=text" class="form-control phone-user">
                        </div>
                        <div class="form-group">
                            <label>Role</label>
                            <select class="form-control select-role" name="roles[]" multiple>
                                @foreach($roles as $role)
                                    <option value="{{$role->name}}">{{$role->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <input class="select-action" type="hidden" name="admin" value="admin">
                        <input class="select-action id-user" type="hidden" name="id">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
                <!-- Modal footer -->
            </div>
        </div>
    </div>
    <!-- /.content -->
@endsection
