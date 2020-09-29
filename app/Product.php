<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $guarded = [];

    public function user(){
        return $this->belongsTo('App\User', 'user_id', 'id');
    }

    public function category(){
        return $this->belongsTo('App\Categories', 'category_id', 'id');
    }

    public function brand(){
        return $this->belongsTo('App\Brand', 'brand_id', 'id');
    }

    public function tags(){
        return $this->belongsToMany('App\Tag', 'product_tag', 'product_id', 'tag_id')->withTimestamps();
    }

    public function images(){
        return $this->hasMany('App\ProductImage', 'product_id', 'id');
    }

}
