<?php

namespace Database\Seeders\Product;

use App\Models\Product\ProductImage;
use Illuminate\Database\Seeder;

class ProductImageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        ProductImage::truncate();

        for ($i = 0; $i < 12; $i++) {
            ProductImage::create([
                "product_id" => $i + 1,
                "path" => "books_demo/" . ($i + 1) . ".jpg",
            ]);
        }
    }
}
