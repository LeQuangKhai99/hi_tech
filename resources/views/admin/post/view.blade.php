@extends("admin.layout.main")
@section('title')
    <title>Chi tiết bài viết</title>
@endsection
@section('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
@endsection
@section('js')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    <script>
        var $disabledResults = $(".select-cate");
        $disabledResults.select2();
    </script>
    <script>
        $(".select-tag").select2({
            tags: true,
            tokenSeparators: [',', ' ']
        })
    </script>
    <script src="{{ asset('ckeditor/ckeditor.js') }}"></script>
    <script>
        CKEDITOR.replace( 'editor1', {
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
    @include('admin.layout.content-header', ['title'=>"Chi tiết bài viết", 'path_chird'=>['Product'], 'route'=>['product.index']])
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
                                <label>Tiêu đề</label>
                                <input disabled value="{{$post->title}}" name="name" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Nội dung</label>
                                <textarea disabled rows="5" name="des" type="text" id="editor1" class="form-control">{{$post->content}}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh chính</label>
                                <div>
                                    @if($post->image_path != null)
                                        <img style="height: 200px; width: 150px" src="{{$post->image_path}}" alt="">
                                    @else
                                        Trống
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Loại bài viết</label>
                                <select class="form-control select-cate" name="cate">
                                    {!! $htmlCate !!}
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Người tạo</label>
                                <input type="text" class="form-control" disabled value="{{auth()->user()->name}}"/>
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
