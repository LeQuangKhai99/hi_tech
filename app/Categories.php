<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Categories extends Model
{
    protected $guarded = [];
    protected $table = 'categories';

    public function parentCate(){
        return $this->belongsTo('App\Categories', 'parent_id', 'id');
    }

    public function childCate(){
        return $this->hasMany('App\Categories', 'parent_id', 'id');
    }

    public function products(){
        return $this->hasMany('App\Product', 'category_id', 'id');
    }

    public function user(){
        return $this->belongsTo('App\User', 'user_id', 'id');
    }
}
