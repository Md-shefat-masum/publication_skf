<?php

namespace App\Http\Livewire\Frontend;

use App\Models\Website\About as WebsiteAbout;
use Livewire\Component;

class About extends Component
{
    public $about_us;
    public function render()
    {
        $this->about_us = WebsiteAbout::long();
        return view('livewire.frontend.about')
        ->extends('layouts.app', [
            'meta' => [
                "title" =>  "about us",
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
