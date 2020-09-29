<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $guarded = [];
    protected $table = 'posts';

    public function user(){
        return $this->belongsTo('App\User', 'user_id', 'id');
    }

    public function postCate(){
        return $this->belongsTo('App\PostCate', 'post_cate_id', 'id');
    }
}
