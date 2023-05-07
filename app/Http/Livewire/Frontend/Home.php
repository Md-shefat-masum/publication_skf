<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class Home extends Component
{
    public function render()
    {
        return view('livewire.frontend.home')
        ->extends('layouts.app', [
            'meta' => [
                "title" => isset($this->product->product_name) ? $this->product->product_name . " - " . $_SERVER['SERVER_NAME'] :  "",
                "image" => isset($this->product->related_images[0]['image']) ? url('') . '/' . $this->product->related_images[0]['image'] : "",
                "og_image" => isset($this->product->related_images[0]['image']) ? url('') . '/' . $this->product->related_images[0]['image'] : "",
                "twitter_image" => isset($this->product->related_images[0]['image']) ? url('') . '/' . $this->product->related_images[0]['image'] : "",
                "description" => $meta_decription ?? "",
                "price" => isset($this->product->default_price) ? $this->product->default_price : "" ,
                "keywords" => isset($this->product->search_keywords) ? $this->product->search_keywords : ""
            ],
        ]);
    }
}
