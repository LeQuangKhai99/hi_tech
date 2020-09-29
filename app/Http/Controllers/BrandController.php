<?php

namespace App\Http\Controllers;

use App\Brand;
use App\Component\RecusiveOptionSelect;
use App\Traits\StorageImageTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class BrandController extends Controller
{
    use StorageImageTrait;
    private $brand;
    public function __construct(Brand $brand){
        $this->brand = $brand;
    }
    public function index(){
        $brands = $this->brand->whereNull('deleted_at')->latest()->paginate(5);
        $brandAll = $this->brand->whereNull('deleted_at')->get();

        $recusive = new RecusiveOptionSelect($brandAll);
        $html = $recusive->Option('', 0, null);
        return view('admin.brand.index', [
            'brands'=>$brands,
            'brandAll'=>$brandAll,
            'htmlListbrand'=>$html,
            'page'=>'brand'
        ]);

    }

    public function store(Request $request){
        $data = [
            'name'=>$request->name,
            'slug'=>Str::slug($request->name) ,
            'user_id'=>auth()->user()->id,
            'image_path'=>$this->StorageImage($request, 'image', 'brand')
        ];
        $brand = $this->brand->create($data);
        return redirect()->route('brand.index')->with(['add-oke'=>'Thêm thành công']);
    }

    public function update($id){
        $brand = $this->brand->find($id);
        $brandAll = $this->brand->whereNull('deleted_at')->get();
        $recusive = new RecusiveOptionSelect($brandAll);
        $html = '<option value="0">Đây là danh mục cha</option>';
        $html .= $recusive->Option('', 0, $brand->parent_id);

        $user = $brand->user->name;
        return response()->json([
            'brand'=>$brand,
            'html'=>$html,
            'user'=>$user
        ]);
    }

    public function postUpdate(Request $request){
        $brand = $this->brand->find($request->id);
        $image_path = '';
        if ($request->is_isset_image != null){
            if ($request->image == null){
                $image_path = $brand->image_path;
            }
            else{
                $image_path = $this->StorageImage($request, 'image', 'brand');
            }
        }
        else{
            if ($request->image != null){
                $image_path = $this->StorageImage($request, 'image', 'brand');
            }
        }
        $brand->update([
            'name'=>$request->name,
            'slug'=>Str::slug($request->name),
            'image_path'=>$image_path
        ]);
        return redirect()->route('brand.index')->with(['update-oke'=>'Cập nhật thành công']);
    }

    public function delete($id){
        try {
            $brand = $this->brand->find($id);
            $brand->update([
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
        $brands = $this->brand->whereNotNull('deleted_at')->latest()->paginate(5);
        return view('admin.brand.trash', [
            'brands'=>$brands,
            'page'=>'brand'
        ]);
    }

    public function restore($id){
        try {
            $brand = $this->brand->find($id);
            $brand->update([
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
            $brand = $this->brand->find($id);
            $brand->delete();
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
