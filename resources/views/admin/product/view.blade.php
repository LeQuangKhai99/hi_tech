@extends("admin.layout.main")
@section('title')
    <title>Chi tiết sản phẩm</title>
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
    @include('admin.layout.content-header', ['title'=>"Chi tiết sản phẩm", 'path_chird'=>['Product'], 'route'=>['product.index']])
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
                                <label>Tên sản phẩm</label>
                                <input disabled value="{{$product->name}}" name="name" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Giá</label>
                                <input disabled value="{{$product->price}}" name="model" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Tồn kho</label>
                                <input disabled value="{{$product->inventory}}" name="model" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Model</label>
                                <input disabled value="{{$product->model}}" name="model" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Model</label>
                                <input disabled value="{{$product->model}}" name="model" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Made by</label>
                                <input disabled value="{{$product->made_by}}" name="made_by" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Mô tả</label>
                                <textarea disabled rows="5" name="des" type="text" id="editor1" class="form-control">{{$product->des}}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Nội dung</label>
                                <textarea disabled rows="5" name="content1" id="editor2" type="text" class="form-control">{{$product->content}}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh chính</label>
                                <div>
                                    @if($product->image_path != null)
                                        <img style="height: 200px; width: 150px" src="{{$product->image_path}}" alt="">
                                    @else
                                        Trống
                                    @endif
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh chi tiết</label>
                                <div>
                                    @foreach($product->images as $image)
                                    <img src="{{$image->image_path}}" style="height: 200px; width: 150px; margin: 20px" alt="">
                                    @endforeach
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Loại sản phẩm</label>
                                <select class="form-control select-cate" name="cate">
                                    {!! $htmlCate !!}
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Thương hiệu</label>
                                <input class="form-control" type="text" value="{{$product->brand == null ? 'Trống' : $product->brand->name}}"></div>
                            <div class="form-group">
                                <label>Tags</label>
                                <select disabled class="form-control select-tag" name="tags[]" multiple>
                                    @foreach($product->tags as $tag)
                                        <option selected value="{{$tag->name}}">{{$tag->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Người tạo</label>
                                <input type="text" class="form-control" disabled value="{{$value->user->name ?? 'trống'}}"/>
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
