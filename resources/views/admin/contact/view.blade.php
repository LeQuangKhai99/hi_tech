@extends("admin.layout.main")
@section('title')
    <title>Chi tiết liên hệ</title>
@endsection
@section('content')
    <!-- Content Header (Page header) -->

    <!-- /.content-header -->
    @include('admin.layout.content-header', ['title'=>"Chi tiết liên hệ", 'path_chird'=>['contact'], 'route'=>['contact.index']])
    <!-- Main content -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">

                    <!-- /.card-header -->
                    <div class="card-body">
                        <div>
                            @csrf
                            <div class="form-group">
                                <label>Tên liên hệ</label>
                                <input disabled value="{{$contact->name}}" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Điện thoại</label>
                                <input disabled value="{{$contact->phone}}" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input disabled value="{{$contact->email}}" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Địa chỉ</label>
                                <input disabled value="{{$contact->address}}" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Tiêu đề</label>
                                <textarea disabled rows="5" type="text" class="form-control">{{$contact->title}}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Nội dung</label>
                                <textarea disabled rows="5" type="text" class="form-control">{{$contact->content}}</textarea>
                            </div>
                        </div>
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
