<?php

namespace App\Http\Controllers;

use App\Component\RecusiveOptionSelect;
use App\Post;
use App\PostCate;
use App\Project;
use App\Traits\StorageImageTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Str;

class ProjectController extends Controller
{
    use StorageImageTrait;
    private $project;
    public function __construct(Project $project)
    {
        $this->project = $project;
    }

    public function index(){
        $projects = $this->project->whereNull('deleted_at')->latest()->paginate(5);
        return view('admin.project.index', [
            'projects'=>$projects,
            'page'=>'project'
        ]);
    }

    public function view($id){
        $project = $this->project->find($id);
        return view('admin.project.view', [
            'project'=>$project,
            'page'=>'project'
        ]);
    }

    public function add(){
        return view('admin.project.add', [
            'page'=>'project'
        ]);
    }

    public function store(Request $request){
        try {
            DB::beginTransaction();
            $project = $this->project->create([
                'title'=>$request->title,
                'slug'=>Str::slug($request->title),
                'summary'=>$request->summary,
                'content'=>$request->content1,
                'image_path'=>$this->StorageImage($request, 'image', 'project') ,
                'user_id'=>auth()->user()->id,
            ]);
            if ($request->images != null){
                foreach ($request->images as $image){
                    $this->project_image->create([
                        'image_path'=>$this->StorageMultipleImage($image, 'project'),
                    ]);
                }
            }
            DB::commit();
            return redirect()->route('project.index')->with('add-oke', 'oke');

        }catch (\Exception $exception){
            DB::rollBack();
            Log::error('--Message'.$exception->getMessage()." -- Line: ".$exception->getLine());
        }
    }

    public function update($id){
        $project = $this->project->find($id);
        return view('admin.project.update', [
            'project'=>$project,
            'page'=>'project'
        ]);
    }

    public function postUpdate(Request $request,$id){
        try {
            DB::beginTransaction();
            $project = $this->project->find($id);
            $image_path = '';
            // nếu ko xóa ảnh chính
            if ($request->is_isset_image != null){
                // nếu giữ nguyên ảnh
                if ($request->image == null){
                    $image_path = $project->image_path;
                }
                // nếu thay đổi ảnh
                else{
                    $image_path = $this->StorageImage($request, 'image', 'project');
                }
            }
            // nếu xóa ảnh chính
            else{
                // nếu thay ảnh mới
                if ($request->image != null){
                    $image_path = $this->StorageImage($request, 'image', 'project');
                }
            }
            $project->update([
                'title'=>$request->title,
                'slug'=>Str::slug($request->title),
                'content'=>$request->content1,
                'image_path'=>$image_path,
                'user_id'=>auth()->user()->id
            ]);
            DB::commit();
            return redirect()->route('project.index')->with('update-oke', 'oke');
        }catch (\Exception $exception){
            DB::rollBack();
            Log::error('--Message'.$exception->getMessage()." -- Line: ".$exception->getLine());
        }
    }

    public function delete($id){
        try {
            $project = $this->project->find($id);
            $project->update([
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
        $projects = $this->project->whereNotNull('deleted_at')->latest()->paginate(5);
        return view('admin.project.trash', [
            'projects'=>$projects,
            'page'=>'project'
        ]);
    }

    public function restore($id){
        try {
            $cate = $this->project->find($id);
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
            $cate = $this->project->find($id);
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
