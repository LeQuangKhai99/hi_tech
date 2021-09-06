<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RegisterRequest extends FormRequest
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
            'name' => ['required', 'max:255'],
            'email' => ['required', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'min:2', 'confirmed'],
            'address' => ['required'],
            'phone' => ['required'],
        ];
    }

    public function messages()
    {
        return [
            'name.required'=>'Bạn chưa nhập tên',
            'name.max'=>'Tên bạn quá dài',
            'email.required'=>'Bạn chưa nhập email',
            'email.email'=>'Hãy nhập đúng mail của bạn',
            'email.max'=>'Email của bạn quá dài',
            'email.unique'=>'Email này đã đc đăng kí',
            'password.required'=>'Bạn chưa nhập mật khẩu',
            'password.min'=>'Mật khẩu phải dài hơn 1 kí tự',
            'password.confirmed'=>'Mật khẩu xác nhận không khớp',
            'address.required' => 'Chưa nhập địa chỉ',
            'phone.required' => 'Chưa nhập số điện thoại',
        ];
    }
}
