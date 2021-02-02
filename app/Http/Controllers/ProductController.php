<?php

namespace App\Http\Controllers;

use App\Brand;
use App\Categories;
use App\Component\RecusiveOptionSelect;
use App\Product;
use App\ProductImage;
use App\ProductTag;
use App\Tag;
use App\Traits\StorageImageTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    use StorageImageTrait;
    private $product, $cate, $brand, $tag, $product_tag, $product_image;
    public function __construct(Product $product, Categories $cate, Brand $brand, Tag $tag, ProductImage $product_image, ProductTag $product_tag)
    {
        $this->product = $product;
        $this->cate = $cate;
        $this->brand = $brand;
        $this->tag = $tag;
        $this->product_image = $product_image;
        $this->product_tag = $product_tag;
    }

    public function index(){
        $products = $this->product->whereNull('deleted_at')->latest()->paginate(5);
        return view('admin.product.index', [
            'products'=>$products,
            'page'=>'product'
        ]);
    }

    public function search(Request $request){
        $products = $this->product->whereNull('deleted_at')->where('name', 'like', '%'.$request->key.'%')->latest()->paginate(5);
        return view('admin.product.search', [
            'products'=>$products,
            'page'=>'product',
            'key'=>$request->key
        ]);
    }

    public function view($id){
        $product = $this->product->find($id);
        $cates = $this->cate->whereNull('deleted_at')->get();
        $brands = $this->brand->whereNull('deleted_at')->get();
        $recusiveCate = new RecusiveOptionSelect($cates);
        $htmlCate = $recusiveCate->Option('', 0, $product->category_id);
        return view('admin.product.view', [
            'product'=>$product,
            'htmlCate'=>$htmlCate,
            'brands'=>$brands,
            'page'=>'product'
        ]);
    }

    public function add(){
        $cates = $this->cate->whereNull('deleted_at')->get();
        $brands = $this->brand->whereNull('deleted_at')->get();
        $recusiveCate = new RecusiveOptionSelect($cates);
        $htmlCate = $recusiveCate->Option('', 0, null);
        $tags = $this->tag->whereNull('deleted_at')->get();

        return view('admin.product.add', [
            'htmlCate'=>$htmlCate,
            'brands'=>$brands,
            'tags'=>$tags,
            'page'=>'product'
        ]);
    }

    public function store(Request $request){
        try {
            DB::beginTransaction();
            $product = $this->product->create([
                'name'=>$request->name,
                'price'=>$request->price,
                'inventory' => $request->inventory,
                'slug'=>Str::slug($request->name),
                'model'=>$request->model,
                'made_by'=>$request->made_by,
                'des'=>$request->des,
                'content'=>$request->content1,
                'image_path'=>$this->StorageImage($request, 'image', 'product') ,
                'user_id'=>auth()->user()->id,
                'category_id'=>$request->cate,
                'brand_id'=>$request->brand
            ]);
            if ($request->images != null){
                foreach ($request->images as $image){
                    $this->product_image->create([
                       'image_path'=>$this->StorageMultipleImage($image, 'product'),
                        'product_id'=>$product->id
                    ]);
                }
            }
            $tagids = [];
            if ($request->tags != null){
                foreach ($request->tags as $tag){
                    $temp = $this->tag->firstOrCreate([
                        'name'=>$tag
                    ]);
                    $tagids[] = $temp->id;
                }
                $product->tags()->sync($tagids);
            }

            DB::commit();
            return redirect()->route('product.index')->with('add-oke', 'oke');

        }catch (\Exception $exception){
            DB::rollBack();
            Log::error('--Message'.$exception->getMessage()." -- Line: ".$exception->getLine());
        }
    }

    public function update($id){
        $product = $this->product->find($id);
        $cates = $this->cate->whereNull('deleted_at')->get();
        $brands = $this->brand->whereNull('deleted_at')->get();
        $recusiveCate = new RecusiveOptionSelect($cates);
        $htmlCate = $recusiveCate->Option('', 0, $product->category_id);
        $tags = $this->tag->whereNull('deleted_at')->get();
        return view('admin.product.update', [
            'product'=>$product,
            'htmlCate'=>$htmlCate,
            'brands'=>$brands,
            'allTag'=>$tags,
            'page'=>'product'
        ]);
    }

    public function postUpdate(Request $request,$id){
        try {
            DB::beginTransaction();
            $product = $this->product->find($id);
            $imgProductAllId = [];
            $imgProductIdNotChoosen = [];
            // lấy tất cả các id ảnh chi tiết của sản phầm
            foreach ($product->images as $img){
                $imgProductAllId[] = $img->id;
            }
            // nếu có ảnh chi tiết thì tìm ra ảnh chi tiết muốn xóa
            $imgProductIdChoosen = $request->id_imgs == null ? [] : $request->id_imgs;
            $imgProductIdNotChoosen = array_diff($imgProductAllId, $imgProductIdChoosen);
            foreach ($imgProductIdNotChoosen as $notChooseId){
                $imgNotChoose = $this->product_image->find($notChooseId);
                $imgNotChoose->delete();
            }
            $image_path = '';
            // nếu ko xóa ảnh chính
            if ($request->is_isset_image != null){
                // nếu giữ nguyên ảnh
                if ($request->image == null){
                    $image_path = $product->image_path;
                }
                // nếu thay đổi ảnh
                else{
                    $image_path = $this->StorageImage($request, 'image', 'product');
                }
            }
            // nếu xóa ảnh chính
            else{
                // nếu thay ảnh mới
                if ($request->image != null){
                    $image_path = $this->StorageImage($request, 'image', 'product');
                }
            }

            $product->update([
                'name'=>$request->name,
                'price'=>$request->price,
                'slug'=>Str::slug($request->name),
                'model'=>$request->model,
                'made_by'=>$request->made_by,
                'des'=>$request->des,
                'content'=>$request->content1,
                'image_path'=>$image_path,
                'user_id'=>auth()->user()->id,
                'category_id'=>$request->cate,
                'brand_id'=>$request->brand
            ]);
            // nếu thêm ảnh chi tiết mới
            if ($request->images != null){
                if ($request->images[0] != null) {
                    foreach ($request->images as $image){
                        $this->product_image->create([
                            'image_path'=>$this->StorageMultipleImage($image, 'product'),
                            'product_id'=>$product->id
                        ]);
                    }
                }
            }
            $tagids = [];
            // thay đổi tag
            if ($request->tags != null){
                foreach ($request->tags as $tag){
                    $temp = $this->tag->firstOrCreate([
                        'name'=>$tag,
                        'user_id'=>auth()->user()->id
                    ]);
                    $tagids[] = $temp->id;
                }
            }
            $product->tags()->sync($tagids);
            DB::commit();
            return redirect()->route('product.index')->with('update-oke', 'oke');
        }catch (\Exception $exception){
            DB::rollBack();
            Log::error('--Message'.$exception->getMessage()." -- Line: ".$exception->getLine());
        }
    }

    public function delete($id){
        try {
            $product = $this->product->find($id);
            $product->update([
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
        $products = $this->product->whereNotNull('deleted_at')->latest()->paginate(5);
        return view('admin.product.trash', [
            'products'=>$products,
            'page'=>'product'
        ]);
    }

    public function restore($id){
        try {
            $cate = $this->product->find($id);
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
            $cate = $this->product->find($id);
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
