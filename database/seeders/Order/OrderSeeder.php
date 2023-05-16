<?php

namespace Database\Seeders\Order;

use App\Models\Order\Order;
use App\Models\Order\OrderDeliveryInfo;
use App\Models\Order\OrderDetails;
use App\Models\Order\OrderPayment;
use App\Models\Order\OrderVariant;
use App\Models\Product\Product;
use App\Models\Product\ProductStockLog;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class OrderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        function generateInvoiceId()
        {
            $prefix = 'INV-';
            $randomNumber = rand(10000, 99999);
            $timestamp = time();
            $invoiceId = $prefix . $randomNumber . $timestamp;
            return $invoiceId;
        }

        Order::truncate();
        OrderDetails::truncate();
        OrderPayment::truncate();
        OrderVariant::truncate();
        OrderDeliveryInfo::truncate();

        for ($order_no = 1; $order_no < 15; $order_no++) {
            $rand_produts = Product::with('discount')->get()->random(4);

            $total_discount_price = 0;
            $subtotal = 0;
            $variant_price = 0 ;

            // dd($rand_produts[0]->toArray());
            foreach ($rand_produts as $key => $product) {
                $discount_price = 0;
                if ($product->discount) {
                    if ($product->discount->parcent_discount) {
                        $discount_price = $product->discount->main_price * $product->discount->parcent_discount / 100;
                    } else {
                        $discount_price = $product->discount->flat_discount;
                    }
                    $total_discount_price += $discount_price;
                }
                $order_details = OrderDetails::create([
                    "order_id" => $order_no,
                    "user_id" => 6,
                    "product_id" => $product->id,
                    "product_name" => $product->product_name,
                    "product_code" => $product->sku,
                    "product_price" => $product->sales_price,
                    "discount_price" => $discount_price,
                    "sales_price" => $product->sales_price - $discount_price,
                    "qty" => rand(2, 5),
                ]);

                ProductStockLog::create([
                    "product_id" => $product->id,
                    "qty" => $order_details->qty,
                    "type" => "sales",
                    "order_id" => $product->order_id,
                ]);

                $variant = OrderVariant::create([
                    'order_id' => $order_no,
                    'order_details_id' => $order_details->id,
                    'product_id' => $product->id,
                    'variant_name' => "color",
                    'variant_value' => rand(30, 70),
                ]);

                $subtotal += ($order_details->sales_price * $order_details->qty);
                $variant_price += $variant->variant_value;
            }

            $delivery_methods = [
                [
                    "type" => "pickup",
                    "price" => 0,
                ],
                [
                    "type" => "courier_in_dhaka",
                    "price" => 60,
                ],
                [
                    "type" => "courier_out_dhaka",
                    "price" => 120,
                ],
            ];

            $delivery_method = $delivery_methods[rand(0, 2)];
            $order = Order::create([
                'user_id' => 6, // user id
                "customer_id" => null, //customer id
                "address_id" => 6, // user address id, customer
                "invoice_id" => generateInvoiceId().$order_no,
                "invoice_date" => Carbon::now()->subDays(rand(1, 5))->toDateTimeString(),
                "order_type" => "quotation", // Quotation, Pos order, Ecomerce order
                "order_status" => ["pending", "accepted", "processing", "delevered", "canceled"][rand(0, 4)],
                "order_coupon_id" => null,

                "sub_total" => $subtotal,
                "discount" => $total_discount_price,
                "coupon_discount" => 0,
                "delivery_charge" => $delivery_method["price"],
                "variant_price" => $variant_price, // extra charge for product variants
                "total_price" => ($subtotal - $total_discount_price) + $delivery_method["price"] + $variant_price,

                "payment_status" => explode(',', 'pending, partially paid, paid')[rand(0, 2)], // pending, partially paid, paid
                "delivery_method" => $delivery_method["type"],
            ]);

            $delivery_info = OrderDeliveryInfo::create([
                "order_id" => $order->id,
                "user_id" => 6,
                "customer_id" => null,
                "delivery_method" => $delivery_method["type"],
                "delivery_cost" => $delivery_method["price"],
                "courier_name" => $delivery_method["type"] != "pickup" ? "sundarban": '',
                "address_id" => 6,
                "location_id" => 6, // shipping id
            ]);

            $payment = OrderPayment::create([
                "order_id" => $order->id,
                "user_id" => 6,
                "customer_id" => null,
                "payment_method" => "bkash",
                "bkash_number" => "+880 14523698",
                "trx_id" => uniqid(),
                "amount" => rand($order->total_price - round($order->total_price / 2), $order->total_price),
            ]);

            if ($payment->amount ==  0) $order->payment_status = "pending";
            if ($payment->amount > 0 && $payment->amount < $order->total_price) $order->payment_status = "partially paid";
            if ($payment->amount == $order->total_price) $order->payment_status = "paid";
            $order->save();
        }
    }
}
