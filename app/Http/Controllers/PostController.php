<?php

namespace App\Http\Controllers;

use App\Component\RecusiveOptionSelect;
use App\Post;
use App\PostCate;
use App\Traits\StorageImageTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;

class PostController extends Controller
{
    use StorageImageTrait;
    private $post, $postCate;
    public function __construct(Post $post, PostCate $postCate)
    {
        $this->post = $post;
        $this->postCate = $postCate;
    }

    public function index(){
        $posts = $this->post->whereNull('deleted_at')->latest()->paginate(5);
        return view('admin.post.index', [
            'posts'=>$posts,
            'page'=>'post'
        ]);
    }

    public function view($id){
        $post = $this->post->find($id);
        $cates = $this->postCate->whereNull('deleted_at')->get();
        $recusiveCate = new RecusiveOptionSelect($cates);
        $htmlCate = $recusiveCate->Option('', 0, $post->post_cate_id);
        return view('admin.post.view', [
            'post'=>$post,
            'htmlCate'=>$htmlCate,
            'page'=>'post'
        ]);
    }

    public function add(){
        $cates = $this->postCate->whereNull('deleted_at')->get();
        $recusiveCate = new RecusiveOptionSelect($cates);
        $htmlCate = $recusiveCate->Option('', 0, null);

        return view('admin.post.add', [
            'htmlCate'=>$htmlCate,
            'page'=>'post'
        ]);
    }

    public function store(Request $request){
        try {
            DB::beginTransaction();
            $post = $this->post->create([
                'title'=>$request->title,
                'slug'=>Str::slug($request->title),
                'summary'=>$request->summary,
                'content'=>$request->content1,
                'image_path'=>$this->StorageImage($request, 'image', 'post') ,
                'user_id'=>auth()->user()->id,
                'post_cate_id'=>$request->cate,
            ]);
            DB::commit();
            return redirect()->route('post.index')->with('add-oke', 'oke');

        }catch (\Exception $exception){
            DB::rollBack();
            Log::error('--Message'.$exception->getMessage()." -- Line: ".$exception->getLine());
        }
    }

    public function update($id){
        $post = $this->post->find($id);
        $cates = $this->postCate->whereNull('deleted_at')->get();
        $recusiveCate = new RecusiveOptionSelect($cates);
        $htmlCate = $recusiveCate->Option('', 0, $post->post_cate_id);
        return view('admin.post.update', [
            'post'=>$post,
            'htmlCate'=>$htmlCate,
            'page'=>'post'
        ]);
    }

    public function postUpdate(Request $request,$id){
        try {
            DB::beginTransaction();
            $post = $this->post->find($id);
            $image_path = '';
            // nếu ko xóa ảnh chính
            if ($request->is_isset_image != null){
                // nếu giữ nguyên ảnh
                if ($request->image == null){
                    $image_path = $post->image_path;
                }
                // nếu thay đổi ảnh
                else{
                    $image_path = $this->StorageImage($request, 'image', 'post');
                }
            }
            // nếu xóa ảnh chính
            else{
                // nếu thay ảnh mới
                if ($request->image != null){
                    $image_path = $this->StorageImage($request, 'image', 'post');
                }
            }
            $post->update([
                'title'=>$request->title,
                'slug'=>Str::slug($request->title),
                'content'=>$request->content1,
                'image_path'=>$image_path,
                'user_id'=>auth()->user()->id,
                'post_cate_id'=>$request->cate,
            ]);
            DB::commit();
            return redirect()->route('post.index')->with('update-oke', 'oke');
        }catch (\Exception $exception){
            DB::rollBack();
            Log::error('--Message'.$exception->getMessage()." -- Line: ".$exception->getLine());
        }
    }

    public function delete($id){
        try {
            $post = $this->post->find($id);
            $post->update([
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
        $posts = $this->post->whereNotNull('deleted_at')->latest()->paginate(5);
        return view('admin.post.trash', [
            'posts'=>$posts,
            'page'=>'post'
        ]);
    }

    public function restore($id){
        try {
            $cate = $this->post->find($id);
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
            $cate = $this->post->find($id);
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
