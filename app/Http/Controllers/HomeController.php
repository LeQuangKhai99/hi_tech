<?php

namespace App\Http\Controllers;

use App\Post;
use App\Product;
use App\Project;
use App\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $totalUser = User::all();
        return view('admin/home',[
            'page'=>'control',
            'totalUser'=>$totalUser,
            'totalNews'=>Post::all(),
            'totalProject'=>Project::all(),
            'totalProduct'=>Product::all()
        ]);
    }
}
