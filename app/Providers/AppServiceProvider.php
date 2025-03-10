<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Laravel\Passport\Passport;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Passport::tokensCan([
            'view-projects'     => 'view projects',
            'add-project'       => 'add project',
            'edit-project'      => 'edit project',
            'delete-project'    => 'delete project',

            'view-timesheet'    => 'view timesheet',
            'log-timesheet'     => 'log timesheet',
            'delete-timesheet'  => 'delete timesheet',

            'view-users'        => 'view users',
            'add-user'          => 'add user',
            'edit-user'         => 'edit user',
            'delete-user'       => 'delete user',

            'view-attributes'   => 'view attributes',
            'edit-attributes'   => 'edit attributes',
            'delete-attributes' => 'delete attributes',
        ]);
    }
}
