<?php

namespace Database\Seeders\Order;

use App\Models\Product\ProductCart;
use Illuminate\Database\Seeder;

class ProductCartSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        ProductCart::truncate();
        for ($i = 0; $i < 5; $i++) {
            ProductCart::create([
                'user_id' => 6,
                "product_id" => $i + 1,
                "qty" => rand(5, 10),
            ]);
        }
        for ($i = 0; $i < 5; $i++) {
            ProductCart::create([
                'user_id' => 6,
                "product_id" => $i + 1,
                "qty" => rand(5, 10),
                "type" => "wish_list"
            ]);
        }
    }
}
