<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class Invoice extends Component
{
    public function render()
    {
        return view('livewire.frontend.invoice')
        ->extends('layouts.app', [
            'meta' => [
                "title" =>  "",
                "image" => "",
                "og_image" => "",
                "twitter_image" => "",
                "description" => "",
                "price" => "" ,
                "keywords" => ""
            ],
        ]);
    }
}
