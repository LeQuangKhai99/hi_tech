<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;

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

    public function allChildCate()
    {
        $child_cates = [$this];
        $cates = [$this];
        while(count($cates) > 0) {
            $nextCates = [];
            foreach ($cates as $cate) {
                $chirds = $cate->childCate()->get()->toArray();
                var_dump($chirds);
                var_dump('                                                                               ');
                var_dump($child_cates);
                $child_cates = array_merge($child_cates,$chirds );
                $nextCates = array_merge($nextCates, $chirds);
            }
            $cates = $nextCates;
        }

        return new Collection($child_cates);
    }

    public function allChilds()
    {
        return $this->childCate()->with('allChilds');
    }

    public function products(){
        return $this->hasMany('App\Product', 'category_id', 'id');
    }

    public function user(){
        return $this->belongsTo('App\User', 'user_id', 'id');
    }
}
