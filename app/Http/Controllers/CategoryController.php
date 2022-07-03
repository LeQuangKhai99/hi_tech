<?php

namespace App\Http\Controllers;

use App\Component\RecusiveOptionSelect;
use App\Http\Requests\AddCategoryRequest;
use App\Http\Requests\UpdateCategoryRequest;
use App\Traits\StorageImageTrait;
use Illuminate\Http\Request;
use App\Categories;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use phpDocumentor\Reflection\Types\Nullable;

class CategoryController extends Controller
{
    use StorageImageTrait;
    private $cate;
    public function __construct(Categories $cate){
        $this->cate = $cate;
    }
    public function index(){
        $categories = $this->cate->whereNull('deleted_at')->latest()->paginate(5);
        $categoryAll = $this->cate->whereNull('deleted_at')->get();

        $recusive = new RecusiveOptionSelect($categoryAll);
        $html = $recusive->Option('', 0, null);
        return view('admin.category.index', [
            'categories'=>$categories,
            'categoryAll'=>$categoryAll,
            'htmlListCategory'=>$html,
            'page'=>'category'
        ]);

    }

    public function store(AddCategoryRequest  $request){
        $data = [
            'name'=>$request->name,
            'slug'=>Str::slug($request->name) ,
            'parent_id'=>$request->parent_id,
            'user_id'=>auth()->user()->id,
            'image_path'=>$this->StorageImage($request, 'image', 'category')
        ];
        $cate = $this->cate->create($data);
        return redirect()->route('category.index')->with(['add-oke'=>'Thêm thành công']);
    }

    public function update($id){
        $cate = $this->cate->find($id);
        $categoryAll = $this->cate->whereNull('deleted_at')->get();
        $recusive = new RecusiveOptionSelect($categoryAll);
        $html = '<option value="0">Đây là danh mục cha</option>';
        $html .= $recusive->Option('', 0, $cate->parent_id);

        $user = $value->user->name ?? 'trống';
        return response()->json([
            'cate'=>$cate,
            'html'=>$html,
            'user'=>$user
        ]);
    }

        public function postUpdate(Request $request){
        $cate = $this->cate->find($request->id);
        $image_path = '';
        if ($request->is_isset_image != null){
            if ($request->image == null){
                $image_path = $cate->image_path;
            }
            else{
                $image_path = $this->StorageImage($request, 'image', 'category');
            }
        }
        else{
            if ($request->image != null){
                $image_path = $this->StorageImage($request, 'image', 'category');
            }
        }
        $cate->update([
            'name'=>$request->name,
            'slug'=>Str::slug($request->name),
            'parent_id'=>$request->parent_id,
            'image_path'=>$image_path
        ]);
        return redirect()->route('category.index')->with(['update-oke'=>'Cập nhật thành công']);
    }

    public function delete($id){
        try {
            $cate = $this->cate->find($id);
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
        $categories = $this->cate->whereNotNull('deleted_at')->latest()->paginate(5);
        return view('admin.category.trash', ['categories'=>$categories,
            'page'=>'category']);
    }

    public function restore($id){
        try {
            $cate = $this->cate->find($id);
            $cate->update([
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
            $cate = $this->cate->find($id);
            $cate->delete();
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
