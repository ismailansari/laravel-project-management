<?php

namespace App\Repository\Eloquent;

use App\Http\Requests\API\FilterRequest;

class GetterRepository extends BaseRepository
{
    public function all(FilterRequest $request)
    {
        $query = $this->model->latest();

        if ($request->has('filters')) {
            $filters = $request->input('filters', []);
            foreach ($filters as $column => $value) {
                $query->where($column, $value);
            }
        }

        return $this->selectRecords($request, $query);

    }

    public function find($id)
    {
        return $this->model->find($id);
    }

    public function findWhere($field, $value)
    {
        return $this->model->where($field, $value)->first();
    }

    protected function selectRecords(FilterRequest $request, $query)
    {
        if ($request->has('group_by')) {
            $query->groupBy($request->input('group_by'));
        }

        $columns = $request->input('select', ['*']);

        $pagination = $request->input('limit', 20);
        $page = $request->input('page', 1);

        return $query->select($columns)->paginate($pagination, [], 'page', $page);
    }
}
