<?php

namespace App\Policies;

use App\PostCate;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class PostCatePolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view any models.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        return $user->CheckPermissionAccess('post-cate-list');
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\User  $user
     * @param  \App\PostCate  $postCate
     * @return mixed
     */
    public function view(User $user)
    {
        return $user->CheckPermissionAccess('post-cate-view');
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        return $user->CheckPermissionAccess('post-cate-add');
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\User  $user
     * @param  \App\PostCate  $postCate
     * @return mixed
     */
    public function update(User $user)
    {
        return $user->CheckPermissionAccess('post-cate-update');
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\PostCate  $postCate
     * @return mixed
     */
    public function delete(User $user)
    {
        return $user->CheckPermissionAccess('post-cate-delete');
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\User  $user
     * @param  \App\PostCate  $postCate
     * @return mixed
     */
    public function restore(User $user)
    {
        return $user->CheckPermissionAccess('post-cate-restore');
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\PostCate  $postCate
     * @return mixed
     */
    public function forceDelete(User $user)
    {
        return $user->CheckPermissionAccess('post-cate-force-delete');
    }

    public function trash(User $user){
        return $user->CheckPermissionAccess('post-cate-trash');
    }
}
