<?php

namespace App\Http\Controllers;

use App\Post;
use App\Product;
use App\Project;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    public function __construct()
    {

    }

    public function index()
    {
        $totalUser = User::all();
        $sql = 'SELECT count(*) as sl, MONTH(created_at) as month FROM orders where YEAR(created_at) = YEAR(CURRENT_DATE()) GROUP by MONTH(created_at);';
        $result = DB::select($sql);

        $chart = array();
        for ($i = 0; $i < 12; $i++){
            for ($j = 0; $j < count($result); $j++){
                if (($i+1) == $result[$j]->month){
                    $chart[$i] = $result[$j]->sl;
                    break;
                }
                else {
                    $chart[$i] = 0;
                }
            }
        }
        return view('admin/home',[
            'page'=>'control',
            'totalUser'=>$totalUser,
            'totalNews'=>Post::all(),
            'totalProject'=>Project::all(),
            'totalProduct'=>Product::all(),
            'chart' => $chart
        ]);
    }
}
