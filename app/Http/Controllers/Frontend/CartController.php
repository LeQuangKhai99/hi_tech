<?php

namespace App\Http\Controllers\Frontend;

use App\Events\Mess;
use App\Events\Notify;
use App\Http\Controllers\Controller;
use App\Order;
use App\OrderDetail;
use App\Product;
use App\User;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class CartController extends Controller
{
    private $product, $user, $order, $orderDetail, $notify;

    public function __construct(Product $product, User $user, Order $order, OrderDetail $orderDetail, \App\Notify $notify){
        $this->product = $product;
        $this->user = $user;
        $this->order = $order;
        $this->orderDetail = $orderDetail;
        $this->notify = $notify;
    }

    public function index(){
        $cart = Cart::content();
        $total = Cart::priceTotal();
        return view('front-end.cart', [
            'page'=>'cart',
            'cart'=>$cart,
            'total'=>$total
        ]);
    }

    public function add($id){
        $product = $this->product->find($id);
        if ($product->inventory > 0){
            $cart = Cart::add($product->id, $product->name, 1, $product->price, 0, ['image' => $product->image_path, 'inventory' => $product->inventory]);
            if ($cart->qty > $product->inventory){
                Cart::update($cart->rowId, $product->inventory);
                return redirect()->route('front-end.cart')->with('err', 'Số lượng đã đạt giới hạn');
            }
            else {
                return redirect()->route('front-end.cart')->with('success', 'Thêm sản phẩm vào giỏ hàng thành công');
            }
        }
        else{
            return redirect()->back()->with('err', 'Sản phẩm này hiện đang hết');
        }
    }

    public function sub($id) {
        $cart = Cart::get($id);
        Cart::update($id, $cart->qty - 1);
    }

    public function checkout(){
        $address = auth()->user()->infos;
        $cart = Cart::content();
        if (count($cart) <= 0){
            return redirect()->route('front-end.home')->with('error', 'Chưa có sản phẩm nào được mua!');
        }
        $totalPrice = Cart::priceTotal();
        return view('front-end.checkout', [
            'page'=>'checkout',
            'address'=>$address,
            'cart'=>$cart,
            'total'=>$totalPrice
        ]);
    }

    public function postCheckout(Request $request){
        $order = $this->order->create([
            'user_id'=>auth()->user()->id,
            'ship_name'=>$request->name,
            'ship_phone'=>$request->phone,
            'ship_address'=>$request->address,
            'total_price'=>Cart::priceTotal(0, "", ""),
            'note'=>$request->note,
            'status'=>0
        ]);

        foreach (Cart::content() as $cart){
            $product = $this->product->find($cart->id);
            $product->update([
                'inventory' => ($product->inventory - $cart->qty)
            ]);
            $this->orderDetail->create([
                'order_id'=>$order->id,
                'product_id'=>$cart->id,
                'quantity'=>$cart->qty
            ]);
        }
        $name = "$request->name đã đặt hàng!";
        $this->notify->create([
            'idOrder' => $order->id,
            'name' => $name,
            'status' => 0
        ]);
        event(new Notify($order->id, 'Có đơn hàng mới!'));
        Cart::destroy();
        return redirect()->route('front-end.home')->with('mess', 'oke');
    }

    public function delete($id){
        Cart::remove($id);
    }
}
