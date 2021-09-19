<?php

namespace App\Http\Controllers;
use App\Component\RecusiveOptionSelect;
use App\Http\Requests\AddCategoryRequest;
use App\Permission;
use App\Traits\StorageImageTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PermissionController extends Controller
{
    use StorageImageTrait;
    private $per;
    public function __construct(Permission $per){
        $this->per = $per;
    }
    public function index(){
        $pers = $this->per->with('parentPer')->whereNull('deleted_at')->latest()->paginate(5);
        $perAll = $this->per->whereNull('deleted_at')->get();

        $recusive = new RecusiveOptionSelect($perAll);
        $html = $recusive->Option('', 0, null);
        return view('admin.permission.index', [
            'pers'=>$pers,
            'categoryAll'=>$perAll,
            'htmlListpermission'=>$html,
            'page'=>'permission'
        ]);

    }

    public function store(Request  $request){
        $data = [
            'name'=>$request->name,
            'des'=>$request->des ,
            'parent_id'=>$request->parent_id,
            'key_code'=>$request->key_code,
        ];
        $pers = $this->per->create($data);
        return redirect()->route('per.index')->with(['add-oke'=>'Thêm thành công']);
    }

    public function update($id){
        $per = $this->per->find($id);
        $perAll = $this->per->whereNull('deleted_at')->get();
        $recusive = new RecusiveOptionSelect($perAll);
        $html = '<option value="0">Đây là danh mục cha</option>';
        $html .= $recusive->Option('', 0, $per->parent_id);

        return response()->json([
            'per'=>$per,
            'html'=>$html,
        ]);
    }

    public function postUpdate(Request $request){
        $per = $this->per->find($request->id);
        $per->update([
            'name'=>$request->name,
            'des'=>$request->des ,
            'parent_id'=>$request->parent_id,
            'key_code'=>$request->key_code,
        ]);
        return redirect()->route('per.index')->with(['update-oke'=>'Cập nhật thành công']);
    }

    public function delete($id){
        try {
            $per = $this->per->find($id);
            $per->update([
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
        $pers = $this->per->whereNotNull('deleted_at')->latest()->paginate(5);
        return view('admin.permission.trash', [
            'pers'=>$pers,
            'page'=>'permission'
        ]);
    }

    public function restore($id){
        try {
            $per = $this->per->find($id);
            $per->update([
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
            $per = $this->per->find($id);
            $per->delete();
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
