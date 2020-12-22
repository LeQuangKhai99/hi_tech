<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function index(){
        return view('front-end.cart', [
            'page'=>'cart'
        ]);
    }

    public function checkout(){
        return view('front-end.checkout', [
            'page'=>'checkout'
        ]);
    }
}
