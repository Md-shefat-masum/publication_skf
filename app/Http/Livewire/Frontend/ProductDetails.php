<?php

namespace App\Http\Livewire\Frontend;

use App\Models\Product\Product;
use App\Models\Product\ProductDiscount;
use Carbon\Carbon;
use Livewire\Component;

class ProductDetails extends Component
{
    public $product_id;
    public $name;
    public $related_products;
    public $latest_products;
    public function mount($product, $name)
    {
        $this->product_id = $product;
        $this->name = $name;
    }
    public function render()
    {
        $product = Product::where('id', $this->product_id)
            ->with([
                "writers",
                "translators",
                "categories",
            ])
            ->first();

        $this->latest_products = Product::select([
            "id",
            "product_name",
            "sales_price",
            "thumb_image",
            "status",
        ])
            ->latest()
            ->take(5)
            ->where('status',1)
            ->get();

        if ($product->categories->count()) {
            $this->related_products = $product->categories[0]
                ->products()
                ->latest()
                ->limit(5)
                ->get();
        }

        return view('livewire.frontend.product-details', [
            "product" => $product,
        ])->extends('layouts.app', [
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
