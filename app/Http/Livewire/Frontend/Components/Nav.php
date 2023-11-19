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
        // $this->categories = $category->get_category_nested();
        $fields = ['id', 'name', 'name_english', 'parent_id', 'url', 'is_top_category', 'is_public'];
        $this->categories = Category::select($fields)
            ->where('is_public', 1)
            ->where('status', 1)
            ->where('parent_id', 0)->with('frontend_child')->get();
        // dd($this->categories->toArray());
        return view('livewire.frontend.components.nav');
    }
}
