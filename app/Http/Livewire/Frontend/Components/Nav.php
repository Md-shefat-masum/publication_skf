<?php

namespace App\Http\Livewire\Frontend\Components;

use App\Models\Product\Category;
use Livewire\Component;

class Nav extends Component
{
    public $categories = [];

    public function render()
    {
        $category = new Category();
        $this->categories = $category->get_category_nested();
        return view('livewire.frontend.components.nav');
    }
}
