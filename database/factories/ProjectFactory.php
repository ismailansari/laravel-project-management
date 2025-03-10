<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class ProjectFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $projects = [
            'Blog Rewrite',
            'Mobile UI Revamp',
            'CRM API Update',
            'Website SEO Fix',
            'Data Dashboard v2',
            'Social Media Bot',
            'Inventory System',
            'LMS Integration',
            'Payment Gateway',
            'Real Estate App',
            'Order System',
            'Task Manager',
            'Chatbot Support',
            'Portfolio Site',
            'Travel App',
            'Course Platform',
            'Event System',
            'Health Portal',
            'Finance Tool',
            'Forum Upgrade'
        ];
        return [
            // name should be unique and from the given projects array
            'name' => fake()->unique()->randomElement($projects),
            'status' => 'active',
        ];
    }
}
