<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class Howtobuy extends Component
{
    public function render()
    {
        return view('livewire.frontend.howtobuy')
            ->extends('layouts.app', [
                'meta' => [
                    "title" =>  "how to buy",
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
