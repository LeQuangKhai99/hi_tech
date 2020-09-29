<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function roles(){
        return $this->belongsToMany('App\Role', 'user_roles', 'user_id', 'role_id');
    }

    public function CheckPermissionAccess($key_code){
        // lấy đc tất cả các quyền của user đang login trong hệ thống
        $roles = auth()->user()->roles()->get();
        // so sánh giá trị đưa vào của router hiện tại xem có tồn tại trong các quyền mình lấy đc hay ko
        foreach ($roles as $role){
            $permissions = $role->permissions()->get();
            if ($permissions->contains('key_code', $key_code)){
                return  true;
            }
        }
        return false;
    }
}
