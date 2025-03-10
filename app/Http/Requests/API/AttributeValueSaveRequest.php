<?php

namespace App\Http\Requests\API;

use App\Http\Requests\BaseRequest;
use Illuminate\Support\Facades\Auth;

class AttributeValueSaveRequest extends BaseRequest
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
            'attribute_id' => ['required', 'exists:attributes,id'],
            'entity_id' => ['required', 'exists:projects,id'],
            'value' => ['required', 'string'],
        ];
    }
}
