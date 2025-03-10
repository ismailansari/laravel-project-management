<?php

namespace App\Repository\Eloquent;

use App\Models\Attribute;
use App\Models\AttributeValue;

class AttributeValueRepository extends CrudRepository
{
    public function __construct(AttributeValue $model)
    {
        parent::__construct($model);
    }

    public function createMany(int $projectId, array $data)
    {
        $arr = [];
        foreach ($data as $value) {
            $arr[] = [
                'attribute_id' => $value['attribute_id'],
                'entity_id' => $projectId,
                'value' => $value['value'],
                'created_at' => now(),
                'updated_at' => now(),
            ];
        }

        return $this->model->insert($arr);
    }

    public function updateCreate(int $projectId, array $data)
    {
        foreach ($data as $value) {
            $this->model::updateOrCreate([
                'attribute_id' => $value['attribute_id'],
                'entity_id' => $projectId,
            ], [
                'value' => $value['value'],
            ]);
        }
    }
}
