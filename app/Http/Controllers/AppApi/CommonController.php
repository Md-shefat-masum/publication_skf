<?php

namespace App\Http\Controllers\AppApi;

use App\Http\Controllers\Controller;
use App\Models\Order\Order;
use App\Models\Order\OrderDetails;
use App\Models\Order\OrderPayment;
use App\Models\Order\OrderPaymentAttachment;
use App\Models\Product\Category;
use App\Models\Product\Product;
use App\Models\Settings\AppSettingTitle;
use App\Models\User;
use App\Models\Website\Banner;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Facades\Image;

class CommonController extends Controller
{
    public function top_categories()
    {
        $categories = Category::where('is_top_category', 1)
            ->select(['category_image', 'parent_id', 'status', 'id', 'name', 'name_english', 'slug'])
            ->where('status', 1)
            ->where('parent_id', 0)
            ->get();
        return response()->json($categories);
    }

    public function categories()
    {
        $categories = Category::where('is_top_category', 1)
            ->select(['category_image', 'parent_id', 'status', 'id', 'name', 'name_english', 'slug'])
            ->where('status', 1)
            ->where('parent_id', 0)
            ->with(['child'])
            ->get();
        return response()->json($categories);
    }

    public function top_products()
    {
        $products = Product::where('is_top_product', 1)
            ->where('status', 1)
            ->select(Product::$common_selected_fields)
            ->latest()
            ->get();
        return $products;
    }

    public function all_products()
    {
        $products = Product::where('status', 1)
            ->latest()
            ->get();
        return $products;
    }
    public function banners()
    {
        $data = Banner::select(['id', 'image', 'title'])
            ->where('status', 1)
            ->where('show', 1)
            ->orderBy('serial', 'ASC')
            ->get();
        return response()->json($data);
    }

    public function products()
    {
        $data = Product::select([
            'id', 'product_name', 'is_top_product',
            'cost', 'sales_price', 'stock_alert_qty',
            'slug', "thumb_image",
        ])
            ->where('status', 1)
            ->orderBy('is_top_product', 'ASC')
            ->paginate(4);
        return response()->json($data);
    }

    public function store_order()
    {
        // return (request()->all());
        $auth_user = auth()->user();
        $invoice_prefix = AppSettingTitle::getValue("invoice_prefix");
        $sub_total = request()->sub_total;
        $total = request()->total;
        $shipping_charge = request()->shipping_charge;
        $bank_charge = request()->bank_charge;
        $products = request()->carts;

        $order = Order::create([
            'user_id' => $auth_user ? $auth_user->id : null, // user id
            "customer_id" => null, //customer id
            "address_id" => null, // user address id, customer
            "invoice_id" => $invoice_prefix . "-" . Carbon::now()->format("Ymd"),
            "invoice_date" => Carbon::now()->toDateTimeString(),
            "order_type" => "quotation", // 'quotation','invoice','ecommerce'
            "order_status" => "pending",
            "order_coupon_id" => null,

            "sub_total" => $sub_total,
            "discount" => 0,
            "coupon_discount" => 0,
            "delivery_charge" => $shipping_charge,
            "bank_charge" => $bank_charge,
            "variant_price" => 0, // extra charge for product variants
            "total_price" => $sub_total + $shipping_charge,

            "payment_status" => "pending", // pending, partially paid, paid
            "delivery_method" => "out side dhaka",
        ]);

        $order->invoice_id .= $order->id;
        $order->save();

        foreach ($products as $product) {
            $qty = $product['qty'];
            $product = Product::find($product['id']);
            $discount_price = $product->discount_info->discount_amount;
            $sales_price = $product->discount_info->discount_price;
            OrderDetails::create([
                "order_id" => $order->id,
                "product_id" => $product->id,
                "product_name" => $product->product_name,
                "product_code" => $product->sku,
                "product_price" => $product->sales_price,
                "discount_price" => $product->discount_info->discount_amount,
                "sales_price" => $product->discount_info->discount_price,
                "qty" => $qty,
            ]);
        }

        return $order;
    }

    public function profile_update()
    {
        $user = User::with('roles')->where('id', auth()->user()->id)->first();
        $user->fill(request()->except('photo'))->save();
        if (request()->hasFile('photo')) {
            $file = request()->file('photo');
            $extension = $file->getClientOriginalExtension();
            $temp_name  = uniqid(10) . time();
            $image = Image::make($file);

            $width = 120;
            $height = 120;
            $image->fit($width, $height, function ($constraint) {
                $constraint->aspectRatio();
            });

            if (!file_exists(public_path('uploads/users'))) {
                mkdir(public_path('uploads/users'), 0777, true);
            }

            $path = 'uploads/users/user' . $temp_name . '.' . $extension;
            $image->save($path);

            $user->photo = $path;
            $user->save();
        }

        return $user;
    }

    public function payments()
    {
        $payments = OrderPayment::where('user_id', auth()->user()->id)
            ->orderBy('id', 'DESC')
            ->with('attachment','order')
            ->paginate(10);
        return response()->json($payments);
    }

    public function payment()
    {
        $validator = Validator::make(request()->all(), [
            'order_id' => ['required','exists:orders,id'],
            'attachment' => ['required'],
            'trx_id' => ['required','unique:order_payments'],
            'amount' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $payment = new OrderPayment();
        $payment->payment_method = 'bank_account';
        $payment->order_id = request()->order_id;
        $payment->amount = request()->amount;
        $payment->trx_id = request()->trx_id;
        $payment->user_id = auth()->user()->id;
        $payment->account_id = 2; // bank

        if(request()->hasFile('attachment')){
            $attachment = new OrderPaymentAttachment();
            $attachment->file = Storage::putFile('uploads/receipt',request()->file('attachment'));
            $payment->save();
            $attachment->order_payment_id = $payment->id;
            $attachment->save();

            return $payment;
        }

        return response()->json('payment faield',500);
    }

    public function orders()
    {
        $order_status = request()->order_status ?? 'pending';
        $orders = Order::where('user_id', auth()->user()->id)
            ->where('order_status', $order_status)
            ->with('payment')
            ->orderBy('id', 'DESC')
            ->paginate(10);
        $orders->appends('order_status', $order_status);
        return response()->json($orders);
    }

    public function dues()
    {
        $orders = Order::where('user_id', auth()->user()->id)
            ->whereNotIn('order_status', ['canceled'])
            ->where('payment_status', '!=', 'paid')
            ->orderBy('id', 'DESC')
            ->with('payment')
            ->paginate(10);
        return response()->json($orders);
    }

    public function order($id)
    {
        $order = Order::where('user_id', auth()->user()->id)
            ->where('id', $id)
            ->orderBy('id', 'DESC')
            ->with(['order_details', 'user', 'payment'])
            ->first();
        return $order;
    }
}
