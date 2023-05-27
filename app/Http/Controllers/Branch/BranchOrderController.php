<?php

namespace App\Http\Controllers\Branch;

use App\Http\Controllers\Controller;
use App\Http\Controllers\HelperController;
use App\Models\Order\Order;
use App\Models\Order\OrderDeliveryInfo;
use App\Models\Order\OrderDetails;
use App\Models\Product\Product;
use App\Models\Settings\AppSettingTitle;
use App\Models\User\Address;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Validator;

class BranchOrderController extends Controller
{
    public $message = "";

    public function all_products(Request $request)
    {
        $paginate = (int) 10;
        $orderBy = "id";
        $orderByType = "ASC";

        $status = 1;
        if (request()->has('status')) {
            $status = request()->status;
        }

        $query = Product::where('status', $status)->orderBy($orderBy, $orderByType);

        if (request()->has('search_key')) {
            $key = request()->search_key;
            $query->where(function ($q) use ($key) {
                return $q->where('id', $key)
                    ->orWhere('product_name', $key)
                    ->orWhere('sales_price', $key)
                    ->orWhere('product_name', 'LIKE', '%' . $key . '%')
                    ->orWhere('sales_price', 'LIKE', '%' . $key . '%');
            });
        }
        $query->withSum('stocks', 'qty');
        $query->withSum('sales', 'qty');
        $users = $query->paginate($paginate);
        return response()->json($users);
    }

    public function store_order()
    {
        $data = request()->all();
        $validator = Validator::make($data, [
            "carts" => ["required", "array", "min:1"],
        ], [
            "carts.required" => ["there is no product into cart list."]
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'data' => $validator->errors(),
            ], 422);
        }

        $carts = request()->carts;
        $products = [];
        $sub_total_cost = 0;
        $total_cost = 0;
        $shipping_cost = 0;
        $total_discount = 0;
        $message_products = "";

        $get_product_details = $this->get_product_details($carts, request()->all());
        $products = $get_product_details['products'];
        $sub_total_cost = $get_product_details['sub_total_cost'];
        $total_discount = $get_product_details['total_discount'];
        $shipping_cost = $get_product_details['shipping_cost'];
        $total_cost = $get_product_details['total_cost'];
        $message_products = $get_product_details['message_products'];

        $order = $this->save_order([
            "products" => $products,
            "request" => request()->except('carts'),
            "sub_total_cost" => $sub_total_cost,
            "total_cost" => $total_cost,
            "total_discount" => $total_discount,
            "shipping_cost" => $shipping_cost,
            "coupon_info" => "",
        ]);

        $this->make_message($message_products, $sub_total_cost, $shipping_cost, 0, $total_cost, "", "", "", $order->invoice_id);

