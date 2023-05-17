<?php

namespace App\Http\Controllers;

use App\Models\Product\Product;
use App\Models\Settings\AppSettingTitle;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Validator;

class CheckoutController extends Controller
{
    public $message = "";

    public function checkout()
    {
        $carts = json_decode(request()->carts);
        $data = request()->except('carts');
        $data['carts'] = $carts;
        $validator = Validator::make($data, [
            'first_name' => ['required', 'string'],
            'last_name' => ['required'],
            'address' => ['required'],
            'mobile_number' => ['required', 'string'],
            // 'email' => ['email'],
            'city' => ['required', 'string'],
            'zone' => ['required', 'string'],
            'payment_method' => ['required'],
            'bkash_number' => ['required_if:payment_method,==,bkash'],
            'bkash_trx_id' => ['required_if:payment_method,==,bkash'],
            'bank_account_no' => ['required_if:payment_method,==,bank'],
            'bank_transaction_id' => ['required_if:payment_method,==,bank'],
            'shipping_method' => ['required'],
            "carts" => ["required", "array", "min:1"],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'data' => $validator->errors(),
            ], 422);
        }

        $now = Carbon::now()->format("d M, Y h:i a");
        $name = request()->first_name .' '. request()->last_name;
        $address = request()->address;
        $mobile_number = request()->mobile_number;
        $shipping_method = request()->shipping_method;
        $delivery_cost = HelperController::delivery_cost();
        $shipping_cost = 0;
        $sub_total_cost = 0;
        $total_cost = 0;
        $message_products = "";
        $invoice_url = url('/invoice');

        if ($shipping_method == "home_delivery") {
            $shipping_cost = $delivery_cost->home_delivery_cost;
        }

        if ($shipping_method == "outside_dhaka") {
            $shipping_cost = $delivery_cost->out_dhaka_home_delivery_cost;
        }

        foreach ($carts as $key => $item) {
            $si = $key + 1;
            $product = Product::findById($item->id);
            $main_price = $product->sales_price;
            $discount_percent = $product->discount_percent;
            $price = $product->discount_amount ? $product->discount_price : $product->sales_price;
            $total = $item->qty * $price;
            $sub_total_cost += $total;

            $bn_price = HelperController::enToBn("৳ $price x $item->qty	= ৳ $total \n\t\t\t (৳ $main_price - $discount_percent%)");
            $message_products .= "$si. $item->product_name - \n\t\t\t $bn_price \n";
        }
        $total_cost = $sub_total_cost + $shipping_cost;

        $this->message .= "আসসালামু আলাইকুম ওয়ারহমাতুল্লাহ। \n";
        $this->message .= "নতুন অর্ডার এসেছে \n";
        $this->message .= "অর্ডার এর সময়:  $now \n";
        $this->message .= "অর্ডার এর বিবরণ \n";

        $this->message .= "------------------- \n";
        $this->message .= $message_products;

        $this->message .= "------------------- \n";
        $this->message .= HelperController::enToBn("সাবটোটাল - ৳ $sub_total_cost \n");
        $this->message .= HelperController::enToBn("ডেলিভারি চার্জ - ৳ $shipping_cost \n");
        $this->message .= HelperController::enToBn("সর্বমোট মূল্য - ৳ $total_cost \n");

        $this->message .= "------------------- \n";
        $this->message .= "অর্ডারকারীর বিবরণ \n";
        $this->message .= "নাম : $name \n";
        $this->message .= "মোবাইল নাম্বার : $mobile_number \n";
        $this->message .= "ঠিকানা : $address \n";
        $this->message .= "------------------- \n";
        $this->message .= "বিস্তারিত : $invoice_url";
        $this->send_telegram($this->message);

        return response()->json([
            "message" => "Order Completed Successfully",
            "order" => request()->all()
        ], 200);
    }

    public function send_telegram($message)
    {
        $bot_token = '5599292546:AAFukGO7qtKIVuINcZJo-9XbqtllVxSwgmY';
        $method = "sendMessage";

        $parameters = [
            'chat_id' => 812239513,
            'text' => $message,
        ];

        $url = "https://api.telegram.org/bot$bot_token/$method";

        $response = Http::get($url . '?chat_id=' . $parameters['chat_id'] . '&text=' . $parameters['text']);
        return $response->json();
    }
}
