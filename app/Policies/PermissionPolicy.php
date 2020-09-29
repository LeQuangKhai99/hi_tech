<?php

namespace App\Policies;

use App\Pemission;
use App\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class PermissionPolicy
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
        return $user->CheckPermissionAccess('permission-list');
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\User  $user
     * @param  \App\Pemission  $pemission
     * @return mixed
     */
    public function view(User $user)
    {
        return $user->CheckPermissionAccess('permission-view');
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        return $user->CheckPermissionAccess('permission-add');
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\User  $user
     * @param  \App\Pemission  $pemission
     * @return mixed
     */
    public function update(User $user)
    {
        return $user->CheckPermissionAccess('permission-update');
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\Pemission  $pemission
     * @return mixed
     */
    public function delete(User $user)
    {
        return $user->CheckPermissionAccess('permission-delete');
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\User  $user
     * @param  \App\Pemission  $pemission
     * @return mixed
     */
    public function restore(User $user)
    {
        return $user->CheckPermissionAccess('permission-restore');
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\Pemission  $pemission
     * @return mixed
     */
    public function forceDelete(User $user)
    {
        return $user->CheckPermissionAccess('permission-force-delete');
    }

    public function trash(User $user){
        return $user->CheckPermissionAccess('permission-trash');
    }
}
