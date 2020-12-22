@extends('front-end.layout.main')
@section('css')
    <link rel="stylesheet" href="/hi-tech/content/css/cart.css">
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
                    <tr class="text-center">
                        <td class="remove">
                            <a href="">
                                x
                            </a>
                        </td>
                        <td class="cart-img-prd">
                            <div class="img">
                                <img src="/frontend/images/AnhCat/sp-2.png" alt="" class="w-100">
                            </div>
                        </td>
                        <td class="product-name">
                            <h3>Bell Pepper</h3>
                            <p>Far far away, behind the word mountains, far from the countries</p>
                        </td>
                        <td class="price">2,500,000vnđ</td>
                        <td class="quantity">
                            <div class="input-group mb-3">
                                <input type="number" name="quantity" class="quantity form-control" value="1" min="1"
                                       max="100">
                            </div>
                        </td>
                        <td class="total">2,500,000vnđ</td>
                    </tr>
                    <tr class="text-center">
                        <td class="remove">
                            <a href="">
                                x
                            </a>
                        </td>
                        <td class="cart-img-prd">
                            <div class="img">
                                <img src="/frontend/images/AnhCat/sp-2.png" alt="" class="w-100">
                            </div>
                        </td>
                        <td class="product-name">
                            <h3>Bell Pepper</h3>
                            <p class="">Far far away, behind the word mountains, far from the countries</p>
                        </td>
                        <td class="price">2,500,000vnđ</td>
                        <td class="quantity">
                            <div class="input-group mb-3">
                                <input type="text" name="quantity" class="quantity form-control input-number" value="1"
                                       min="1" max="100">
                            </div>
                        </td>
                        <td class="total">2,500,000vnđ</td>
                    </tr>
                    <tr class="text-center">
                        <td class="remove">
                            <a href="">
                                x
                            </a>
                        </td>
                        <td class="cart-img-prd">
                            <div class="img">
                                <img src="/frontend/images/AnhCat/sp-2.png" alt="" class="w-100">
                            </div>
                        </td>
                        <td class="product-name">
                            <h3>Bell Pepper</h3>
                            <p>Far far away, behind the word mountains, far from the countries</p>
                        </td>
                        <td class="price">2,500,000vnđ</td>
                        <td class="quantity">
                            <div class="input-group mb-3">
                                <input type="text" name="quantity" class="quantity form-control input-number" value="1"
                                       min="1" max="100">
                            </div>
                        </td>
                        <td class="total">2,500,000vnđ</td>
                    </tr>
                    </tbody>
                </table>
                {{--                <div class="check-out-wrap d-flex">--}}
                <div class="checkout-ft col-md-6 col-sm-12 pl-0 pr-sm-0 float-lg-left pb-4">
                    <div class="checkout-note clearfix">
                        <textarea id="note" name="note" rows="8" cols="50" placeholder="Ghi chú"></textarea>
                    </div>
                </div>
                <div class="checkout-ft col-md-6 col-sm-12 text-right pr-0 pl-sm-0 float-lg-right pb-4">
                    <p class="order-infor">
                        Tổng tiền:
                        <span class="total_price">2,500,000vnđ</span>
                    </p>
                    <div class="cart-buttons">
                        <a class="button dark link-continue hvr-sweep-to-right" href="" title="Tiếp tục mua hàng"><i
                                class="fa fa-reply"></i>
                            Tiếp tục mua hàng
                        </a>
                        <button type="submit" id="update-cart" class="btn-update button dark hvr-sweep-to-right" name="update"
                                value="">
                            Cập nhật
                        </button>
                        <a href="" style="padding: 0"><button type="submit" id="checkout" class="btn-checkout button dark hvr-sweep-to-right" name="checkout"
                                                                                            value="" >
                                Thanh toán
                            </button>
                        </a>
                    </div>
                </div>
                {{--                </div>--}}
            </div>
        </div>
    </div>
@endsection
