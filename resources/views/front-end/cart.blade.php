@extends('front-end.layout.main')
@section('css')
    <link rel="stylesheet" href="/hi-tech/content/css/cart.css">
@endsection
@section('js')
    @if(Session::get('mess') == 'oke')
        <script src="/hi-tech/content/js/ToastMess.js"></script>
    @endif
    <script src="/hi-tech/content/js/updateCart.js"></script>
@endsection
@section('content')
    <div class="banner-abt-wrap">
        <div class="banner-content d-flex justify-content-center align-items-center w-100 h-100">
            <h1 class="text-center">Giỏ hàng của bạn</h1>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="table-responsive">
                <table class="table cart-table">
                    <thead class="cart-thead">
                    <tr class="text-center">
                        <th scope="col"></th>
                        <th scope="col"></th>
                        <th scope="col">Tên sản phẩm</th>
                        <th scope="col">Giá</th>
                        <th scope="col">Số lượng</th>
                        <th scope="col">Tổng</th>
                    </tr>
                    </thead>
                    <tbody>
                    @foreach($cart as $item)
                    <tr class="text-center">
                        <td class="remove">
                            <div>
                                <a class="btn-remove-cart" data-url="{{route('front-end.del-cart', ['id'=>$item->rowId])}}">
                                    x
                                </a>
                            </div>
                        </td>
                        <td class="cart-img-prd">
                            <div class="img">
                                <img src="{{$item->options['image']}}" alt="" class="w-100">
                            </div>
                        </td>
                        <td class="product-name">
                            <h3>{{$item->name}}</h3>
                        </td>
                        <td><span class="price">{{number_format($item->price)}}</span> vnđ</td>
                        <input type="hidden" class="price2" value="{{$item->price}}">
                        <td class="quantity">
                            <div class="input-group mb-3">
                                <input data-url="{{route('front-end.add-cart', ['id'=>$item->id])}}" type="button" class="quantity up" value="+">
                                <input disabled type="number" name="quantity" class="quantity qty-product" value="{{$item->qty}}" min="1"
                                       max="10">
                                <input data-url="{{route('front-end.sub-cart', ['id'=>$item->rowId])}}" type="button" class="quantity down" value="-">
                            </div>
                        </td>
                        <td><span class="total">{{number_format($item->price * $item->qty)}}</span> vnđ</td>
                        <input type="hidden" value="{{$item->price * $item->qty}}" class="total2">
                    </tr>
                    @endforeach
                    </tbody>
                </table>
                <div class="checkout-ft col-md-6 col-sm-12 text-right pr-0 pl-sm-0 float-lg-right pb-4">
                    <p class="order-infor">
                        Tổng tiền:
                        <span class="total_price"></span>
                        vnđ
                    </p>
                    <div class="cart-buttons">
                        <a class="button dark link-continue hvr-sweep-to-right" href="{{route('front-end.home')}}" title="Tiếp tục mua hàng"><i
                                class="fa fa-reply"></i>
                            Tiếp tục mua hàng
                        </a>
                        <a href="{{route('front-end.checkout')}}" style="padding: 0">
                            <button type="submit" id="checkout" class="btn-checkout button dark hvr-sweep-to-right"
                                    name="checkout"
                                    value="">
                                Thanh toán
                            </button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
