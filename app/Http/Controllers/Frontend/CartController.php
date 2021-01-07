<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Order;
use App\OrderDetail;
use App\Product;
use App\User;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class CartController extends Controller
{
    private $product, $user, $order, $orderDetail;

    public function __construct(Product $product, User $user, Order $order, OrderDetail $orderDetail){
        $this->product = $product;
        $this->user = $user;
        $this->order = $order;
        $this->orderDetail = $orderDetail;
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
        Cart::add($product->id, $product->name, 1, $product->price, 0, ['image' => $product->image_path]);
        return redirect()->route('front-end.cart')->with('mess', 'oke');
    }

    public function sub($id) {
        $cart = Cart::get($id);
        Cart::update($id, $cart->qty - 1);
    }

    public function checkout(){
        $address = auth()->user()->infos;
        $cart = Cart::content();
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
            $this->orderDetail->create([
                'order_id'=>$order->id,
                'product_id'=>$cart->id,
                'quantity'=>$cart->qty
            ]);
        }

        Cart::destroy();
        return redirect()->route('front-end.home')->with('mess', 'oke');
    }

    public function delete($id){
        Cart::remove($id);
    }
}
