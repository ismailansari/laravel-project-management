<?php

namespace App\Http\Requests\API;

use App\Http\Requests\BaseRequest;
use App\Models\Project;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rule;

class TimesheetRequest extends BaseRequest
{
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
            'task_name'     => ['required', 'string', 'min:3', 'max:255'],
            'date'          => ['required', 'date'],
            'hours'         => ['required', 'integer', 'min:1', 'max:8'],
            'project_id'    => ['required', 'exists:projects,id'],
        ];
    }
}
