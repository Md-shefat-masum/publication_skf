<?php

namespace App\Http\Controllers;

use App\Models\Account\AccountLog;
use App\Models\Account\AccountLogAttachment;
use App\Models\Account\AccountSupplierLog;
use App\Models\ContactMessage;
use App\Models\Order\Order;
use App\Models\Product\ProductCart;
use App\Models\Product\ProductStockLog;
use App\Models\User;
use App\Models\User\PhoneNumber;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Facades\Image;

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

    public function website_register(Request $request)
    {
        $this->validate($request, [
            'first_name' => 'required|string',
            // 'last_name' => 'string',
            // 'email' => 'required|email|unique:users,email',
            'mobile_number' => 'required|unique:users,mobile_number',
            'password' => 'min:8,required|confirmed',
        ]);

        // $validator = Validator::make($request->all(), [
        //     'name' => ['required'],
        //     'email' => ['unique:users'],
        //     'password' => ['required', 'min:8', 'confirmed'],
        //     'mobile_number' => ['required'],
        // ]);

        // if ($validator->fails()) {
        //     return response()->json([
        //         'err_message' => 'validation error',
        //         'data' => $validator->errors(),
        //     ], 422);
        // }

        $data = $request->except(['password', 'password_confirmation', 'image']);
        $data['password'] = Hash::make($request->password);
        $user = User::create($data);
        if ($request->hasFile('photo')) {
            $file = $request->file('photo');
            $path = 'uploads/users/pp-' . $user->user_name . '-' . $user->id . rand(1000, 9999) . '.' . $file->getClientOriginalExtension();
            Image::make($file)->fit(200, 200)->save(public_path($path));
            $user->photo = $path;
        }
        $user->slug = $user->id . rand(1000, 9999);
        $user->save();

        $user->roles()->attach([5]);

        Auth::login($user);
        return redirect('/profile');

        // $user = User::where('id', Auth::user()->id)->with('roles')->first();
        // return response()->json($user, 200);
    }

    public function reset()
    {
        AccountLogAttachment::truncate();
        AccountLog::truncate();
        AccountSupplierLog::truncate();
        ContactMessage::truncate();
        Order::truncate();
        PhoneNumber::truncate();
        ProductCart::truncate();
        ProductStockLog::truncate();
    }
}
