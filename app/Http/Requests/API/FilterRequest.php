<?php

namespace App\Http\Requests\API;


use App\Http\Requests\BaseRequest;
use Illuminate\Foundation\Http\FormRequest;

class FilterRequest extends BaseRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'filters'   => ['sometimes', 'nullable'],
            'page'      => ['sometimes', 'nullable', 'integer'],
            'limit'     => ['sometimes', 'nullable', 'integer'],
            'group_by'  => ['sometimes', 'nullable', 'string'],
            'columns'   => ['sometimes', 'nullable', 'array'],
        ];
    }

    public function page($default = 1)
    {
        $data = $this->validated();
        $page =  $default;
        if (!empty($data['page'])) {
            $page = (int) $data['page'];
        }

        return $page;
    }

    public function limit($default = 20)
    {
        $data = $this->validated();
        $limit =  $default;
        if (!empty($data['limit'])) {
            $limit = (int) $data['limit'];
        }

        return $limit;
    }

    public function groupBy()
    {
        $data = $this->validated();
        $group_by =  null;
        if (!empty($data['group_by'])) {
            $group_by = $data['group_by'];
        }

        return $group_by;
    }

    public function columns()
    {
        $data = $this->validated();
        $extra =  null;
        if (!empty($data['columns'])) {
            $extra = $data['columns'];
        }

        return $extra;
    }
}
