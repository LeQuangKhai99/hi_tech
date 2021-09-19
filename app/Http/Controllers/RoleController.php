<?php

namespace App\Http\Controllers;

use App\Permission;
use App\Role;
use Illuminate\Http\Request;

class RoleController extends Controller
{
    private $role, $per;
    public function __construct(Role $role, Permission $per){
        $this->role = $role;
        $this->per = $per;
    }
    public function index(){
        $roles = $this->role->with('user')->whereNull('deleted_at')->latest()->paginate(5);
        return view('admin.role.index', [
            'roles'=>$roles,
            'page'=>'role'
        ]);
    }

    public function add(){
        $parentPermission = $this->per->where('parent_id', '0')->whereNull('deleted_at')->get();
        return view('admin.role.add', [
            'parentPermission'=>$parentPermission,
            'page'=>'role'
        ]);
    }

    public function store(Request $request){
        $data = [
            'name'=>$request->name,
            'des'=>$request->des,
            'user_id'=>auth()->user()->id,
        ];
        $role = $this->role->create($data);
        $role->permissions()->sync($request->permission_id);
        return redirect()->route('role.index')->with(['add-oke'=>'Thêm thành công']);
    }

    public function update($id){
        $role = $this->role->find($id);
        $user = $role->user == null ? 'Trống' : $role->user->name;
        $parentPermission = $this->per->where('parent_id', '0')->whereNull('deleted_at')->get();
        $permissionChecked = $role->permissions()->get();
        return view('admin.role.update',[
            'role'=>$role,
            'user'=>$user,
            'parentPermission'=>$parentPermission,
            'permissionChecked'=>$permissionChecked,
            'page'=>'role'
        ]);
    }

    public function postUpdate(Request $request, $id){
        $role = $this->role->find($request->id);
        $role->update([
            'name'=>$request->name,
            'user_id'=>auth()->user()->id,
            'des'=>$request->des == null ? '' : $request->des,
        ]);
        $role->permissions()->sync($request->permission_id);
        return redirect()->route('role.index')->with(['update-oke'=>'Cập nhật thành công']);
    }

    public function delete($id){
        try {
            $role = $this->role->find($id);
            $role->update([
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
        $roles = $this->role->whereNotNull('deleted_at')->latest()->paginate(5);
        return view('admin.role.trash', [
            'roles'=>$roles,
            'page'=>'role'
        ]);
    }

    public function restore($id){
        try {
            $role = $this->role->find($id);
            $role->update([
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
            $role = $this->role->find($id);
            $role->delete();
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
