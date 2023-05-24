<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class RefundPolicy extends Component
{
    public function render()
    {
        return view('livewire.frontend.refund-policy')
        ->extends('layouts.app', [
            'meta' => [
                "title" =>  "refund policy",
                "image" => "",
                "og_image" => "",
                "twitter_image" => "",
                "description" => "",
                "price" => "",
                "keywords" => ""
            ],
        ]);
    }
}
