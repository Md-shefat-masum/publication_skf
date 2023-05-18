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
            
        $discount = ProductDiscount::select([
            "id",
            "product_id",
            "main_price",
            "parcent_discount",
            "flat_discount",
            "expire_date",
        ])
            ->where('product_id', $product->id)
            ->whereDate('expire_date', '>', Carbon::today()->toDateString())
            ->orderBy('id', "DESC")
            ->first();
        if ($discount) {
            if ($discount->flat_discount) {
                $product->discount_amount = $discount->flat_discount;
                $product->discount_percent = round(100 * $discount->flat_discount / $discount->main_price);
                $product->discount_price =  $discount->main_price - $discount->flat_discount;
            }
            if ($discount->parcent_discount) {
                $discount_amount = round($discount->main_price * $discount->parcent_discount / 100);
                $product->discount_amount = $discount_amount;
                $product->discount_percent  = $discount->parcent_discount;
                $product->discount_price =  $discount->main_price - $discount_amount;
            }
        } else {
            $product->discount_amount = 0;
            $product->discount_percent = 0;
            $product->discount_price = 0;
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
