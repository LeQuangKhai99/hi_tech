@extends("admin.layout.main")
@section('title')
    <title>Thêm role</title>
@endsection
@section('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
@endsection
@section('js')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    <script>
        $('.checkbox_parent').on('click', function (){
            $(this).parents('.card').find('.checkbox_children').prop('checked', $(this).prop('checked'));
        })
        $('.check-all').on('click', function (){
            $('.checkbox_parent').prop('checked', $(this).prop('checked'));
            $('.checkbox_children').prop('checked', $(this).prop('checked'));
        })
        $('.checkbox_children').on('click', function (){
            var total = $(this).parents('.card').find('.row .card-body').length;
            var checked = $(this).parents('.card').find('.checkbox_children:checked').length;

            if (total == checked){
                $(this).parents('.card').find('.checkbox_parent').prop('checked', 'checked');
            }
            else {
                $(this).parents('.card').find('.checkbox_parent').prop('checked', '');
            }
        })
    </script>
@endsection
@section('content')
    <!-- Content Header (Page header) -->

    <!-- /.content-header -->
    @include('admin.layout.content-header', ['title'=>"Thêm role", 'path_chird'=>['Role', 'Add'], 'route'=>['role.index', 'role.add']])
    <!-- Main content -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <form action="{{route('role.add')}}" method="post" enctype="multipart/form-data" >
                    @csrf
                    <div class="form-group">
                        <label>Tên role</label>
                        <input name="name" type="text" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Mô tả</label>
                        <input name="des" type="text" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Người tạo</label>
                        <input type="text" class="form-control" disabled value="{{auth()->user()->name}}"/>
                    </div>
                    <label><input class="check-all" type="checkbox"></label>
                    check all
                    @foreach($parentPermission as $permission)
                        <div class="card col-md-12">
                            <div class="card-body" style="background-color: #18c3e2">
                                <h5 class="card-title">
                                    <label><input class="checkbox_parent" type="checkbox" value="{{$permission->id}}"></label>
                                    {{$permission->name}}

                                </h5>
                            </div>
                            <hr>

                            <div class="row">
                                @foreach($permission->PermissionChildren()->get() as $child)
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <label><input class="checkbox_children" name="permission_id[]" type="checkbox" value="{{$child->id}}"></label>
                                            {{$child->name}}
                                        </h5>
                                    </div>
                                @endforeach
                            </div>

                        </div>
                    @endforeach
                    <input type="submit" class="btn btn-primary" value="Submit"/>
                </form>
                <!-- /.card -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->

    </div>
    <!-- /.content -->
@endsection
