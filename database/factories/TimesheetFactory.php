<?php

namespace Database\Factories;

use App\Models\Timesheet;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class TimesheetFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'task_name' => $this->faker->randomElement(['Requirement Gathering', 'Design', 'Development', 'Code Review', 'Testing', 'Bugs Fixing', 'Deployment on Staging', 'Deployment on Production']),
            'date' => $this->faker->date(),
            'hours' => $this->faker->numberBetween(1, 8),
        ];
    }
}
