<?php

namespace App\Http\Livewire\Frontend;

use App\Models\Settings\AppSettingTitle;
use Livewire\Component;

class Contact extends Component
{
    public $address;
    public $phone_number;
    public $email;

    public function render()
    {
        $this->address = AppSettingTitle::getValue("address","values");
        $this->phone_number = AppSettingTitle::getValue("phone_number","values");
        $this->email = AppSettingTitle::getValue("email","values");

        return view('livewire.frontend.contact')
            ->extends('layouts.app', [
                'meta' => [
                    "title" =>  "contact",
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
