<?php

namespace App\Http\Controllers;

use App\PostCate;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PostCateController extends Controller
{
    private $postCate;
    public function __construct(PostCate $postCate){
        $this->postCate = $postCate;
    }
    public function index(){
        $postCates = $this->postCate->with('user')->whereNull('deleted_at')->latest()->paginate(5);
        return view('admin.post-cate.index', ['postCates'=>$postCates,
            'page'=>'post_cate']);
    }

    public function store(Request $request){
        $data = [
            'name'=>$request->name,
            'slug'=>Str::slug($request->name),
            'user_id'=>auth()->user()->id,
        ];
        $this->postCate->create($data);
        return redirect()->route('post-cate.index')->with(['add-oke'=>'Thêm thành công']);
    }

    public function update($id){
        $postCate = $this->postCate->find($id);

        $user = $postCate->user == null ? 'Trống' : $postCate->user->name;
        return response()->json([
            'postCate'=>$postCate,
            'user'=>$user
        ]);
    }

    public function postUpdate(Request $request){
        $cate = $this->postCate->find($request->id);
        $cate->update([
            'name'=>$request->name,
            'slug'=>Str::slug($request->name),
            'user_id'=>auth()->user()->id
        ]);
        return redirect()->route('post-cate.index')->with(['update-oke'=>'Cập nhật thành công']);
    }

    public function delete($id){
        try {
            $cate = $this->postCate->find($id);
            $cate->update([
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
        $postCates = $this->postCate->whereNotNull('deleted_at')->latest()->paginate(5);
        return view('admin.post-cate.trash', [
            'postCates'=>$postCates,
            'page'=>'post_cate'
        ]);
    }

    public function restore($id){
        try {
            $postCate = $this->postCate->find($id);
            $postCate->update([
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
            $postCate = $this->postCate->find($id);
            $postCate->delete();
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