        return response()->json([
            "message" => "Order Completed Successfully",
            "order" => $order->invoice_id,
        ], 200);
    }

    /**
     * ```php
     * get_product_details($carts=[], $request):[
     *     "total_cost" => $total_cost,
     *     "products" => $products,
     *     "message_products" => $message_products,
     *     "sub_total_cost" => $sub_total_cost,
     *     "sub_total_cost" => $sub_total_cost,
     *   ]
     * ```
     */
    public function get_product_details($carts = [], $request)
    {
        $delivery_cost = HelperController::delivery_cost();
        $products = [];
        $sub_total_cost = 0;
        $total_cost = 0;
        $shipping_cost = $delivery_cost->out_dhaka_home_delivery_cost;
        $total_discount = 0;
        $message_products = "";

        foreach ($carts as $key => $item) {
            $item = (object) $item;
            $si = $key + 1;
            $product = Product::findById($item->id);
            $product->qty = $item->qty;
            $products[] = $product;
            $main_price = $product->sales_price;
            $discount_percent = $product->discount_info->discount_percent;
            $price = $product->discount_info->discount_amount ? $product->discount_info->discount_price : $product->sales_price;
            $total = $item->qty * $price;
            $sub_total_cost += $total;
            $total_discount += $product->discount_info->discount_amount;
            $bn_price = enToBn("৳ $price x $item->qty	= ৳ $total \n\t\t\t (৳ $main_price - $discount_percent%)");
            $message_products .= "$si. $item->product_name - \n\t\t\t $bn_price \n";
        }

        $total_cost = $sub_total_cost + $shipping_cost;

        return [
            "products" => $products,
            "sub_total_cost" => $sub_total_cost,
            "total_discount" => $total_discount,
            "shipping_cost" => $shipping_cost,
            "total_cost" => $total_cost,
            "message_products" => $message_products,
        ];
    }

    public function save_order($data = [])
    {
        $products = $data["products"];
        $request = $data["request"];
        $sub_total_cost = $data["sub_total_cost"];
        $total_cost = $data["total_cost"];
        $total_discount = $data["total_discount"];
        $shipping_cost = $data["shipping_cost"];
        $coupon_info = $data["coupon_info"];
        $request = (object) $request;
        $auth_user = auth()->check() ? auth()->user() : null;
        $address = $this->save_address($request);
        $variant_price = 0;
        $invoice_prefix = AppSettingTitle::getValue("invoice_prefix");

        $order = Order::create([
            'user_id' => $auth_user ? $auth_user->id : null, // user id
            "customer_id" => null, //customer id
            "address_id" => $address->id, // user address id, customer
            "invoice_id" => $invoice_prefix . "-" . Carbon::now()->format("Ymd"),
            "invoice_date" => Carbon::now()->toDateTimeString(),
            "order_type" => "invoice", // Quotation, Pos order, Ecomerce order
            "order_status" => "pending",
            // "order_coupon_id" => $coupon_info["order_coupon_id"],
            "order_coupon_id" => null,

            "sub_total" => $sub_total_cost,
            "discount" => $total_discount,
            "coupon_discount" => 0,
            "delivery_charge" => $shipping_cost,
            "variant_price" => $variant_price, // extra charge for product variants
            "total_price" => $total_cost + $variant_price,

            "payment_status" => "pending", // pending, partially paid, paid
            // "delivery_method" => $request->shipping_method,
            "delivery_method" => " ",
        ]);

        $order->invoice_id .= $order->id;
        $order->save();

        foreach ($products as $product) {
            OrderDetails::create([
                "order_id" => $order->id,
                "product_id" => $product->id,
                "product_name" => $product->product_name,
                "product_code" => $product->sku,
                "product_price" => $product->sales_price,
                "discount_price" => $product->discount_info->discount_amount,
                "sales_price" => $product->discount_info->discount_price,
                "qty" => $product->qty,
            ]);
        }

        $this->save_delivery_info($order, $request, $shipping_cost, $address);
        // $this->save_order_payments($order, $request);

        return $order;
    }

    public function save_delivery_info($order, $request, $shipping_cost, $address)
    {
        $auth_user = auth()->check() ? auth()->user() : null;
        OrderDeliveryInfo::create([
            "order_id" => $order->id,
            "user_id" => $auth_user ? $auth_user->id : null,
            "customer_id" => null,
            "delivery_method" => isset($request->shipping_method)?$request->shipping_method:'',
            "delivery_cost" => $shipping_cost,
            "courier_name" => "",
            "address_id" => $address->id,
            "location_id" => $address->id, // shipping id
        ]);
    }

    public function save_address($request)
    {
        $auth_user = auth()->check() ? auth()->user() : null;
        $address = null;
        $request = (object) $request;
        if ($auth_user) {
            $address = Address::where('table_name', 'users')->where('table_id', $auth_user->id)->orderBy('id','DESC')->first();
            if(!$address){
                $address = new Address();
            }
        }

        $address->fill([
            "table_name" => $auth_user ? "users" : "guest",
            "table_id" => $auth_user ? $auth_user->id : null,
            "address_type" => "shipping",
            "first_name" => $request->first_name ?? '',
            "last_name" => $request->last_name ?? '',
            "mobile_number" => $request->mobile_number ?? $auth_user->mobile_number,
            "email" => $request->email ?? $auth_user->email,
            "address" => $request->address ?? '',
            "city" => $request->city ?? '',
            "state" => $request->state ?? '',
            "zip_code" => $request->zip_code ?? '',
            "zone" => $request->zone ?? '',
            "country" => $request->country ?? '',
            "comment" => $request->comment ?? '',
        ])->save();

        return $address;
    }


    public function make_message($message_products, $sub_total_cost, $shipping_cost, $coupon_discount, $total_cost, $name, $mobile_number, $address, $invoice_id)
    {
        $now = Carbon::now()->format("d M, Y h:i a");
        $invoice_url = url("/invoice/$invoice_id");
        $this->message .= "আসসালামু আলাইকুম ওয়ারহমাতুল্লাহ। \n";
        $this->message .= "নতুন অর্ডার এসেছে \n";
        $this->message .= "অর্ডার এর সময়:  $now \n";
        $this->message .= "অর্ডার এর বিবরণ \n";

        $this->message .= "------------------- \n";
        $this->message .= $message_products;

        $this->message .= "------------------- \n";
        $this->message .= enToBn("সাবটোটাল - ৳ $sub_total_cost \n");
        $this->message .= enToBn("ডেলিভারি চার্জ - ৳ $shipping_cost \n");
        if ($coupon_discount) {
            $this->message .= enToBn("কুপন ছাড় - ৳ -$coupon_discount \n");
        }
        $this->message .= enToBn("সর্বমোট মূল্য - ৳ $total_cost \n");

        $this->message .= "------------------- \n";
        $this->message .= "অর্ডারকারীর বিবরণ \n";
        $this->message .= "নাম : $name \n";
        $this->message .= "মোবাইল নাম্বার : $mobile_number \n";
        $this->message .= "ঠিকানা : $address \n";
        $this->message .= "------------------- \n";
        $this->message .= "বিস্তারিত : $invoice_url";
        $this->send_telegram($this->message);
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
