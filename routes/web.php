<?php

use Illuminate\Support\Facades\Route;
use App\Events\Mess;
use App\Events\Notify;
@include ('admin-route.php');

Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web', 'auth']], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});

Route::get('/counter', function() {
    return view('counter');
});

Route::get('/sender', function() {
    return view('sender');
});

Route::post('sender', function() {
    $text = request()->text;
    event(new Mess($text));
    event(new Notify(1, 'adsa'));

});

Route::group(['prefix' => '', 'namespace'=>'Frontend'], function () {
    Route::get('/trang-chu', 'HomeController@index')->name('home');

    Route::get('/test', 'HomeController@test');
    Route::get('/test-recursive', function() {
        dump(\App\Categories::findOrFail(43)->allChildCate());
    });
    Route::get('/', [
        'as'=>'front-end.home',
        'uses'=>'HomeController@index'
    ]);

    Route::get('/cap-nhat-thong-tin-ca-nhan',[
        'as' => 'front-end.edit-info',
        'uses' => 'HomeController@editInfo'
    ]);

    Route::post('/cap-nhat-thong-tin-ca-nhan',[
        'as' => 'front-end.update-info',
        'uses' => 'HomeController@updateInfo'
    ]);

    Route::get('/doi-mat-khau',[
        'as' => 'front-end.change-pass',
        'uses' => 'HomeController@changePass'
    ]);

    Route::post('/doi-mat-khau',[
        'as' => 'front-end.post-change-pass',
        'uses' => 'HomeController@postChangePass'
    ]);

    Route::get('/thong-tin-dat-hang',[
        'as' => 'front-end.order-info',
        'uses' => 'HomeController@orderInfo'
    ]);

    Route::get('/gioi-thieu', [
        'as'=>'front-end.intro',
        'uses'=>'HomeController@intro'
    ]);
    Route::get('/dich-vu', [
        'as'=>'front-end.service',
        'uses'=>'HomeController@service'
    ]);
    Route::get('/tuyen-dung', [
        'as'=>'front-end.recruitment',
        'uses'=>'HomeController@recruitment'
    ]);
    Route::get('/lien-he', [
        'as'=>'front-end.contact',
        'uses'=>'HomeController@contact'
    ]);

    Route::get('/them-lien-he', [
        'as'=>'front-end.add-contact',
        'uses'=>'HomeController@addContact'
    ]);


    Route::group(['prefix' => '/du-an'], function () {
        Route::get('', [
            'as'=>'front-end.list-project',
            'uses'=>'HomeController@listProject'
        ]);

        Route::get('/chi-tiet/{slug}', [
            'as'=>'front-end.detail-project',
            'uses'=>'HomeController@detailProject'
        ]);
    });

    Route::group(['prefix' => '/tin-tuc'], function () {
        Route::get('/{slug}', [
            'as'=>'front-end.list-news',
            'uses'=>'HomeController@listNews'
        ]);

        Route::get('/chi-tiet/{slug}', [
            'as'=>'front-end.detail-news',
            'uses'=>'HomeController@detailNews'
        ]);
    });

    Route::group(['prefix' => '/san-pham'], function () {
        Route::get('/danh-sach-loai-san-pham/{slug}', [
            'as'=>'front-end.list-cate-product',
            'uses'=>'HomeController@listCateProduct'
        ]);

        Route::get('/danh-sach-san-pham/{slug}', [
            'as'=>'front-end.list-product',
            'uses'=>'HomeController@listProduct'
        ]);

        Route::get('/brand-danh-sach-san-pham/{slug}', [
            'as'=>'front-end.brand-list-product',
            'uses'=>'HomeController@brandListProduct'
        ]);

        Route::get('/chi-tiet/{slug}', [
            'as'=>'front-end.detail-product',
            'uses'=>'HomeController@detailProduct'
        ]);

        Route::get('/tim-kiem', [
            'as'=>'front-end.search-product',
            'uses'=>'HomeController@searchProduct'
        ]);
    });

    Route::group(['prefix'=>'/', 'middleware'=>['check_login']],function () {
        Route::get('/gio-hang', [
            'as'=>'front-end.cart',
            'uses'=>'CartController@index'
        ]);

        Route::get('/them-vao-gio-hang/{id}', [
            'as'=>'front-end.add-cart',
            'uses'=>'CartController@add'
        ]);

        Route::get('/giam-so-luong/{id}', [
            'as'=>'front-end.sub-cart',
            'uses'=>'CartController@sub'
        ]);

        Route::get('/xoa-khoi-gio-hang/{id}', [
            'as'=>'front-end.del-cart',
            'uses'=>'CartController@delete'
        ]);

        Route::get('/thanh-toan', [
            'as'=>'front-end.checkout',
            'uses'=>'CartController@checkout'
        ]);

        Route::post('/thanh-toan', [
            'as'=>'front-end.postCheckout',
            'uses'=>'CartController@postCheckout'
        ]);
    });

});
Route::get('export', 'ExportController@export')->name('export');
