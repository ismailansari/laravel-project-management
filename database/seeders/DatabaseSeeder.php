<?php

namespace Database\Seeders;

use App\Models\Project;
use App\Models\Timesheet;
use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        User::factory(10)->create()->each(function ($user) {
            $projects = Project::factory(rand(1, 3))->create();
            $user->projects()->attach($projects);

            $projects->each(function ($project) use ($user) {
                Timesheet::factory(rand(2, 5))->create([
                    'user_id' => $user->id,
                    'project_id' => $project->id,
                ]);
            });
        });
    }
}
