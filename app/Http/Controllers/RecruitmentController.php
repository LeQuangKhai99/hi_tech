<?php

namespace App\Http\Controllers;

use App\recruitment;
use Illuminate\Http\Request;

class RecruitmentController extends Controller
{
    private $recruitment;
    public function __construct(Recruitment $recruitment){
        $this->recruitment = $recruitment;
    }
    public function index(){
        $recruitment = $this->recruitment->whereNull('deleted_at')->first();
        return view('admin.recruitment.index', [
            'recruitment'=>$recruitment,
            'page'=>'recruitment'
        ]);
    }

    public function store(Request $request){
        $recruitment = $this->recruitment->whereNull('deleted_at')->first();
        $data = [
            'content'=>$request->content1
        ];
        if ($recruitment == null){
            $this->recruitment->create($data);
        }
        else{
            $recruitment->update($data);
        }
        $recruitment = $this->recruitment->whereNull('deleted_at')->first();
        return redirect()->route('recruitment.index', [
            'recruitment'=>$recruitment
        ])->with(['update-oke'=>'Cập nhật thành công']);
    }
}
