<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PostCate extends Model
{
    protected $table = 'post_cates';
    protected $guarded = [];

    public function user(){
        return $this->belongsTo('App\User', 'user_id', 'id');
    }
}
