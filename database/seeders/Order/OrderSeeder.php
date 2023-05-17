<?php

namespace Database\Seeders\Order;

use App\Models\Order\Order;
use App\Models\Order\OrderDeliveryInfo;
use App\Models\Order\OrderDetails;
use App\Models\Order\OrderPayment;
use App\Models\Order\OrderVariant;
use App\Models\Product\Product;
use App\Models\Product\ProductStockLog;
use App\Models\Production\Production;
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

        function update_production_log($order_details)
        {
            $production = Production::where('product_id', $order_details->product_id)
                ->whereColumn("print_qty", ">", "total_sales")
                ->first();

            if ($production) {
                $total_sales = $production->total_sales + $order_details->qty;
                $rest_production_products = $production->print_qty - $production->total_sales;
                $rest_products = $order_details->qty;

                echo " production_id: " . $production->id;
                echo " total_qty: " . $production->print_qty ;
                echo " total_sales: " . $total_sales;
                echo " rest_production_products: " . $rest_production_products;
                echo " order_qty: " . $order_details->qty;
                echo "\n";

                if ($total_sales > $production->print_qty) {
                    /**
                     *   যদি টোটাল সেলস পূর্বের সেলস এর সাথে যোগ করলে বেশি হয়ে যায়
                     *  তাহলে পূর্বের সেলস এর সাথে বাকী সংখ্যা যোগ হবে
                     *  pro:300 sales:200 qty:150 res_prod:(pro-sales)100 res_product:(qty-res_prod)50
                     **/
                    $production->total_sales += $rest_production_products;
                    $rest_products -= $rest_production_products;
                    $order_details->qty = $rest_products;
                    $production->save();

                    update_production_log($order_details);
                } else {
                    /**
                     * পূর্বের সেলসের সাথে নতুন সংখ্যা যোগ হবে
                     */
                    $production->total_sales += $rest_products;
                    $production->save();
                }

                ProductStockLog::create([
                    "product_id" => $order_details->id,
                    "qty" => $order_details->qty,
                    "type" => "sales",
                    "order_id" => $order_details->order_id,
                    "productions_id" => $production->id,
                ]);
            }else{
                echo "there is no product in stock for qty: ".$order_details->qty." product_id: ".$order_details->product_id ."\n";
            }
        }

        Order::truncate();
        OrderDetails::truncate();
        OrderPayment::truncate();
        OrderVariant::truncate();
        OrderDeliveryInfo::truncate();

        for ($order_no = 1; $order_no < 30; $order_no++) {
            $rand_produts = Product::with('discount')->get()->random(4);
            // $rand_produts = Product::with('discount')->where('id', 1)->get();

            $total_discount_price = 0;
            $subtotal = 0;
            $variant_price = 0;

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
                    "qty" => rand(10,20),
                ]);

                $variant = OrderVariant::create([
                    'order_id' => $order_no,
                    'order_details_id' => $order_details->id,
                    'product_id' => $product->id,
                    'variant_name' => "color",
                    'variant_value' => rand(30, 70),
                ]);

                // update production log
                update_production_log($order_details);

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
                "invoice_id" => generateInvoiceId() . $order_no,
                "invoice_date" => Carbon::now()->subDays(rand(1, 5))->toDateTimeString(),
                "order_type" => ["quotation", "invoice", "ecomerce"][rand(0,2)], // Quotation, Pos order, Ecomerce order
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
                "courier_name" => $delivery_method["type"] != "pickup" ? "sundarban" : '',
                "address_id" => 6,
                "location_id" => 6, // shipping id
            ]);

            $payment = OrderPayment::create([
                "order_id" => $order->id,
                "user_id" => 6,
                "customer_id" => null,
                "payment_method" => "bkash",
                "number" => "+880 14523698",
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
