<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::define('category-list', 'App\Policies\CategoryPolicy@viewAny');
        Gate::define('category-add', 'App\Policies\CategoryPolicy@create');
        Gate::define('category-update', 'App\Policies\CategoryPolicy@update');
        Gate::define('category-delete', 'App\Policies\CategoryPolicy@delete');
        Gate::define('category-restore', 'App\Policies\CategoryPolicy@restore');
        Gate::define('category-force-delete', 'App\Policies\CategoryPolicy@forceDelete');
        Gate::define('category-trash', 'App\Policies\CategoryPolicy@trash');

        Gate::define('product-list', 'App\Policies\ProductPolicy@viewAny');
        Gate::define('product-view', 'App\Policies\ProductPolicy@view');
        Gate::define('product-add', 'App\Policies\ProductPolicy@create');
        Gate::define('product-update', 'App\Policies\ProductPolicy@update');
        Gate::define('product-delete', 'App\Policies\ProductPolicy@delete');
        Gate::define('product-restore', 'App\Policies\ProductPolicy@restore');
        Gate::define('product-force-delete', 'App\Policies\ProductPolicy@forceDelete');
        Gate::define('product-trash', 'App\Policies\ProductPolicy@trash');

        Gate::define('tag-list', 'App\Policies\TagPolicy@viewAny');
        Gate::define('tag-add', 'App\Policies\TagPolicy@create');
        Gate::define('tag-update', 'App\Policies\TagPolicy@update');
        Gate::define('tag-delete', 'App\Policies\TagPolicy@delete');
        Gate::define('tag-restore', 'App\Policies\TagPolicy@restore');
        Gate::define('tag-force-delete', 'App\Policies\TagPolicy@forceDelete');
        Gate::define('tag-trash', 'App\Policies\TagPolicy@trash');

        Gate::define('brand-list', 'App\Policies\BrandPolicy@viewAny');
        Gate::define('brand-add', 'App\Policies\BrandPolicy@create');
        Gate::define('brand-update', 'App\Policies\BrandPolicy@update');
        Gate::define('brand-delete', 'App\Policies\BrandPolicy@delete');
        Gate::define('brand-restore', 'App\Policies\BrandPolicy@restore');
        Gate::define('brand-force-delete', 'App\Policies\BrandPolicy@forceDelete');
        Gate::define('brand-trash', 'App\Policies\BrandPolicy@trash');

        Gate::define('slide-list', 'App\Policies\SlidePolicy@viewAny');
        Gate::define('slide-add', 'App\Policies\SlidePolicy@create');
        Gate::define('slide-update', 'App\Policies\SlidePolicy@update');
        Gate::define('slide-delete', 'App\Policies\SlidePolicy@delete');
        Gate::define('slide-restore', 'App\Policies\SlidePolicy@restore');
        Gate::define('slide-force-delete', 'App\Policies\SlidePolicy@forceDelete');
        Gate::define('slide-trash', 'App\Policies\SlidePolicy@trash');

        Gate::define('user-list', 'App\Policies\UserPolicy@viewAny');
        Gate::define('user-add', 'App\Policies\UserPolicy@create');
        Gate::define('user-update', 'App\Policies\UserPolicy@update');
        Gate::define('user-delete', 'App\Policies\UserPolicy@delete');
        Gate::define('user-restore', 'App\Policies\UserPolicy@restore');
        Gate::define('user-force-delete', 'App\Policies\UserPolicy@forceDelete');
        Gate::define('user-trash', 'App\Policies\UserPolicy@trash');

        Gate::define('role-list', 'App\Policies\RolePolicy@viewAny');
        Gate::define('role-add', 'App\Policies\RolePolicy@create');
        Gate::define('role-update', 'App\Policies\RolePolicy@update');
        Gate::define('role-delete', 'App\Policies\RolePolicy@delete');
        Gate::define('role-restore', 'App\Policies\RolePolicy@restore');
        Gate::define('role-force-delete', 'App\Policies\RolePolicy@forceDelete');
        Gate::define('role-trash', 'App\Policies\RolePolicy@trash');

        Gate::define('permission-list', 'App\Policies\PermissionPolicy@viewAny');
        Gate::define('permission-add', 'App\Policies\PermissionPolicy@create');
        Gate::define('permission-update', 'App\Policies\PermissionPolicy@update');
        Gate::define('permission-delete', 'App\Policies\PermissionPolicy@delete');
        Gate::define('permission-restore', 'App\Policies\PermissionPolicy@restore');
        Gate::define('permission-force-delete', 'App\Policies\PermissionPolicy@forceDelete');
        Gate::define('permission-trash', 'App\Policies\PermissionPolicy@trash');

        Gate::define('post-list', 'App\Policies\PostPolicy@viewAny');
        Gate::define('post-view', 'App\Policies\PostPolicy@view');
        Gate::define('post-add', 'App\Policies\PostPolicy@create');
        Gate::define('post-update', 'App\Policies\PostPolicy@update');
        Gate::define('post-delete', 'App\Policies\PostPolicy@delete');
        Gate::define('post-restore', 'App\Policies\PostPolicy@restore');
        Gate::define('post-force-delete', 'App\Policies\PostPolicy@forceDelete');
        Gate::define('post-trash', 'App\Policies\PostPolicy@trash');

        Gate::define('post-cate-list', 'App\Policies\PostCatePolicy@viewAny');
        Gate::define('post-cate-add', 'App\Policies\PostCatePolicy@create');
        Gate::define('post-cate-update', 'App\Policies\PostCatePolicy@update');
        Gate::define('post-cate-delete', 'App\Policies\PostCatePolicy@delete');
        Gate::define('post-cate-restore', 'App\Policies\PostCatePolicy@restore');
        Gate::define('post-cate-force-delete', 'App\Policies\PostCatePolicy@forceDelete');
        Gate::define('post-cate-trash', 'App\Policies\PostCatePolicy@trash');

        Gate::define('intro-view', 'App\Policies\IntroPolicy@view');
        Gate::define('intro-add', 'App\Policies\IntroPolicy@create');

        Gate::define('service-view', 'App\Policies\ServicePolicy@view');
        Gate::define('service-add', 'App\Policies\ServicePolicy@create');

        Gate::define('recruitment-view', 'App\Policies\RecruitmentPolicy@view');
        Gate::define('recruitment-add', 'App\Policies\RecruitmentPolicy@create');

        Gate::define('contact-list', 'App\Policies\ContactPolicy@viewAny');
        Gate::define('contact-view', 'App\Policies\ContactPolicy@view');
        Gate::define('contact-delete', 'App\Policies\ContactPolicy@delete');
        Gate::define('contact-trash', 'App\Policies\ContactPolicy@trash');
        Gate::define('contact-restore', 'App\Policies\ContactPolicy@restore');
        Gate::define('contact-force-delete', 'App\Policies\ContactPolicy@forceDelete');

        Gate::define('project-list', 'App\Policies\ProjectPolicy@viewAny');
        Gate::define('project-view', 'App\Policies\ProjectPolicy@view');
        Gate::define('project-add', 'App\Policies\ProjectPolicy@create');
        Gate::define('project-update', 'App\Policies\ProjectPolicy@update');
        Gate::define('project-delete', 'App\Policies\ProjectPolicy@delete');
        Gate::define('project-restore', 'App\Policies\ProjectPolicy@restore');
        Gate::define('project-force-delete', 'App\Policies\ProjectPolicy@forceDelete');
        Gate::define('project-trash', 'App\Policies\ProjectPolicy@trash');
    }
}
