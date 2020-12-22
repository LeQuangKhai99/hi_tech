<?php

namespace App\Http\Controllers;

use App\Post;
use App\Product;
use App\Project;
use App\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function __construct()
    {

    }

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
