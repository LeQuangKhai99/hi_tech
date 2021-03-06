<?php

namespace App\Policies;

use App\Product;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class ProductPolicy
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
        return $user->CheckPermissionAccess('product-list');
    }

    public function view(User $user)
    {
        return $user->CheckPermissionAccess('product-view');
    }

    public function create(User $user)
    {
        return $user->CheckPermissionAccess('product-add');
    }

    public function update(User $user)
    {
        return $user->CheckPermissionAccess('product-update');
    }
    public function delete(User $user)
    {
        return $user->CheckPermissionAccess('product-delete');
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\User  $user
     * @param  \App\Product  $product
     * @return mixed
     */
    public function restore(User $user)
    {
        return $user->CheckPermissionAccess('product-restore');
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\Product  $product
     * @return mixed
     */
    public function forceDelete(User $user)
    {
        return $user->CheckPermissionAccess('product-force-delete');
    }

    public function trash(User $user){
        return $user->CheckPermissionAccess('product-trash');
    }
}
