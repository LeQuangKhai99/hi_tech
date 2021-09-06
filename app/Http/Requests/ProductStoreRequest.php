<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductStoreRequest extends FormRequest
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
            'name'=>'required|unique:products,name',
            'price'=>'required',
            'model'=>'required',
            'made_by'=>'required',
            'inventory'=>'required'
        ];
    }

    public function messages()
    {
        return [
            'name.required'=>'Bạn chưa nhập tên sản phẩm',
            'price.required'=>'Bạn chưa nhập giá sản phẩm',
            'model.required'=>'Bạn chưa nhập model sản phẩm',
            'made_by.required'=>'Bạn chưa nhập nơi sản xuất sản phẩm',
            'inventory.required'=>'Bạn chưa nhập số lượng tồn kho sản phẩm',
            'name.unique'=>'Tên loại sản phẩm đã tồn tại',
        ];
    }
}
