<?php

namespace App\Http\Controllers;

use App\Intro;
use Illuminate\Http\Request;

class IntroController extends Controller
{
    private $intro;
    public function __construct(Intro $intro){
        $this->intro = $intro;
    }
    public function index(){
        $intro = $this->intro->whereNull('deleted_at')->first();
        return view('admin.intro.index', [
            'intro'=>$intro,
            'page'=>'intro'
        ]);
    }

    public function store(Request $request){
        $intro = $this->intro->whereNull('deleted_at')->first();
        $data = [
          'content'=>$request->content1
        ];
        if ($intro == null){
            $this->intro->create($data);
        }
        else{
            $intro->update($data);
        }
        $intro = $this->intro->whereNull('deleted_at')->first();
        return redirect()->route('intro.index', [
            'intro'=>$intro,
            'page'=>'intro'
        ])->with(['update-oke'=>'Cập nhật thành công']);
    }
}
