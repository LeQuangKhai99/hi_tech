<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    protected $table = 'tags';
    protected $guarded = [];

    public function products(){
        return $this->belongsToMany('App\Product', 'product_tag', 'tag_id', 'product_id')->withTimestamps();
    }

    public function user(){
        return $this->belongsTo('App\User', 'user_id', 'id');
    }
}
