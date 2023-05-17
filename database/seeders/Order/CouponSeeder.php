<?php

namespace Database\Seeders\Order;

use App\Models\Order\OrderCoupon;
use Illuminate\Database\Seeder;

class CouponSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {


        function generateRandomTitle()
        {
            $titles = ['20% off on Electronics', 'Free Shipping on Orders Over $50', 'Buy One Get One Free', '10% off on Fashion Items', 'Special Discount for New Customers'];
            return $titles[rand(0, count($titles) - 1)];
        }

        function generateRandomCouponCode()
        {
            $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
            $code = '';
            for ($i = 0; $i < 8; $i++) {
                $code .= $characters[rand(0, strlen($characters) - 1)];
            }
            return $code;
        }

        function generateRandomExpireDate()
        {
            $startTimestamp = strtotime('now');
            $endTimestamp = strtotime('+30 days');
            $randomTimestamp = mt_rand($startTimestamp, $endTimestamp);
            return date('Y-m-d', $randomTimestamp);
        }

        OrderCoupon::truncate();
        for ($i = 0; $i < 10; $i++) {
            $flat_amount = rand(50, 100);
            $discount_amount = rand(15, 30);
            $coupon = [
                'title' => generateRandomTitle(),
                'coupon_code' => generateRandomCouponCode(),
                'expire_date' => generateRandomExpireDate(),
                "flat_amount" => $i % 2 == 0 ? $flat_amount : 0,
                "discount_amount" => $i % 2 != 0 ? $discount_amount : 0,
            ];

            OrderCoupon::create($coupon);
        }
    }
}
