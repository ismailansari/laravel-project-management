<?php

namespace App\Repository\Eloquent;

use App\Models\User;

class UserRepository extends CrudRepository
{
    public function __construct(User $model)
    {
        parent::__construct($model);
    }

    public function getUserProjects(User $user)
    {
        return $user->projects()->get();
    }

    public function getUSerTimeSheets(User $user)
    {
        return $user->timesheets()->with('project:id,name')->get();
    }
}
