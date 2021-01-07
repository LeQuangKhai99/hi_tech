@extends('front-end.layout.main')
@section('css')
    <link rel="stylesheet" href="/hi-tech/content/css/checkout.css">
@endsection
@section('content')
<!-- BANNER -->
<div class="banner-abt-wrap">
    <div class="banner-content d-flex justify-content-center align-items-center w-100 h-100">
        <h1 class="text-center">Thanh toán</h1>
    </div>
</div>

<!-- CONTENT -->
<div class="container">
    <div class="checkout row">
        <form method="post" action="{{route('front-end.postCheckout')}}" class="checkout-content checkout-left-content col-lg-7 ">
            @csrf
            <div class="checkout-header">
                <h2 class="checkout-title">Thông tin giao hàng</h2>
            </div>

            <div class="customer-information checkout-section">
                <div class="fieldset">
                    <div class="field-wrap col-12 px-0">
                        <!-- The input -->
                        <input class="field-input w-100" value="{{auth()->user()->name}}" type="text" placeholder="Họ và tên" id="name"
                               name="name" />

                        <!-- The label -->
                        <label class="field-label" for="name">Họ và tên</label>
                    </div>
                    <div class="container">
                        <div class="row" style="width: 53.57%;">
                            <div class="field-wrap col-md-8" style="padding-right: 15px">
                                <!-- The input -->
                                <input value="{{auth()->user()->email}}" class="field-input w-100" type="email" placeholder="Email" id="email"
                                       name="email" />

                                <!-- The label -->
                                <label class="field-label" for="email">Email</label>
                            </div>

                            <div class="field-wrap col-md-4 pr-0">
                                <!-- The input -->
                                <input class="field-input w-100" value="{{auth()->user()->phone}}" type="tel" maxlength="11"
                                       placeholder="Số điện thoại" id="phone" name="phone" />

                                <!-- The label -->
                                <label class="field-label" for="phone">Số điện thoại</label>
                            </div>
                        </div>
                    </div>
                    <div class="field-wrap col-12 px-0">
                        <!-- The input -->
                        <select name="address" class="field-input w-100">
                            <option value="{{auth()->user()->address}}">{{auth()->user()->address}}</option>
                            @foreach($address as $add)
                                <option value="{{$add->address}}">{{$add->address}}</option>
                            @endforeach
                        </select>
                        <!-- The label -->
                        <label class="field-label" for="address">Địa chỉ</label>
                    </div>
                    <div class="field-wrap col-12 px-0">
                        <textarea class="field-input w-100" placeholder="Ghi chú"></textarea>
                    </div>
                </div>
            </div>

            <div class="checkout-footer d-flex align-items-center justify-content-between">
                <a class="previous-link" href=""><i class="fas fa-chevron-left mr-2"></i>Giỏ hàng</a>
                <button name="button" type="submit" class="continue-btn btn">Hoàn tất đơn hàng</button>
            </div>

        </form>
        <div class="checkout-content checkout-right-content col-lg-5">
            <div class="order-section">
                <div class="order-prd-list order-content">
                    <table class="product-table">
                        <tbody>
                            @foreach($cart as $c)
                                <tr style="margin-top: 30px" class="order-product">
                                    <td class="product-image">
                                        <div class="product-thumbnail">
                                            <div class="product-thumbnail-wrapper">
                                                <img class="product-thumbnail-image" src="{{$c->options['image']}}">
                                            </div>
                                            <span class="product-thumbnail-quantity">{{$c->qty}}</span>
                                        </div>
                                    </td>
                                    <td class="product-infor" style="width: 50%">
                                        <span class="product-name order-prd-list-txt">{{$c->name}}</span>
                                    </td>
                                    <td class="product-price">
                                        <span class="order-prd-list-txt">{{number_format($c->price * $c->qty)}} vnđ</span>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>

                <div class="order-discount order-content">
                    <div class="fieldset">
                        <div class="field-wrap discount-content d-flex justify-content-between align-items-center">
                            <div class="discount-input-wrap">
                                <input placeholder="Mã giảm giá" class="field-input" autocomplete="off"
                                       autocapitalize="off" spellcheck="false" size="30" type="text" id="discount"
                                       name="discount" value="">
                                <label class="field-label" for="discount">Mã giảm giá</label>
                            </div>
                            <button type="submit" class="discount-btn btn btn-default">
                                <span class="btn-content">Sử dụng</span>
                            </button>
                        </div>

                    </div>
                </div>

                <div class="order-total order-content">
                    <table class="total-table w-100">
                        <tbody>
                        <tr class="total total-subtotal">
                            <td class="total-name">Tạm tính</td>
                            <td class="total-price">
                                        <span class="order-summary-emphasis">
                                            300,000vnđ
                                        </span>
                            </td>
                        </tr>

                        <tr class="total total-shipping">
                            <td class="total-name">Phí vận chuyển</td>
                            <td class="total-price">
                                <span class="order-summary-emphasis">—</span>
                            </td>
                        </tr>

                        </tbody>
                        <tfoot class="total-table-footer">
                        <tr class="total">
                            <td class="total-name payment-due-label">
                                <span class="payment-due-label-total">Tổng cộng</span>
                            </td>
                            <td class="total-name payment-due">
                                <span class="payment-due-currency">VND</span>
                                <span class="payment-due-price">{{$total}}</span>
                            </td>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
