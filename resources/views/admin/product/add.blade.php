@extends("admin.layout.main")
@section('title')
    <title>Thêm sản phẩm</title>
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
            tokenSeparators: [',']
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

        CKEDITOR.replace( 'editor2', {
            filebrowserBrowseUrl: '{{ asset('ckfinder/ckfinder.html') }}',
            filebrowserImageBrowseUrl: '{{ asset('ckfinder/ckfinder.html?type=Images') }}',
            filebrowserFlashBrowseUrl: '{{ asset('ckfinder/ckfinder.html?type=Flash') }}',
            filebrowserUploadUrl: '{{ asset('ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files') }}',
            filebrowserImageUploadUrl: '{{ asset('ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images') }}',
            filebrowserFlashUploadUrl: '{{ asset('ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash') }}'
        } );


        $(function(){
            $("input[type='submit']").click(function(e){
                var $fileUpload = $(".mul-file");
                if (parseInt($fileUpload.get(0).files.length)>5){
                    alert("Bạn chỉ có thể upload tối đa 5 ảnh");
                    e.preventDefault();
                }
            });
        });
    </script>

@endsection
@section('content')
    <!-- Content Header (Page header) -->

    <!-- /.content-header -->
    @include('admin.layout.content-header', ['title'=>"Thêm sản phẩm", 'path_chird'=>['Product', 'Add'], 'route'=>['product.index', 'product.add']])
    <!-- Main content -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">

                    <!-- /.card-header -->
                    <div class="card-body">
                        <form action="{{route('product.add')}}" method="post" enctype="multipart/form-data" >
                            @csrf
                            <div class="form-group">
                                <label>Tên sản phẩm</label>
                                <input name="name" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Giá sản phẩm</label>
                                <input name="price" type="number" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Model</label>
                                <input name="model" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Made by</label>
                                <input name="made_by" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Mô tả</label>
                                <textarea rows="5" name="des" type="text" id="editor1" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Nội dung</label>
                                <textarea rows="5" name="content1" id="editor2" type="text" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh chính</label>
                                <input name="image" type="file" class="form-control-file"/>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh chi tiết</label>
                                <input name="images[]" type="file" class="form-control-file mul-file" multiple/>
                            </div>
                            <div class="form-group">
                                <label>Loại sản phẩm</label>
                                <select class="form-control select-cate" name="cate">
                                    {!! $htmlCate !!}
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Thương hiệu</label>
                                <select class="form-control select-cate" name="brand">
                                    @foreach($brands as $brand)
                                        <option value="{{$brand->id}}">{{$brand->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Tags</label>
                                <select class="form-control select-tag" name="tags[]" multiple>
                                    @foreach($tags as $tag)
                                        <option value="{{$tag->name}}">{{$tag->name}}</option>
                                    @endforeach
                                </select>
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
