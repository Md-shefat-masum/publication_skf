<?php

namespace App\Http\Livewire\Frontend;

use Livewire\Component;

class ProductDetails extends Component
{
    public $product;
    public function mount($product)
    {
    }
    public function render()
    {
        return view('livewire.frontend.product-details')->extends('layouts.app', [
            'meta' => [
                "title" =>  "",
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
