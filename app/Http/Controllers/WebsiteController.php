<?php

namespace App\Http\Controllers;

use App\Models\ContactMessage;
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

    public function pos()
    {
        return view('pos');
    }

    public function contact_submit()
    {
        $validator = Validator::make(request()->all(),[
            "full_name" => ['required','min:5'],
            "email" => ['required', 'email'],
            "subject" => ["required"],
            "message" => ["required", "min:15"]
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'data' => $validator->errors(),
            ], 422);
        }

        ContactMessage::create([
            'full_name' => strip_tags(request()->full_name),
            'email' => strip_tags(request()->email),
            'subject' => strip_tags(request()->subject),
            'message' => strip_tags(request()->message),
        ]);

        return response()->json("data submitted",200);
    }
}
