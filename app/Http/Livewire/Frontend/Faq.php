<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class Faq extends Component
{
    public function render()
    {
        return view('livewire.frontend.faq')
            ->extends('layouts.app', [
                'meta' => [
                    "title" =>  "FAQ",
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
