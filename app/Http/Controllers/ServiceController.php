<?php

namespace App\Http\Controllers;

use App\Service;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    private $service;
    public function __construct(Service $service){
        $this->service = $service;
    }
    public function index(){
        $service = $this->service->whereNull('deleted_at')->first();
        return view('admin.service.index', [
            'service'=>$service,
            'page'=>'service'
        ]);
    }

    public function store(Request $request){
        $service = $this->service->whereNull('deleted_at')->first();
        $data = [
            'content'=>$request->content1
        ];
        if ($service == null){
            $this->service->create($data);
        }
        else{
            $service->update($data);
        }
        $service = $this->service->whereNull('deleted_at')->first();
        return redirect()->route('service.index', [
            'service'=>$service,
            'page'=>'service'
        ])->with(['update-oke'=>'Cập nhật thành công']);
    }
}
