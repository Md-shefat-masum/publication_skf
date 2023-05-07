<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Validator;

class WebsiteController extends Controller
{
    public function home()
    {
        return view('frontend.index');
    }
    public function checkout()
    {
        $validator = Validator::make(request()->all(), [
            'first_name' => ['required', 'string'],
            'last_name' => ['required'],
            'address' => ['required'],
            'mobile_number' => ['required', 'string'],
            // 'email' => ['email'],
            // 'city' => ['required', 'string'],
            // 'zone' => ['required', 'string'],
            // 'payment_method' => ['required'],
            // 'bkash_number' => ['required_if:payment_method,==,bkash'],
            // 'bkash_trx_id' => ['required_if:payment_method,==,bkash'],
            // 'bank_account_no' => ['required_if:payment_method,==,bank'],
            // 'bank_transaction_id' => ['required_if:payment_method,==,bank'],
            // 'shipping_method' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'data' => $validator->errors(),
            ], 422);
        }
        
        $now = Carbon::now()->toDateTimeString();
        $name = request()->first_name . request()->last_name;
        $address = request()->address;
        $mobile_number = request()->mobile_number;
        $message = "
        আসসালামু আলাইকুম ওয়ারহমাতুল্লাহ।

        নতুন অর্ডার এসেছে
        অর্ডার এর সময়:  $now
        অর্ডার এর বিবরণ
        -------------------  
        ১. কারফিউড নাইট - ৳ 266 x 1	৳ 266
        ২. আল কুদস - ৳ 70 x 1 = ৳ 70
        ৩. দুঃখ-কষ্টের হিকমত - ৳ 119 x 1 = ৳ 119
        ------------------- 
        সাবটোটাল - ৳ 455
        ডেলিভারি চার্জ - ৳ 40
        সর্বমোট মূল্য - ৳ 495
        ------------------- 
        অর্ডারকারীর বিবরণ 
        নাম : $name
        মোবাইল নাম্বার : $mobile_number 
        ঠিকানা : $address 
        ------------------- 
        বিস্তারিত : http://127.0.0.1:8000/invoice";
        $this->send_telegram($message);
        
        return response()->json([
            "message" => "Order Completed Successfully",
            "order" => request()->all()
        ], 200);
    }

    public function send_telegram($message)
    {
        $bot_token = '5599292546:AAFukGO7qtKIVuINcZJo-9XbqtllVxSwgmY'; //sofor token muaz vai
        $method = "sendMessage";

        $parameters = [
            'chat_id' => 812239513,
            'text' => $message,
        ];

        $url = "https://api.telegram.org/bot$bot_token/$method";


        $response = Http::get($url.'?chat_id='.$parameters['chat_id'].'&text='.$parameters['text']);
        return $response->json();
    }
}
