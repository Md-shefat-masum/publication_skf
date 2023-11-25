<?php

namespace App\Http\Livewire\Frontend;

use App\Http\Controllers\HelperController;
use App\Models\Settings\AppSettingValue;
use App\Models\User\Address;
use Livewire\Component;

class Checkout extends Component
{
    public function mount()
    {
        if (!auth()->check()) {
            return redirect('/login');
        }
    }
    public function render()
    {
        $address = new Address();
        if (auth()->check()) {
            $address = Address::where('table_name', 'users')->where('table_id', auth()->user()->id)->latest()->first();
        }

        $home_delivery_value = HelperController::delivery_cost()->home_delivery_cost;
        $outside_dhaka_value = HelperController::delivery_cost()->out_dhaka_home_delivery_cost;
        $cart_total = 0;

        return view('livewire.frontend.checkout', [
            "address" => $address,
            "home_delivery_value" => $home_delivery_value,
            "outside_dhaka_value" => $outside_dhaka_value,
            "cart_total" => $cart_total,
        ])
            ->extends('layouts.app', [
                'meta' => [
                    "title" =>  "checkout",
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
