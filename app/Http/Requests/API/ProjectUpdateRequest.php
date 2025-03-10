<?php

namespace App\Http\Requests\API;

use App\Http\Requests\BaseRequest;
use App\Models\Project;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rule;

class ProjectUpdateRequest extends BaseRequest
{
    private int|null $projectId;

    public function __construct()
    {
        parent::__construct();
        $this->projectId = (int) request()->segment(3);
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return Auth::check();
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'          => ['sometimes', 'string', 'min:3', 'max:255', Rule::unique('projects', 'name')->ignore($this->projectId)],
            'status'        => ['sometimes', Rule::in(Project::STATUS)],
            'attributes'    => ['sometimes', 'array'],
        ];
    }
}
