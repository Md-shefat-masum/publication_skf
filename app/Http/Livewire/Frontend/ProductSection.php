<?php

namespace App\Http\Livewire\Frontend;

use App\Models\Product\Category;
use App\Models\Product\Product;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\DB;
use Livewire\Component;

class ProductSection extends Component
{
    public $top_categories = [];

    public function mount()
    {

    }

    public function get_top_categories(){
        $this->top_categories = Category::select([
            "id",
            "name",
            "name_english",
            "is_top_category",
            "status",
        ])
            ->whereExists(function ($query) {
                return $query->select(DB::raw(1))
                    ->from('category_product')
                    ->whereColumn('category_product.category_id', 'categories.id');
            })
            ->where('is_top_category', 1)
            ->where('status', 1)
            ->get();
    }

    public function render()
    {
        $this->get_top_categories();
        return view('livewire.frontend.product-section');
    }
}
