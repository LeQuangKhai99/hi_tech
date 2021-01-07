@extends("admin.layout.main")
@section('title')
    <title>Danh sách đơn hàng đã xóa</title>
@endsection
@section('css')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
@endsection
@section('js')
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="/admin_file/js/category/restore.js"></script>
    <script src="/admin_file/js/category/delete.js"></script>
@endsection
@section('content')
    <!-- Content Header (Page header) -->

    <!-- /.content-header -->
    @include('admin.layout.content-header', ['title'=>"Danh sách đơn hàng đã xóa", 'path_chird'=>['order', 'trash'], 'route'=>['order.index', 'order.trash']])
    <!-- Main content -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <!-- /.card-header -->
                    <div class="card-body">
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
                                    <td width="25%">
                                        <button type="button" data-url="{{route('order.restore', ['id'=>$value->id])}}" class="btn btn-success act-restore"><i class="fas fa-sync-alt"></i> Khôi phục</button>
                                        <button type="button" data-url="{{route('order.forceDelete', ['id'=>$value->id])}}" class="btn btn-danger act-del"><i class="fas fa-trash-alt"></i> Xóa</button>
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
