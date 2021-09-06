@extends("admin.layout.main")
@section('title')
    <title>Cập nhật sản phẩm</title>
@endsection
@section('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
@endsection
@section('js')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    <script>
        var $Results = $(".select-cate");
        $Results.select2();
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

        function delImg(id){
            $('.del-img-'+id).parent().remove();
            if(id == 'main'){
                $('.update-image').html('Bạn đã xóa hình ảnh');
            }
        }

        $(function(){
            $("input[type='submit']").click(function(e){
                var $fileUpload = $(".mul-file");
                $curentNumberImg = $('.img-file').length;
                if ((parseInt($fileUpload.get(0).files.length) + $curentNumberImg)>5){
                    alert("Bạn chỉ có thể có tối đa 5 ảnh chi tiết sản phẩm");
                    e.preventDefault();
                }
            });
        });
    </script>

@endsection
@section('content')
    <!-- Content Header (Page header) -->

    <!-- /.content-header -->
    @include('admin.layout.content-header', ['title'=>"Cập nhật sản phẩm", 'path_chird'=>['Product'], 'route'=>['product.index']])
    <!-- Main content -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">

                    <!-- /.card-header -->
                    <div class="card-body">
                        <form action="{{route('product.postUpdate', ['id'=>$product->id])}}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="form-group">
                                <label>Tên sản phẩm</label>
                                <input  value="{{$product->name}}" name="name" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Giá</label>
                                <input  value="{{$product->price}}" name="price" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Tồn kho</label>
                                <input  value="{{$product->inventory}}" name="inventory" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Model</label>
                                <input  value="{{$product->model}}" name="model" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Made by</label>
                                <input  value="{{$product->made_by}}" name="made_by" type="text" class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Mô tả</label>
                                <textarea  rows="5" name="des" type="text" id="editor1" class="form-control">{{$product->des}}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Nội dung</label>
                                <textarea  rows="5" name="content1" id="editor2" type="text" class="form-control">{{$product->content}}</textarea>
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh chính</label>
                                @if($product->image_path != null)
                                    <div class="update-image">
                                        <div style="position: relative; margin: 0 10px">
                                            <div class="del-img-main del-img" onclick="delImg('main')">
                                                <i class="fas fa-times"></i>
                                            </div>
                                            <input type="hidden" name="is_isset_image" value="yes">
                                            <img src="{{$product->image_path}}" style="height: 200px; margin: 0 0 20px 0" height="20%" alt="">
                                        </div>
                                    </div>
                                @endif
                                <input type="file" name="image" class="form-control-file">
                            </div>
                            <div class="form-group">
                                <label>Hình ảnh chi tiết</label>
                                <div style="display: flex">

                                    @foreach($product->images as $image)
                                        <div class="img-file" style="position: relative; margin: 0 20px 20px 0px">
                                            <div class="del-img-{{$image->id}} del-img" onclick="delImg({{$image->id}})">
                                                <i class="fas fa-times"></i>
                                            </div>
                                            <img src="{{$image->image_path}}" style="height: 200px; width: 150px;" alt="">
                                            <input type="hidden" value="{{$image->id}}" name="id_imgs[]">
                                        </div>
                                    @endforeach
                                </div>
                                <input type="file" class="form-control-file mul-file" name="images[]" multiple>
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
                                        <option {{$product->brand_id == $brand->id ? 'selected' : ''}} value="{{$brand->id}}">{{$brand->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Tags</label>
                                <select  class="form-control select-tag" name="tags[]" multiple>
                                    @foreach($allTag as $tag)
                                        <option {{$product->tags->contains('id', $tag->id) ? 'selected' : ''}} value="{{$tag->name}}">{{$tag->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Người tạo</label>
                                <input disabled type="text" class="form-control"  value="{{$value->user->name ?? 'trống'}}"/>
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
