<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class ProfileRelativeFormRequest extends Request
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
        switch ($this->method()) {
            case 'PUT':
            case 'POST': {
                    $id = (int) $this->input('id', 0);
                    return [
                        "full_name" => "required",
                        "type_relative" => "required",
                        "name_organization" => "required",
//                        "position" => "required",
                    ];
                }
            default:break;
        }
    }

    public function messages()
    {
        return [
            'full_name.required' => 'Тўлдирилиши шарт',
            'type_relative.required' => 'Тўлдирилиши шарт',
            'name_organization.required' => 'Тўлдирилиши шарт',
            'position.required' => 'Тўлдирилиши шарт',
        ];
    }

}
