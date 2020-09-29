<?php

namespace App\Policies;

use App\User;
use App\projects;
use Illuminate\Auth\Access\HandlesAuthorization;

class ProjectPolicy
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
        return $user->CheckPermissionAccess('project-list');
    }

    /**
     * Determine whether the user can view the model.
     *
     * @param  \App\User  $user
     * @param  \App\projects  $projects
     * @return mixed
     */
    public function view(User $user)
    {
        return $user->CheckPermissionAccess('project-view');
    }

    /**
     * Determine whether the user can create models.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        return $user->CheckPermissionAccess('project-add');
    }

    /**
     * Determine whether the user can update the model.
     *
     * @param  \App\User  $user
     * @param  \App\projects  $projects
     * @return mixed
     */
    public function update(User $user)
    {
        return $user->CheckPermissionAccess('project-update');
    }

    /**
     * Determine whether the user can delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\projects  $projects
     * @return mixed
     */
    public function delete(User $user)
    {
        return $user->CheckPermissionAccess('project-delete');
    }

    /**
     * Determine whether the user can restore the model.
     *
     * @param  \App\User  $user
     * @param  \App\projects  $projects
     * @return mixed
     */
    public function restore(User $user)
    {
        return $user->CheckPermissionAccess('project-restore');
    }

    /**
     * Determine whether the user can permanently delete the model.
     *
     * @param  \App\User  $user
     * @param  \App\projects  $projects
     * @return mixed
     */
    public function forceDelete(User $user)
    {
        return $user->CheckPermissionAccess('project-force-delete');
    }

    public function trash(User $user){
        return $user->CheckPermissionAccess('project-trash');
    }
}
