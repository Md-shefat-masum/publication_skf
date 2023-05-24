<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class PrivacyPolicy extends Component
{
    public function render()
    {
        return view('livewire.frontend.privacy-policy')
            ->extends('layouts.app', [
                'meta' => [
                    "title" =>  "privacy policy",
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
