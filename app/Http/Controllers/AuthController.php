<?php

namespace App\Http\Controllers;

use App\Http\Requests\RegisterRequest;
use App\info;
use App\Role;
use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Laravel\Socialite\Facades\Socialite;

class AuthController extends Controller
{
    private $user, $role, $info;

    public function __construct(User $user, Role $role, info $info)
    {
        $this->user = $user;
        $this->role = $role;
        $this->info = $info;
    }

    public function index(){
        $user = $this->user->whereNull('deleted_at')->latest()->paginate(5);
        $roles = $this->role->whereNull('deleted_at')->get();
        return view('admin.user.index', ['users'=>$user, 'roles'=>$roles, 'page'=>'user']);
    }

    public function update($id){
        $user = $this->user->find($id);
        $roles = $this->role->whereNull('deleted_at')->get();
        $roleOfUser = $user->roles;
        $infos = $user->infos;
        return response()->json([
            'user'=>$user,
            'roles'=>$roles,
            'roleOfUser'=>$roleOfUser,
            'infos'=>$infos
        ]);
    }

    public function postUpdate(Request $request){
        $user = $this->user->find($request->id);
        $user->infos()->delete();
        $user->update([
            'name' => $request->name,
            'phone' => $request->phone,
            'email' => $request->email,
            'address' => $request->address,
            'password' => Hash::make($request->password),
        ]);
        if (isset($request->address2)) {
            foreach ($request->address2 as $address){
                if ($address != null) {
                    $this->info->create([
                        'address'=>$address,
                        'user_id'=>$user->id
                    ]);
                }
            }
        }
        $user->roles()->sync($request->roles);
        return redirect()->route('user.index')->with(['add-oke'=>'oke']);
    }

    public function delete($id){
        try {
            $cate = $this->user->find($id);
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
        $user = $this->user->whereNotNull('deleted_at')->latest()->paginate(5);
        return view('admin.user.trash', [
            'users'=>$user,
            'page'=>'user'
        ]);
    }

    public function restore($id){
        try {
            $user = $this->user->find($id);
            $user->update([
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
            $user = $this->user->find($id);
            $user->delete();
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

    public function login(){
        return view('admin.auth.login');
    }

    public function postLogin(Request $request){
        $isLogin = Auth::attempt([
            'email'=>$request->email,
            'password'=>$request->password
        ]);
        if ($isLogin){
            return redirect()->route('home');
        }
        else{
            return redirect()->route('auth.login')->with('mess-err','Sai tài khoản hoặc mật khẩu');
        }
    }

    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }

    public function handleGoogleCallback(Request $request)
    {
        $user = Socialite::driver('google')->user();
        $userCheck = $this->user->where('email', $user->email)->first();
        if($userCheck) 
        {
            Auth::login($userCheck);
        }
        else {
            $userNew = $this->user->create([
                'name' => $user->name,
                'email' => $user->email,
                'password' => Hash::make('123456'),
            ]);
            Auth::login($userNew);
        }
        
        return redirect('/');
    }

    public function handleFacebookCallback() {
        dd('aa');
    }

    public function register(){
        return view('admin.auth.register');
    }

    public function create(RegisterRequest $request)
    {
        $user = $this->user->create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'address' => $request->address,
            'phone' => $request->phone,
            'password' => Hash::make($request->password),
        ]);

        if (isset($request->address2)) {
            foreach ($request->address2 as $address){
                if ($address != null) {
                    $this->info->create([
                        'address'=>$address,
                        'user_id'=>$user->id
                    ]);
                }
            }
        }

        if ($request->roles != null){
            $user->roles()->sync($request->roles);
        }
        if ($request->admin != null){
            return redirect()->route('user.index')->with(['add-oke'=>'oke']);
        }else{
            return redirect()->route('auth.login')->with(['oke'=>'oke']);
        }
    }

    public function logout(){
        Auth::logout();
        return redirect()->route('auth.login');
    }
}
