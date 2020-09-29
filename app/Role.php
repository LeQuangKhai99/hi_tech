<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    protected $table = 'roles';
    protected $guarded = [];

    public function user(){
        return $this->belongsTo('App\User', 'user_id', 'id');
    }

    public function permissions(){
        return $this->belongsToMany('App\Permission', 'permission_roles', 'role_id', 'permission_id');
    }
}
