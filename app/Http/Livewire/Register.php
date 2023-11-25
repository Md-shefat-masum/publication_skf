<?php

namespace App\Http\Livewire;

use App\Models\User;
use Livewire\Component;

class Register extends Component
{
    public $auth_check;

    public function mount()
    {
        $this->auth_check = auth()->check();

        if (auth()->check()) {
            // return header("Location:admin");
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
