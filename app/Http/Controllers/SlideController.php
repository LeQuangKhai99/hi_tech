<?php

namespace App\Http\Controllers;

use App\Component\RecusiveOptionSelect;
use App\Slide;
use App\Traits\StorageImageTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class SlideController extends Controller
{
    use StorageImageTrait;
    private $slide;
    public function __construct(Slide $slide){
        $this->slide = $slide;
    }
    public function index(){
        $slides = $this->slide->with('user')->whereNull('deleted_at')->latest()->paginate(5);
        $slideAll = $this->slide->whereNull('deleted_at')->get();

        return view('admin.slide.index', [
            'slides'=>$slides,
            'slideAll'=>$slideAll,
            'page'=>'role'
        ]);
    }

    public function store(Request $request){
        $data = [
            'user_id'=>auth()->user()->id,
            'image_path'=>$this->StorageImage($request, 'image', 'slide')
        ];
        $slide = $this->slide->create($data);
        return redirect()->route('slide.index')->with(['add-oke'=>'Thêm thành công']);
    }

    public function update($id){
        $slide = $this->slide->find($id);

        $user = $slide->user->name;
        return response()->json([
            'slide'=>$slide,
            'user'=>$user,
            'page'=>'role'
        ]);
    }

    public function postUpdate(Request $request){
        $slide = $this->slide->find($request->id);
        $image_path = '';
        if ($request->is_isset_image != null){
            if ($request->image == null){
                $image_path = $slide->image_path;
            }
            else{
                $image_path = $this->StorageImage($request, 'image', 'slide');
            }
        }
        else{
            if ($request->image != null){
                $image_path = $this->StorageImage($request, 'image', 'slide');
            }
        }
        $slide->update([
            'image_path'=>$image_path
        ]);
        return redirect()->route('slide.index')->with(['update-oke'=>'Cập nhật thành công']);
    }

    public function delete($id){
        try {
            $slide = $this->slide->find($id);
            $slide->update([
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
        $slides = $this->slide->whereNotNull('deleted_at')->latest()->paginate(5);
        return view('admin.slide.trash', [
            'slides'=>$slides,
            'page'=>'role'
        ]);
    }

    public function restore($id){
        try {
            $slide = $this->slide->find($id);
            $slide->update([
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
            $slide = $this->slide->find($id);
            $slide->delete();
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
