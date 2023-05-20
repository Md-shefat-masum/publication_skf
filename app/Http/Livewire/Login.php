<?php

namespace App\Http\Livewire;

use App\Models\User;
use Livewire\Component;

class Login extends Component
{
    public $email;
    public $password;
    public $auth_check;
    public $access_token;

    public function mount()
    {
        $this->auth_check = auth()->check();


        if(auth()->check()){
            // return header("Location:profile");
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
        $user = User::where(function($q) use($email){
            return $q->where('email', $email)
                ->orWhere('user_name', $email)
                ->orWhere('mobile_number', $email);
        })->first();
        if($user){
            auth()->login($user);
            $this->auth_check = auth()->check();
            if($user->roles()->where('role_serial','<',5)->first()){
                $this->access_token = $user->createToken('accessToken')->accessToken;
                return;
            }else{
                return redirect('/profile');
            }
        }
    }
}
