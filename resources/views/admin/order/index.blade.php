@extends("admin.layout.main")
@section('title')
    <title>Danh sách đơn hàng</title>
@endsection
@section('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
@endsection
@section('js')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="/admin_file/js/category/delete.js"></script>
    <script src="/admin_file/js/order/update.js"></script>
@endsection
@section('content')
    @include('admin.layout.content-header', ['title'=>"Danh sách đơn hàng", 'path_chird'=>['order'], 'route'=>['order.index']])

    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <a href="{{route('order.trash')}}" class="btn btn-primary float-lg-right mb-3 mr-4">
                            <i class="fas fa-trash-alt"></i> Thùng rác
                        </a>
                        <table class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>STT</th>
                                <th>Tên khách hàng</th>
                                <th>Số điện thoại</th>
                                <th>Địa chỉ</th>
                                <th>Tổng tiền</th>
                                <th>Trạng thái</th>
                                <th>Hành động</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php
                                $i = 0;
                            @endphp
                            @foreach($orders as $value)
                                <tr>
                                    <td>{{++$i}}</td>
                                    <td>{{$value->ship_name}}</td>
                                    <td>{{$value->ship_phone}}</td>
                                    <td>{{$value->ship_address}}</td>
                                    <td>{{number_format($value->total_price)}} VND</td>
                                    @switch($value->status)
                                        @case(0)
                                            <td><button data-url="{{route('order.update', ['id'=>$value->id])}}" type="button" class="btn btn-danger btn-status">Chưa giao</button></td>
                                            @break
                                        @case(1)
                                            <td><button data-url="{{route('order.update', ['id'=>$value->id])}}" type="button" class="btn btn-warning btn-status">Đang giao</button></td>
                                            @break
                                        @case(2)
                                            <td><button data-url="{{route('order.update', ['id'=>$value->id])}}" type="button" class="btn btn-success btn-status">Giao hoàn tất</button></td>
                                            @break
                                    @endswitch
                                    <td style="text-align: center;" width="20%">
                                        <a href="{{route('order.view', ['id' => $value->id])}}" title="Xem chi tiết" type="button" class="btn btn-success"><i class="fas fa-eye"></i></a>
                                        <button title="Xóa" type="button" data-url="{{route('order.delete', ['id'=>$value->id])}}" class="btn btn-danger act-del"><i class="fas fa-trash-alt"></i></button>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                        <nav aria-label="Page navigation example" class="float-right mt-3">
                            <ul class="pagination">
                                {{$orders->links()}}
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
