@extends("admin.layout.main")
@section('title')
    <title>Thêm bài viết</title>
@endsection
@section('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
@endsection
@section('js')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    <script src="{{ asset('ckeditor/ckeditor.js') }}"></script>
    <script>
        CKEDITOR.replace( 'editor2', {
            filebrowserBrowseUrl: '{{ asset('ckfinder/ckfinder.html') }}',
            filebrowserImageBrowseUrl: '{{ asset('ckfinder/ckfinder.html?type=Images') }}',
            filebrowserFlashBrowseUrl: '{{ asset('ckfinder/ckfinder.html?type=Flash') }}',
            filebrowserUploadUrl: '{{ asset('ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files') }}',
            filebrowserImageUploadUrl: '{{ asset('ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images') }}',
            filebrowserFlashUploadUrl: '{{ asset('ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash') }}'
        } );
    </script>

@endsection
@section('content')
    <!-- Content Header (Page header) -->

    <!-- /.content-header -->
    @include('admin.layout.content-header', ['title'=>"Thêm bài viết", 'path_chird'=>['Post', 'Add'], 'route'=>['product.index', 'product.add']])
    <!-- Main content -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">

                    <!-- /.card-header -->
                    <div class="card-body">
                        <form action="{{route('project.add')}}" method="post" enctype="multipart/form-data" >
                            @csrf
                            <div class="form-group">
                                <label>Tiêu đề</label>
                                <input name="title" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Tóm tắt</label>
                                <input name="summary" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nội dung</label>
                                <textarea rows="5" name="content1" id="editor2" type="text" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh</label>
                                <input name="image" type="file" class="form-control-file"/>
                            </div>
                            <div class="form-group">
                                <label>Người tạo</label>
                                <input type="text" class="form-control" disabled value="{{auth()->user()->name}}"/>
                            </div>
                            <input type="submit" class="btn btn-primary" value="Submit"/>
                        </form>
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
