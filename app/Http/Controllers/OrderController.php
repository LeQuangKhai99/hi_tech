<?php

namespace App\Http\Controllers;

use App\Order;
use App\OrderDetail;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    private $order, $orderDetail;

    public function __construct(Order $order, OrderDetail $orderDetail){
        $this->order = $order;
        $this->orderDetail = $orderDetail;
    }

    public function index(){
        $orders = $this->order->whereNull('deleted_at')->latest()->paginate(5);
        return view('admin.order.index', [
            'orders'=>$orders,
            'page'=>'order'
        ]);
    }

    public function update($id){
        $order = $this->order->find($id);
        $nextStatus = 0;
        switch ($order->status){
            case 0:
                $nextStatus = 1;
                break;
            case 1:
                $nextStatus = 2;
                break;
            case 2:
                $nextStatus = 0;
                break;
        }
        $order->update([
           'status'=> $nextStatus
        ]);

        return response()->json([
            'code'=>200,
            'nextStatus'=>$nextStatus
        ]);
    }

    public function delete($id) {
        try {
            $order = $this->order->find($id);
            $order->update([
                'deleted_at'=>date('Y-m-d H:i:s')
            ]);
            return response()->json([
                'code'=>'200',
                'mess'=>'success'
            ]);
        }catch (\Exception $exception){
            return response()->json([
                'code'=>'404',
                'mess'=>'err'
            ]);
        }
    }

    public function trash(){
        $orders = $this->order->whereNotNull('deleted_at')->latest()->paginate(5);
        return view('admin.order.trash', [
            'orders'=>$orders,
            'page'=>'order'
        ]);
    }

    public function restore($id){
        try {
            $order = $this->order->find($id);
            $order->update([
                'deleted_at'=>null
            ]);
            return response()->json([
                'code'=>'200',
                'mess'=>'success'
            ]);
        }catch (\Exception $exception){
            return response()->json([
                'code'=>'404',
                'mess'=>'err'
            ]);
        }
    }

    public function forceDelete($id){
        try {
            $order = $this->order->find($id);
            $order->delete();
            return response()->json([
                'code'=>'200',
                'mess'=>'success'
            ]);
        }catch (\Exception $exception){
            return response()->json([
                'code'=>'404',
                'mess'=>'err'
            ]);
        }
    }
}
