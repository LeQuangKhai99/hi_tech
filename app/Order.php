<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $guarded = [];

    public function orderDetails(){
        return $this->hasMany('App\OrderDetail', 'order_id', 'id');
    }
}
