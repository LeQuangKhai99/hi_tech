<?php

namespace App\Http\Controllers;

use App\Component\RecusiveOptionSelect;
use App\Http\Requests\AddCategoryRequest;
use App\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class TagController extends Controller
{
    private $tag;
    public function __construct(Tag $tag){
        $this->tag = $tag;
    }
    public function index(){
        $tags = $this->tag->whereNull('deleted_at')->latest()->paginate(5);
        return view('admin.tag.index', [
            'tags'=>$tags,
            'page'=>'tag'
        ]);
    }

    public function store(Request $request){
        $data = [
            'name'=>$request->name,
            'user_id'=>auth()->user()->id,
        ];
        $this->tag->create($data);
        return redirect()->route('tag.index')->with(['add-oke'=>'Thêm thành công']);
    }

    public function update($id){
        $tag = $this->tag->find($id);

        $user = $tag->user == null ? 'Trống' : $tag->user->name;
        return response()->json([
            'tag'=>$tag,
            'user'=>$user
        ]);
    }

    public function postUpdate(Request $request){
        $cate = $this->tag->find($request->id);
        $cate->update([
            'name'=>$request->name,
            'user_id'=>auth()->user()->id
        ]);
        return redirect()->route('tag.index')->with(['update-oke'=>'Cập nhật thành công']);
    }

    public function delete($id){
        try {
            $cate = $this->tag->find($id);
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
        $tags = $this->tag->whereNotNull('deleted_at')->latest()->paginate(5);
        return view('admin.tag.trash', [
            'tags'=>$tags,
            'page'=>'tag'
        ]);
    }

    public function restore($id){
        try {
            $tag = $this->tag->find($id);
            $tag->update([
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
            $tag = $this->tag->find($id);
            $tag->delete();
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
