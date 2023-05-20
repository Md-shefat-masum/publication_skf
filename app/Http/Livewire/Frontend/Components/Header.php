<?php

namespace App\Http\Livewire\Frontend\Components;

use App\Models\Product\Product;
use Livewire\Component;

class Header extends Component
{
    public $search_query = "";
    protected $all_products = [];

    public function updatingSearchQuery()
    {
        $this->search_data();
    }

    public function search_data()
    {
        $query = $this->search_query;
        if (strlen($query)) {
            $this->all_products = Product::select([
                "id",
                "product_name",
                "product_url",
                "sales_price",
                "thumb_image",
                "status",
                "slug",
            ])
                ->where(function ($q) use($query){
                    return $q->where("product_name", "LIKE", "%" . $query . "%")
                        ->orWhere('product_name_english', "LIKE", "%" . $query . "%");
                })
                ->where('status', 1)->get();
        }
    }

    public function render()
    {
        return view('livewire.frontend.components.header', [
            "search_products" => $this->all_products,
        ]);
    }
}
