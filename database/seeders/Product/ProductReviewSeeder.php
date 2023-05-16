<?php

namespace Database\Seeders\Product;

use App\Models\Product\ProductReview;
use Illuminate\Database\Seeder;

class ProductReviewSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        ProductReview::truncate();

        $descriptions = ['Great product!', 'Good quality', 'Highly recommended', 'satisfied with the purchase', 'Good value for money'];


        for ($i = 0; $i < 20; $i++) {
            $review = [
                'user_id' => 6,
                'product_id' => rand(1,12),
                'review_description' => $descriptions[rand(0, count($descriptions) - 1)],
                'star' => rand(1, 5),
                'approve' => rand(0,1),
            ];

            ProductReview::create($review);
        }
    }
}
