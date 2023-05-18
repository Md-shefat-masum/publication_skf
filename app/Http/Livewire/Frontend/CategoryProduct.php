<?php

namespace App\Http\Livewire\Frontend;

use App\Models\Product\Category;
use Livewire\Component;
use Livewire\WithPagination;

class CategoryProduct extends Component
{
    use WithPagination;

    public $category;
    protected $paginationTheme = 'bootstrap';

    public function mount($category)
    {
        $this->category = Category::where('id',$category)->first();
    }


    public function render()
    {
        return view('livewire.frontend.category-product',[
                'products' => $this->category->products()->paginate(10),
            ])->extends('layouts.app', [
            'meta' => [
                "title" =>  "",
                "image" => "",
                "og_image" => "",
                "twitter_image" => "",
                "description" => "",
                "price" => "" ,
                "keywords" => ""
            ],
        ]);;
    }
}
