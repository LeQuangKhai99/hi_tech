@extends("admin.layout.main")
@section('title')
    <title>Cập nhật dự án</title>
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

        function delImg(id){
            $('.del-img-'+id).parent().remove();
            if(id == 'main'){
                $('.update-image').html('Bạn đã xóa hình ảnh');
            }
        }
    </script>

@endsection
@section('content')
    <!-- Content Header (Page header) -->

    <!-- /.content-header -->
    @include('admin.layout.content-header', ['title'=>"Cập nhật dự án", 'path_chird'=>['Project'], 'route'=>['project.index']])
    <!-- Main content -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">

                    <!-- /.card-header -->
                    <div class="card-body">
                        <form action="{{route('project.postUpdate', ['id'=>$project->id])}}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label>Tiêu đề</label>
                                <input  value="{{$project->title}}" name="title" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nội dung</label>
                                <textarea  rows="5" name="content1" id="editor2" type="text" class="form-control">{{$project->content}}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh chính</label>
                                @if($project->image_path != null)
                                    <div class="update-image">
                                        <div style="position: relative; margin: 0 10px">
                                            <div class="del-img-main del-img" onclick="delImg('main')">
                                                <i class="fas fa-times"></i>
                                            </div>
                                            <input type="hidden" name="is_isset_image" value="yes">
                                            <img src="{{$project->image_path}}" style="width: 20%; margin: 0 0 20px 0" height="20%" alt="">
                                        </div>
                                    </div>
                                @endif
                                <input type="file" name="image" class="form-control-file">
                            </div>
                            <div class="form-group">
                                <label>Người tạo</label>
                                <input disabled type="text" class="form-control"  value="{{$project->user->name}}"/>
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
