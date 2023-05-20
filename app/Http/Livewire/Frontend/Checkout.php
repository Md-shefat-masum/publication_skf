<?php

namespace App\Http\Livewire\Frontend;

use App\Models\User\Address;
use Livewire\Component;

class Checkout extends Component
{
    public function render()
    {
        $address = new Address();
        if(auth()->check()){
            $address = Address::where('table_name', 'users')->where('table_id', auth()->user()->id)->latest()->first();
        }
        return view('livewire.frontend.checkout',[
                "address" => $address,
            ])
            ->extends('layouts.app', [
            'meta' => [
                "title" =>  "checkout",
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
