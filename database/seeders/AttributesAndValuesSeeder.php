<?php

namespace Database\Seeders;

use App\Models\Attribute;
use App\Models\AttributeValue;
use App\Models\Project;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Carbon;

class AttributesAndValuesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $attributes = [
            ['name' => 'department', 'type' => 'text'],
            ['name' => 'start_date', 'type' => 'date'],
            ['name' => 'end_date', 'type' => 'date'],
            ['name' => 'priority', 'type' => 'select'],
            ['name' => 'budget', 'type' => 'number'],
        ];

        foreach ($attributes as $attributeData) {
            Attribute::create($attributeData);
        }

        // Seed AttributeValues for existing Projects
        $projects = Project::all();
        $attributes = Attribute::all();

        foreach ($projects as $project) {
            foreach ($attributes as $attribute) {
                $value = null;
                $startDate = null;

                switch ($attribute->type) {
                    case 'text':
                        $value = fake()->word;
                        break;
                    case 'date':
                        if ($attribute->name === 'start_date') {
                            $startDate = Carbon::instance(fake()->dateTimeBetween('-1 year', '-4 months'))->toDateString();
                            $value = $startDate;
                        } elseif ($attribute->name === 'end_date') {
                            if ($startDate) {
                                $endDate = Carbon::parse($startDate)->addMonths(rand(4, 12))->toDateString();
                                $value = $endDate;
                            } else {
                                $value = fake()->dateTimeBetween('-1 year', '-4 months')->format('Y-m-d');
                            }
                        } else {
                            $value = fake()->dateTimeBetween('-1 year', '-4 months')->format('Y-m-d');
                        }
                        break;
                    case 'number':
                        $value = fake()->numberBetween(500, 100000);
                        break;
                    case 'select':
                        $value = fake()->randomElement(['High', 'Medium', 'Low']);
                        break;
                }

                AttributeValue::create([
                    'attribute_id' => $attribute->id,
                    'entity_id' => $project->id,
                    'value' => $value,
                ]);
            }
        }
    }
}
