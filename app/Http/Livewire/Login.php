<?php

namespace App\Http\Livewire;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Livewire\Component;

class Login extends Component
{
    public $email;
    public $password;
    public $auth_check;
    public $access_token;
    public $error;

    public function mount()
    {
        $this->auth_check = auth()->check();
        if(auth()->check()){
            return redirect('/profile');
        }
    }

    public function render()
    {
        return view('livewire.login')
            ->extends('layouts.app', [
                'title' => 'login',
                'meta_image' => 'https://www.prossodprokashon.com/uploads/file_manager/fm_image_350x500_106195df55457491637211989.jpg',
            ]);

    }

    public function login_submit()
    {
        $email = $this->email;
        $password = $this->password;
        $this->error = "";
        $user = User::where(function ($q) use ($email) {
            return $q->where('email', $email)
                ->orWhere('user_name', $email)
                ->orWhere('mobile_number', $email);
        })->first();
        if ($user && Hash::check($password, $user->password)) {
            if ($user->roles()->whereIn('role_serial', [1,2,3,4,6])->first()) {
                $this->access_token = $user->createToken('accessToken')->accessToken;
                return;
            } else {
                auth()->login($user);
                $this->auth_check = auth()->check();
                return redirect('/profile');
            }
        }
        $this->error = "user not found";
    }
}
