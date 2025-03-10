<?php

namespace App\Http\Requests\API;

use App\Http\Requests\BaseRequest;
use App\Models\Attribute;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\Rule;

class AttributeSaveRequest extends BaseRequest
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
            'name' => ['required', 'string', 'min:3', 'max:255'],
            'type' => ['required', Rule::in(Attribute::TYPES)],
        ];
    }
}
