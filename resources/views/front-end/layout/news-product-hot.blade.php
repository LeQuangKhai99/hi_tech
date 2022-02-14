<div class="col-xs-12 col-sm-12 col-md-3">
    <div class="card ">
        <div class="card-header card-bg-header">
            SẢN PHẨM MỚI NHẤT
        </div>
        <ul class="list-group list-group-flush">
            @foreach($parentCates as $parentCate)
                <li class="list-group-item align-items-center d-flex">
                    <img width="100px" height="100px" src="{{$parentCate->image_path}}" class="img-thumbnail" alt="Chuẩn đoán hình  ">
                    <div class="card-body">
                        <h5><a class="hot-title" href="{{route('front-end.list-product', ['slug'=>$parentCate->slug])}}">{{$parentCate->name}}</a></h5>
                        <i class="fa fa-caret-right" aria-hidden="true"></i>
                        <a class="hot-see-detail" href="{{route('front-end.list-product', ['slug'=>$parentCate->slug])}}">Xem chi tiết</a>
                    </div>
                </li>
            @endforeach
        </ul>
    </div>

    <div class="card " style="margin-top:20px">
        <div class="card-header card-bg-header">
            TIN MỚI NHẤT
        </div>
        <ul class="list-group list-group-flush">
            @foreach($hotNews as $news)
                <li class="list-group-item align-items-center d-flex">
                    <img width="100px" src="{{$news->image_path}}" class="img-thumbnail" alt="Chuẩn đoán hình  ">
                    <div class="card-body">
                        <h5><a class="hot-title" href="{{route('front-end.detail-news', ['slug'=>$news->slug])}}">{{\Illuminate\Support\Str::limit($news->title, 30)}}</a></h5>
                        <div class="time"><i class="far fa-clock"></i>&nbsp;{{ $news->created_at->format('Y-m-d') }}</div>
                    </div>
                </li>
            @endforeach
        </ul>
    </div>
</div>
