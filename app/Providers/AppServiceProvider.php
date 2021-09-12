<?php

namespace App\Providers;

use App\Categories;
use App\Notify;
use App\PostCate;
use App\Slide;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
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
        $slides = Slide::whereNull('deleted_at')->limit(3)->get();

        $notifies = Notify::whereBetween('created_at',[date('Y-m-d'), date("Y-m-d", strtotime('tomorrow'))])->limit(3)->orderBy('id', 'desc')->get();
        $totalNotice = Notify::where('status', 0)->whereBetween('created_at',[date('Y-m-d'), date("Y-m-d", strtotime('tomorrow'))])->count();
        Schema::defaultStringLength(255);
        View::share([
            'parentCates' => $parentCates,
            'postCates' => $postCates,
            'slides' => $slides,
            'notifies' => $notifies,
            'totalNotice' => $totalNotice
        ]);
    }
}
