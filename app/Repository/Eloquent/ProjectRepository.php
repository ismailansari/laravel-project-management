<?php

namespace App\Repository\Eloquent;

use App\Http\Requests\API\FilterRequest;
use App\Models\AttributeValue;
use App\Models\Project;

class ProjectRepository extends CrudRepository
{
    public function __construct(Project $model)
    {
        parent::__construct($model);
    }

    public function all(FilterRequest $request)
    {
        if ($request->has('filters')) {
            $query = $this->model->latest()->with('attributeValues.attribute');

            $filters = $request->input('filters', []);

            foreach ($filters as $key => $value) {
                $existsAttribute = AttributeValue::whereHas('attribute', function ($query) use ($key) {
                    $query->where('name', $key);
                })->exists();

                $parts = explode(':', $value, 2);
                $operator = '=';

                if (count($parts) === 2) {
                    $operator = $parts[0];
                    $value = $parts[1];
                }

                if ($existsAttribute) {

                    $query->whereHas('attributeValues', function ($query) use ($key, $value, $operator) {
                        $query->whereHas('attribute', function ($query) use ($key) {
                            $query->where('name', $key);
                        });
                        switch ($operator) {
                            case '>':
                                $query->where('value', '>', $value);
                                break;
                            case '<':
                                $query->where('value', '<', $value);
                                break;
                            case 'LIKE':
                                $query->where('value', 'LIKE', '%' . $value . '%');
                                break;
                            default:
                                $query->where('value', $value);
                                break;
                        }
                    });

                } else {
                    $query = $this->model->latest();

                    switch ($operator) {
                        case '>':
                            $query->where($key, '>', $value);
                            break;
                        case '<':
                            $query->where($key, '<', $value);
                            break;
                        case 'LIKE':
                            $query->where($key, 'LIKE', '%' . $value . '%');
                            break;
                        default:
                            $query->where($key, $value);
                            break;
                    }
                }
            }
        }

        return parent::selectRecords($request, $query);
    }
}
