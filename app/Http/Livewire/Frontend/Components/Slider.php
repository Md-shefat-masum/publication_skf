<?php

namespace App\Http\Livewire\Frontend\Components;

use App\Models\Website\Banner;
use Livewire\Component;

class Slider extends Component
{
    public $sliders = [];
    public function render()
    {
        $this->sliders = Banner::select(['id', 'image', 'serial', 'show'])
            ->where('show', 1)
            ->orderBy('serial', 'ASC')
            ->get();
        return view('livewire.frontend.components.slider');
    }
}
