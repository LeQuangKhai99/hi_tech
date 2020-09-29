<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Slide extends Model
{
    protected $guarded = [];
    protected $table = 'slides';
    public function user(){
        return $this->belongsTo('App\User', 'user_id', 'id');
    }
}
