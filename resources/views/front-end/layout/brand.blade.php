<div class="text-brand">Các hãng sản xuất</div>
<div class="slide-prd swiper-container sw">

    <!-- Additional required wrapper -->
    <div class="swiper-wrapper content_sw">
        @foreach($brands as $brand)
            <div class="swiper-slide">
                <a href="{{route('front-end.brand-list-product', ['slug'=>$brand->slug])}}"><img class="img_sw" src="{{$brand->image_path}}" alt=""></a>
            </div>
        @endforeach
    </div>
    <div class="btnprenext">
        <div class="swiper-button-prev btnsw"></div>
        <div class="swiper-button-next btnsw"></div>
    </div>

</div>
