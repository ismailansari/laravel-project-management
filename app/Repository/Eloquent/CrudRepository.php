<?php

namespace App\Repository\Eloquent;

use Illuminate\Database\Eloquent\Model;

class CrudRepository extends GetterRepository
{
    public function create(array $data)
    {
        return $this->model->create($data);
    }

    public function update(Model $model, array $data)
    {
        $updatable = collect($data)->only($this->model->getUpdatable());
        foreach ($updatable as $attribute => $value) {
            $model->$attribute = $value;
        }
        $model->save();

        return $model;
    }

    public function delete(Model $record): bool
    {
        return $record->delete();
    }
}
