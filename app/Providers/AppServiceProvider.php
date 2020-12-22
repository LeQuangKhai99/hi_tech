<?php

namespace App\Providers;

use App\Categories;
use App\PostCate;
use App\Slide;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;

class AppServiceProvider extends ServiceProvider
{
    public function register()
    {

    }

    public function boot()
    {
        $parentCates = Categories::whereNull('deleted_at')->where('parent_id', 0)->get();
        $postCates = PostCate::whereNull('deleted_at')->get();
        $slides = Slide::whereNull('deleted_at')->get();
        Schema::defaultStringLength(255);
        View::share([
            'parentCates' => $parentCates,
            'postCates' => $postCates,
            'slides' => $slides
        ]);
    }
}
