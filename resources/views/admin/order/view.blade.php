<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Hóa đơn mua hàng</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <style>
        p{
            text-align: justify;
        }
        .font-14{
            font-size: 14px !important;
        }
    </style>
</head>

<body style="background: #dedede">
<section style="width: 794px; height: 100%; margin: 5% auto; font-size: 16px; background: #ffffff; padding: 50px;">
    <div class="nationalBrand" style="text-align: left; ">
        <div class="row">
            <div class="col-md-8">
                <p style="margin-bottom: 0"><b>Công ty cổ phần thiết bị công nghệ cao TM HITECH</b></p>
                <p style="margin-bottom: 0">Địa chỉ: 12B/2, 781 Hồng Hà, Quận Hoàn Kiếm, Hà Nội, Việt Nam</p>
            </div>
            <div class="col-md-4">
                <p style="margin-bottom: 0">Điện thoại: 0868845289</p>
                <p style="margin-bottom: 0">Email: khaileedev99@gmail.com</p>
            </div>
        </div>
        <br />
        <h2 style="text-align: center">HÓA ĐƠN BÁN HÀNG</h2>

        <p style="text-align: center">Mã phiếu: {{ $order->id }}</p>
        <div class="content" >
            <div class="row">
                <div class="col-md-3">
                    <p>
                        <b>Ngày mua hàng: </b>
                    </p>
                    <p>
                        <b>Khách hàng: </b>
                    </p>
                    <p>
                        <b>SĐT: </b>
                    </p>
                    <p>
                        <b>Địa chỉ: </b>
                    </p>
                </div>
                <div class="col-md-9">
                    <p>{{date_format($order->created_at ,'d/m/Y H:i')}}</p>
                    <p>{!! $order->ship_name !!}</p>
                    <p>{!! $order->ship_phone !!}</p>
                    <p>{!! $order->ship_address !!}</p>
                </div>
            </div>
            <br />
            <table class="table table-bordered" style="border: none">
                <tbody>
                <tr>
                    <th style="text-align: center">Tên sản phẩm</th>
                    <th style="text-align: center">Số lượng</th>
                    <th style="text-align: center">Đơn giá</th>
                    <th style="text-align: right">Thành tiền</th>
                </tr>
                @foreach ($orderDetails as $orderDetail)
                    <tr>
                        <td style="text-align: left">{{ $orderDetail['name'] }}</td>
                        <td style="text-align: left">{{ number_format($orderDetail['qty']) }}</td>
                        <td style="text-align: right">{{ number_format($orderDetail['price'], 0,",",".") }}</td>
                        <td style="text-align: right">{{ number_format($orderDetail['total'], 0, ",", ".") }}</td>
                    </tr>
                @endforeach
                <tr>
                    <th colspan="3" style="text-align: right; font-weight: 700; border: none">Tổng tiền:</th>
                    <td style="text-align: right;border: none">{{ number_format($order->total_price, 0,",",".") }}</td>
                </tr>
                <tr>
                    <th colspan="3" style="text-align: right; font-weight: 700; border: none">Chiết khấu:</th>
                    <td style="text-align: right; border: none">0</td>
                </tr>
                <tr>
                    <th colspan="3" style="text-align: right; font-weight: 700; border: none">Thanh toán:</th>
                    <td style="text-align: right; border: none">{{ number_format($order->total_price, 0,",",".") }}</td>
                </tr>
                </tbody>
            </table>
            <hr style="width: 60%; border-top: 2px solid #0c0c0c;" />
            <p style="font-weight: 700; text-align: center">THÔNG TIN BẢO HÀNH MÁY</P>
            <p class="font-14">Sản phẩm có Phiếu Bảo Hành TMHITECH kèm theo sẽ được bảo hành tại:
                12B/2, 781 Hồng Hà, Quận Hoàn Kiếm, Hà Nội, Việt Nam. Tel: 0868845289.</p>
            <p class="font-14"><b><i>Xin Quý khách lưu ý:</i></b></p>
            <p class="font-14">1. Quý khách vui lòng sử dụng sản phẩm theo đúng hướng dẫn sử dụng đi kèm theo máy của nhà sản xuất. </p>
            <p class="font-14">2. Trong vòng 15 ngày đầu:
                Đối với sản phẩm mới nếu máy bị lỗi phần cứng do nhà sản xuất
                Quý khách sẽ được đổi trả tại TMHITECH Việt Nam với điều kiện
                máy nằm trong phạm vi bảo hành và không có dấu hiệu tác động từ bên ngoài như Rơi,
                vỡ, móp méo, cong, vênh, trầy xước, bị dung dịch hóa chất, các loại chất lỏng xâm nhập
                còn đủ phụ kiện + hộp. TMHITECH Việt Nam sẽ giải quyết đổi trả ngay sau khi kiểm tra
                xác nhận lỗi phần cứng do nhà sản xuất và nhảy đủ điều kiện bảo hành đổi trả.
                Trường hợp sản phẩm không bị lỗi phần cứng do nhà sản xuất nếu Quý khách có nhu cầu đổi trả
                Icar Việt Nam sẽ thu phí 15% giá máy theo giá máy bán ra tại thời điểm đổi trả.</p>
            <p class="font-14">3. Quý khách đã nhận đủ hàng mới nguyên theo tiêu chuẩn của nhà sản xuất có số imei trên thân máy và hộp trùng nhau.</p>
            <p class="font-14">4.  Địa chỉ Trung Tâm Bảo Hành có thể thay đổi.
                Xin Quý khách vui lòng gọi điện trước.</p>
            <p class="font-14">5. Phiếu này có giá trị lấy hóa đơn VAT trong vòng 15 ngày kể từ ngày in phiếu.</p>
            <p class="font-14"><b><i>Trân trọng cảm ơn Quý khách!</i></b></p>
            <table class="table table-borderless">
                <tbody>
                <tr>
                    <td style="font-weight: bold; text-align: center; border: none;">Khách hàng</td>
                    <td style="font-weight: bold; text-align: center; border: none;">Nhân viên bán hàng</td>
                </tr>
                <tr>
                    <td style="font-weight: bold; text-align: center; border: none;"> </td>
                    <td style="font-weight: bold; text-align: center; border: none;"> </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</section>
</body>
</html>
<script>
    window.print();
</script>
