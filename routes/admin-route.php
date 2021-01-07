<?php
Route::prefix('auth')->group(function () {
    Route::get('/login', [
        'as'=>'auth.login',
        'uses'=>'AuthController@login'
    ]);

    Route::post('/login', [
        'as'=>'auth.login',
        'uses'=>'AuthController@postLogin',
    ]);

    Route::get('/logout', [
        'as'=>'auth.logout',
        'uses'=>'AuthController@logout'
    ]);

    Route::get('/register', [
        'as'=>'auth.register',
        'uses'=>'AuthController@register'
    ]);

    Route::post('/register', [
        'as'=>'auth.create',
        'uses'=>'AuthController@create'
    ]);
});
Route::group(['prefix'=>'admin', 'middleware'=>['check_login']],function () {
    Route::get('/', [
        'as'=>'trang-chu',
        'uses'=>'HomeController@index'
    ]);


    Route::prefix('category')->group(function () {
        Route::get('/',[
            'as'=>'category.index',
            'uses'=>'CategoryController@index',
            'middleware'=>'can:category-list'
        ]);
        Route::get('/add', [
            'as'=>'category.add',
            'uses'=>'CategoryController@add'
        ]);
        Route::post('/add', [
            'as'=>'category.add',
            'uses'=>'CategoryController@store',
            'middleware'=>'can:category-add'
        ]);
        Route::get('/update/{id}', [
            'as'=>'category.update',
            'uses'=>'CategoryController@update',
            'middleware'=>'can:category-update'
        ]);
        Route::post('/update', [
            'as'=>'category.postUpdate',
            'uses'=>'CategoryController@postUpdate',
            'middleware'=>'can:category-update'
        ]);
        Route::get('/delete/{id}', [
            'as'=>'category.delete',
            'uses'=>'CategoryController@delete',
            'middleware'=>'can:category-delete'
        ]);
        Route::get('/trash', [
            'as'=>'category.trash',
            'uses'=>'CategoryController@trash',
            'middleware'=>'can:category-trash'
        ]);
        Route::get('/restore/{id}', [
            'as'=>'category.restore',
            'uses'=>'CategoryController@restore',
            'middleware'=>'can:category-restore'
        ]);
        Route::get('/forceDelete/{id}', [
            'as'=>'category.forceDelete',
            'uses'=>'CategoryController@forceDelete',
            'middleware'=>'can:category-force-delete'
        ]);
    });

    Route::prefix('product')->group(function () {
        Route::get('/',[
            'as'=>'product.index',
            'uses'=>'ProductController@index',
            'middleware'=>'can:product-list'
        ]);
        Route::get('/search',[
            'as'=>'product.search',
            'uses'=>'ProductController@search',
            'middleware'=>'can:product-list'
        ]);
        Route::get('/view/{id}', [
           'as'=>'product.view',
           'uses'=>"ProductController@view",
            'middleware'=>'can:product-view'
        ]);
        Route::get('/add', [
            'as'=>'product.add',
            'uses'=>'ProductController@add',
            'middleware'=>'can:product-add'
        ]);
        Route::post('/add', [
            'as'=>'product.add',
            'uses'=>'ProductController@store',
            'middleware'=>'can:product-add'
        ]);
        Route::get('/update/{id}', [
            'as'=>'product.update',
            'uses'=>'ProductController@update',
            'middleware'=>'can:product-add'
        ]);
        Route::post('/update/{id}', [
            'as'=>'product.postUpdate',
            'uses'=>'ProductController@postUpdate',
            'middleware'=>'can:product-update'
        ]);
        Route::get('/delete/{id}', [
            'as'=>'product.delete',
            'uses'=>'ProductController@delete',
            'middleware'=>'can:product-delete'
        ]);
        Route::get('/trash', [
            'as'=>'product.trash',
            'uses'=>'ProductController@trash',
            'middleware'=>'can:product-trash'
        ]);
        Route::get('/restore/{id}', [
            'as'=>'product.restore',
            'uses'=>'ProductController@restore',
            'middleware'=>'can:product-restore'
        ]);
        Route::get('/forceDelete/{id}', [
            'as'=>'product.forceDelete',
            'uses'=>'ProductController@forceDelete',
            'middleware'=>'can:product-force-delete'
        ]);
    });

    Route::prefix('tag')->group(function () {
        Route::get('/',[
            'as'=>'tag.index',
            'uses'=>'TagController@index',
            'middleware'=>'can:product-list'
        ]);
        Route::get('/view/{id}', [
            'as'=>'tag.view',
            'uses'=>"TagController@view",
            'middleware'=>'can:product-view'
        ]);
        Route::get('/add', [
            'as'=>'tag.add',
            'uses'=>'TagController@add',
            'middleware'=>'can:product-add'
        ]);
        Route::post('/add', [
            'as'=>'tag.add',
            'uses'=>'TagController@store',
            'middleware'=>'can:tag-add'
        ]);
        Route::get('/update/{id}', [
            'as'=>'tag.update',
            'uses'=>'TagController@update',
            'middleware'=>'can:tag-update'
        ]);
        Route::post('/update', [
            'as'=>'tag.postUpdate',
            'uses'=>'TagController@postUpdate',
            'middleware'=>'can:tag-update'
        ]);
        Route::get('/delete/{id}', [
            'as'=>'tag.delete',
            'uses'=>'TagController@delete',
            'middleware'=>'can:tag-delete'
        ]);
        Route::get('/trash', [
            'as'=>'tag.trash',
            'uses'=>'TagController@trash',
            'middleware'=>'can:tag-trash'
        ]);
        Route::get('/restore/{id}', [
            'as'=>'tag.restore',
            'uses'=>'TagController@restore',
            'middleware'=>'can:tag-restore'
        ]);
        Route::get('/forceDelete/{id}', [
            'as'=>'tag.forceDelete',
            'uses'=>'TagController@forceDelete',
            'middleware'=>'can:tag-force-delete'
        ]);
    });

    Route::prefix('brand')->group(function () {
        Route::get('/',[
            'as'=>'brand.index',
            'uses'=>'BrandController@index',
            'middleware'=>'can:brand-list'
        ]);
        Route::get('/add', [
            'as'=>'brand.add',
            'uses'=>'BrandController@add',
            'middleware'=>'can:brand-add'
        ]);
        Route::post('/add', [
            'as'=>'brand.add',
            'uses'=>'BrandController@store',
            'middleware'=>'can:brand-add'
        ]);
        Route::get('/update/{id}', [
            'as'=>'brand.update',
            'uses'=>'BrandController@update',
            'middleware'=>'can:brand-update'
        ]);
        Route::post('/update', [
            'as'=>'brand.postUpdate',
            'uses'=>'BrandController@postUpdate',
            'middleware'=>'can:brand-update'
        ]);
        Route::get('/delete/{id}', [
            'as'=>'brand.delete',
            'uses'=>'BrandController@delete',
            'middleware'=>'can:brand-delete'
        ]);
        Route::get('/trash', [
            'as'=>'brand.trash',
            'uses'=>'BrandController@trash',
            'middleware'=>'can:brand-trash'
        ]);
        Route::get('/restore/{id}', [
            'as'=>'brand.restore',
            'uses'=>'BrandController@restore',
            'middleware'=>'can:brand-restore'
        ]);
        Route::get('/forceDelete/{id}', [
            'as'=>'brand.forceDelete',
            'uses'=>'BrandController@forceDelete',
            'middleware'=>'can:brand-force-delete'
        ]);
    });

    Route::prefix('slide')->group(function () {
        Route::get('/',[
            'as'=>'slide.index',
            'uses'=>'SlideController@index',
            'middleware'=>'can:slide-list'
        ]);
        Route::get('/add', [
            'as'=>'slide.add',
            'uses'=>'SlideController@add',
            'middleware'=>'can:slide-add'
        ]);
        Route::post('/add', [
            'as'=>'slide.add',
            'uses'=>'SlideController@store',
            'middleware'=>'can:slide-add'
        ]);
        Route::get('/update/{id}', [
            'as'=>'slide.update',
            'uses'=>'SlideController@update',
            'middleware'=>'can:slide-update'
        ]);
        Route::post('/update', [
            'as'=>'slide.postUpdate',
            'uses'=>'SlideController@postUpdate',
            'middleware'=>'can:slide-update'
        ]);
        Route::get('/delete/{id}', [
            'as'=>'slide.delete',
            'uses'=>'SlideController@delete',
            'middleware'=>'can:slide-delete'
        ]);
        Route::get('/trash', [
            'as'=>'slide.trash',
            'uses'=>'SlideController@trash',
            'middleware'=>'can:slide-trash'
        ]);
        Route::get('/restore/{id}', [
            'as'=>'slide.restore',
            'uses'=>'SlideController@restore',
            'middleware'=>'can:slide-restore'
        ]);
        Route::get('/forceDelete/{id}', [
            'as'=>'slide.forceDelete',
            'uses'=>'SlideController@forceDelete',
            'middleware'=>'can:slide-force-delete'
        ]);
    });

    Route::prefix('post-cate')->group(function () {
        Route::get('/',[
            'as'=>'post-cate.index',
            'uses'=>'PostCateController@index',
            'middleware'=>'can:post-cate-list'
        ]);
        Route::get('/add', [
            'as'=>'post-cate.add',
            'uses'=>'PostCateController@add',
            'middleware'=>'can:post-cate-add'
        ]);
        Route::post('/add', [
            'as'=>'post-cate.add',
            'uses'=>'PostCateController@store',
            'middleware'=>'can:post-cate-add'
        ]);
        Route::get('/update/{id}', [
            'as'=>'post-cate.update',
            'uses'=>'PostCateController@update',
            'middleware'=>'can:post-cate-update'
        ]);
        Route::post('/update', [
            'as'=>'post-cate.postUpdate',
            'uses'=>'PostCateController@postUpdate',
            'middleware'=>'can:post-cate-update'
        ]);
        Route::get('/delete/{id}', [
            'as'=>'post-cate.delete',
            'uses'=>'PostCateController@delete',
            'middleware'=>'can:post-cate-delete'
        ]);
        Route::get('/trash', [
            'as'=>'post-cate.trash',
            'uses'=>'PostCateController@trash',
            'middleware'=>'can:post-cate-trash'
        ]);
        Route::get('/restore/{id}', [
            'as'=>'post-cate.restore',
            'uses'=>'PostCateController@restore',
            'middleware'=>'can:post-cate-restore'
        ]);
        Route::get('/forceDelete/{id}', [
            'as'=>'post-cate.forceDelete',
            'uses'=>'PostCateController@forceDelete',
            'middleware'=>'can:post-cate-force-delete'
        ]);
    });

    Route::prefix('post')->group(function () {
        Route::get('/',[
            'as'=>'post.index',
            'uses'=>'PostController@index',
            'middleware'=>'can:post-list'
        ]);
        Route::get('/view/{id}', [
            'as'=>'post.view',
            'uses'=>"PostController@view",
            'middleware'=>'can:post-view'
        ]);
        Route::get('/add', [
            'as'=>'post.add',
            'uses'=>'PostController@add',
            'middleware'=>'can:post-add'
        ]);
        Route::post('/add', [
            'as'=>'post.add',
            'uses'=>'PostController@store',
            'middleware'=>'can:post-add'
        ]);
        Route::get('/update/{id}', [
            'as'=>'post.update',
            'uses'=>'PostController@update',
            'middleware'=>'can:post-update'
        ]);
        Route::post('/update/{id}', [
            'as'=>'post.postUpdate',
            'uses'=>'PostController@postUpdate',
            'middleware'=>'can:post-update'
        ]);
        Route::get('/delete/{id}', [
            'as'=>'post.delete',
            'uses'=>'PostController@delete',
            'middleware'=>'can:post-delete'
        ]);
        Route::get('/trash', [
            'as'=>'post.trash',
            'uses'=>'PostController@trash',
            'middleware'=>'can:post-trash'
        ]);
        Route::get('/restore/{id}', [
            'as'=>'post.restore',
            'uses'=>'PostController@restore',
            'middleware'=>'can:post-restore'
        ]);
        Route::get('/forceDelete/{id}', [
            'as'=>'post.forceDelete',
            'uses'=>'PostController@forceDelete',
            'middleware'=>'can:post-force-delete'
        ]);
    });

    Route::prefix('user')->group(function () {
        Route::get('/',[
            'as'=>'user.index',
            'uses'=>'AuthController@index',
            'middleware'=>'can:user-list'
        ]);
        Route::get('/add', [
            'as'=>'user.add',
            'uses'=>'AuthController@add',
            'middleware'=>'can:user-add'
        ]);
        Route::post('/add', [
            'as'=>'user.add',
            'uses'=>'AuthController@create',
            'middleware'=>'can:user-add'
        ]);
        Route::get('/update/{id}', [
            'as'=>'user.update',
            'uses'=>'AuthController@update',
            'middleware'=>'can:user-update'
        ]);
        Route::post('/update', [
            'as'=>'user.postUpdate',
            'uses'=>'AuthController@postUpdate',
            'middleware'=>'can:user-update'
        ]);
        Route::get('/delete/{id}', [
            'as'=>'user.delete',
            'uses'=>'AuthController@delete',
            'middleware'=>'can:user-delete'
        ]);
        Route::get('/trash', [
            'as'=>'user.trash',
            'uses'=>'AuthController@trash',
            'middleware'=>'can:user-trash'
        ]);
        Route::get('/restore/{id}', [
            'as'=>'user.restore',
            'uses'=>'AuthController@restore',
            'middleware'=>'can:user-restore'
        ]);
        Route::get('/forceDelete/{id}', [
            'as'=>'user.forceDelete',
            'uses'=>'AuthController@forceDelete',
            'middleware'=>'can:user-force-delete'
        ]);
    });

    Route::prefix('role')->group(function () {
        Route::get('/',[
            'as'=>'role.index',
            'uses'=>'RoleController@index'
        ]);
        Route::get('/add', [
            'as'=>'role.add',
            'uses'=>'RoleController@add',
            'middleware'=>'can:role-add'
        ]);
        Route::post('/add', [
            'as'=>'role.add',
            'uses'=>'RoleController@store',
            'middleware'=>'can:role-add'
        ]);
        Route::get('/update/{id}', [
            'as'=>'role.update',
            'uses'=>'RoleController@update',
            'middleware'=>'can:role-update'
        ]);
        Route::post('/update/{id}', [
            'as'=>'role.postUpdate',
            'uses'=>'RoleController@postUpdate',
            'middleware'=>'can:role-update'
        ]);
        Route::get('/delete/{id}', [
            'as'=>'role.delete',
            'uses'=>'RoleController@delete',
            'middleware'=>'can:role-delete'
        ]);
        Route::get('/trash', [
            'as'=>'role.trash',
            'uses'=>'RoleController@trash',
            'middleware'=>'can:role-trash'
        ]);
        Route::get('/restore/{id}', [
            'as'=>'role.restore',
            'uses'=>'RoleController@restore',
            'middleware'=>'can:role-restore'
        ]);
        Route::get('/forceDelete/{id}', [
            'as'=>'role.forceDelete',
            'uses'=>'RoleController@forceDelete',
            'middleware'=>'can:role-force-delete'
        ]);
    });

    Route::prefix('per')->group(function () {
        Route::get('/',[
            'as'=>'per.index',
            'uses'=>'PermissionController@index',
            'middleware'=>'can:permission-list'
        ]);
        Route::get('/add', [
            'as'=>'per.add',
            'uses'=>'PermissionController@add',
            'middleware'=>'can:permission-add'
        ]);
        Route::post('/add', [
            'as'=>'per.add',
            'uses'=>'PermissionController@store',
            'middleware'=>'can:permission-add'
        ]);
        Route::get('/update/{id}', [
            'as'=>'per.update',
            'uses'=>'PermissionController@update',
            'middleware'=>'can:permission-update'
        ]);
        Route::post('/update', [
            'as'=>'per.postUpdate',
            'uses'=>'PermissionController@postUpdate',
            'middleware'=>'can:permission-update'
        ]);
        Route::get('/delete/{id}', [
            'as'=>'per.delete',
            'uses'=>'PermissionController@delete',
            'middleware'=>'can:permission-delete'
        ]);
        Route::get('/trash', [
            'as'=>'per.trash',
            'uses'=>'PermissionController@trash',
            'middleware'=>'can:permission-trash'
        ]);
        Route::get('/restore/{id}', [
            'as'=>'per.restore',
            'uses'=>'PermissionController@restore',
            'middleware'=>'can:permission-restore'
        ]);
        Route::get('/forceDelete/{id}', [
            'as'=>'per.forceDelete',
            'uses'=>'PermissionController@forceDelete',
            'middleware'=>'can:permission-force-delete'
        ]);
    });

    Route::prefix('intro')->group(function () {
        Route::get('/',[
            'as'=>'intro.index',
            'uses'=>'IntroController@index',
            'middleware'=>'can:intro-view'
        ]);

        Route::post('/add', [
            'as'=>'intro.add',
            'uses'=>'IntroController@store',
            'middleware'=>'can:intro-add'
        ]);
    });

    Route::prefix('service')->group(function () {
        Route::get('/',[
            'as'=>'service.index',
            'uses'=>'ServiceController@index',
            'middleware'=>'can:service-view'
        ]);

        Route::post('/add', [
            'as'=>'service.add',
            'uses'=>'ServiceController@store',
            'middleware'=>'can:service-add'
        ]);
    });

    Route::prefix('recruitment')->group(function () {
        Route::get('/',[
            'as'=>'recruitment.index',
            'uses'=>'RecruitmentController@index',
            'middleware'=>'can:recruitment-view'
        ]);

        Route::post('/add', [
            'as'=>'recruitment.add',
            'uses'=>'RecruitmentController@store',
            'middleware'=>'can:recruitment-add'
        ]);
    });

    Route::prefix('contact')->group(function () {
        Route::get('/',[
            'as'=>'contact.index',
            'uses'=>'ContactController@index',
            'middleware'=>'can:contact-list'
        ]);

        Route::get('/view/{id}', [
            'as'=>'contact.view',
            'uses'=>'ContactController@view',
            'middleware'=>'can:contact-view'
        ]);

        Route::get('/delete/{id}', [
            'as'=>'contact.delete',
            'uses'=>'ContactController@delete',
            'middleware'=>'can:contact-delete'
        ]);
        Route::get('/trash', [
            'as'=>'contact.trash',
            'uses'=>'ContactController@trash',
            'middleware'=>'can:contact-trash'
        ]);
        Route::get('/restore/{id}', [
            'as'=>'contact.restore',
            'uses'=>'ContactController@restore',
            'middleware'=>'can:contact-restore'
        ]);
        Route::get('/forceDelete/{id}', [
            'as'=>'contact.forceDelete',
            'uses'=>'ContactController@forceDelete',
            'middleware'=>'can:contact-force-delete'
        ]);
    });

    Route::prefix('project')->group(function () {
        Route::get('/',[
            'as'=>'project.index',
            'uses'=>'ProjectController@index',
            'middleware'=>'can:project-list'
        ]);
        Route::get('/view/{id}', [
            'as'=>'project.view',
            'uses'=>"ProjectController@view",
            'middleware'=>'can:project-view'
        ]);
        Route::get('/add', [
            'as'=>'project.add',
            'uses'=>'ProjectController@add',
            'middleware'=>'can:project-add'
        ]);
        Route::post('/add', [
            'as'=>'project.add',
            'uses'=>'ProjectController@store',
            'middleware'=>'can:project-add'
        ]);
        Route::get('/update/{id}', [
            'as'=>'project.update',
            'uses'=>'ProjectController@update',
            'middleware'=>'can:project-update'
        ]);
        Route::post('/update/{id}', [
            'as'=>'project.postUpdate',
            'uses'=>'ProjectController@postUpdate',
            'middleware'=>'can:project-update'
        ]);
        Route::get('/delete/{id}', [
            'as'=>'project.delete',
            'uses'=>'ProjectController@delete',
            'middleware'=>'can:project-delete'
        ]);
        Route::get('/trash', [
            'as'=>'project.trash',
            'uses'=>'ProjectController@trash',
            'middleware'=>'can:project-trash'
        ]);
        Route::get('/restore/{id}', [
            'as'=>'project.restore',
            'uses'=>'ProjectController@restore',
            'middleware'=>'can:project-restore'
        ]);
        Route::get('/forceDelete/{id}', [
            'as'=>'project.forceDelete',
            'uses'=>'ProjectController@forceDelete',
            'middleware'=>'can:project-force-delete'
        ]);
    });

    Route::prefix('order')->group(function () {
        Route::get('/',[
            'as'=>'order.index',
            'uses'=>'OrderController@index'
        ]);
//        Route::get('/view/{id}', [
//            'as'=>'project.view',
//            'uses'=>"ProjectController@view",
//            'middleware'=>'can:project-view'
//        ]);
        Route::get('/update/{id}', [
            'as'=>'order.update',
            'uses'=>'OrderController@update'
        ]);

        Route::get('/delete/{id}', [
            'as'=>'order.delete',
            'uses'=>'OrderController@delete'
        ]);
        Route::get('/trash', [
            'as'=>'order.trash',
            'uses'=>'OrderController@trash'
        ]);
        Route::get('/restore/{id}', [
            'as'=>'order.restore',
            'uses'=>'OrderController@restore'
        ]);
        Route::get('/forceDelete/{id}', [
            'as'=>'order.forceDelete',
            'uses'=>'OrderController@forceDelete'
        ]);
    });
});
