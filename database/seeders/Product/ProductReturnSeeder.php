<?php

namespace Database\Seeders\Product;

use App\Models\Order\OrderDetails;
use App\Models\Product\ProductReturn;
use App\Models\Product\ProductStockLog;
use Illuminate\Database\Seeder;

class ProductReturnSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        ProductReturn::truncate();


        function generateRandomReviewDescription($i=0)
        {
            $descriptions = [
                'Defective product received',
                'Size did not fit',
                'Color mismatch',
                'Changed my mind',
                'Item arrived damaged',
                'Wrong item shipped',
                'Poor quality',
                'Not as described',
                'Received duplicate item',
                'Difficult to assemble',
                'Item missing parts',
                'Poor customer service',
                'Shipping delay',
                'Product not compatible',
                'Received incorrect quantity',
                'Product expired',
                'Package arrived empty',
                'Unwanted gift',
                'Product does not meet expectations',
                'Received wrong color'
            ];
            return $descriptions[$i];
        }

        function generateRandomStar()
        {
            return rand(1, 5); // Modify this according to your star rating range
        }

        $j=0;
        for ($i = 1; $i <= 50; $i+=4) {
            $product = OrderDetails::find($i); // return from order list
            if($product){
                $review = [
                    'user_id' => $product->user_id,
                    'product_id' => $product->product_id,
                    'order_id' => $product->order_id,
                    'order_details_id' => $product->id,
                    'qty' => 1,
                    'description' => generateRandomReviewDescription($j++),
                ];
                $product_return = ProductReturn::create($review);

                ProductStockLog::create([
                    "product_id" => $product->product_id,
                    "qty" => 1,
                    "type" => "return",
                    "product_return_id" => $product_return->id,
                    "order_id" => $product->order_id,
                ]);
            }
        }
    }
}

