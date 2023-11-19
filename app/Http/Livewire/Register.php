<?php

namespace App\Http\Livewire;

use App\Models\User;
use Livewire\Component;

class Register extends Component
{
    public $first_name;
    public $email;
    public $password;
    public $auth_check;
    public $access_token;

    public function mount()
    {
        $this->auth_check = auth()->check();

        if (auth()->check()) {
            // return header("Location:admin");
        }
    }

    public function login_submit()
    {
        $email = $this->email;
        $password = $this->password;
        $user = User::where(function ($q) use ($email) {
            return $q->where('email', $email)
                ->orWhere('user_name', $email)
                ->orWhere('mobile_number', $email);
        })->first();
        if ($user) {
            auth()->login($user);
            $this->auth_check = auth()->check();
            $this->access_token = $user->createToken('accessToken')->accessToken;
        }
    }

    public function render()
    {
        return view('livewire.register')
            ->extends('layouts.app', [
                'title' => 'register',
                'meta_image' => 'https://www.prossodprokashon.com/uploads/file_manager/fm_image_350x500_10628497e549aa41652856805.jpg',
            ]);
    }
}
