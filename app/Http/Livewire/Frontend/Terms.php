<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class Terms extends Component
{
    public function render()
    {
        return view('livewire.frontend.terms')
            ->extends('layouts.app', [
                'meta' => [
                    "title" =>  "Terms",
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
