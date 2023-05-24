<?php

namespace App\Http\Livewire\Frontend\Components;

use App\Models\Settings\AppSettingTitle;
use App\Models\Website\About;
use Livewire\Component;

class Footer extends Component
{
    public $short_about;
    public $logo;
    public $copy_right;

    public $address;
    public $phone_number;
    public $email;

    public function render()
    {
        $this->logo = AppSettingTitle::getValue('logo');
        $this->copy_right = AppSettingTitle::getValue('copy_right');
        $this->short_about = About::short();

        $this->address = AppSettingTitle::getValue("address","values");
        $this->phone_number = AppSettingTitle::getValue("phone_number","values");
        $this->email = AppSettingTitle::getValue("email","values");

        return view('livewire.frontend.components.footer');
    }
}
