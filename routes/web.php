<?php

use App\Models\Product\Category;
use App\Models\Product\Product;
use App\Models\Product\ProductStockLog;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;


Route::get('/home', function () {
    return "home";
});

Route::group(['prefix' => '', 'namespace' => "Livewire"], function () {
    Route::get('/', "Frontend\Home");
    Route::get('category/{category}/{name}', "Frontend\CategoryProduct")->name('category_product');
    Route::get('product/{product}/{name}', "Frontend\ProductDetails")->name('product_details');
    Route::get('cart', "Frontend\Cart")->name('cart');
    Route::get('checkout', "Frontend\Checkout")->name('checkout');
    Route::get('invoice/{invoice}', "Frontend\Invoice")->name('invoice');
    Route::get('/profile', "Frontend\CustomerProfile");

    Route::get('/login', "Login")->name('login');
    Route::get('/register', "Register")->name('register');

    // Route::get('pos', "Frontend\Pos")->name('pos');
    Route::get('contact', "Frontend\Contact")->name('contact');
    Route::get('/frequently-asked-questions', "Frontend\Faq");
    Route::get('/how-to-buy', "Frontend\Howtobuy");
    Route::get('/terms', "Frontend\Terms");
    Route::get('/refund-policy', "Frontend\RefundPolicy");
    Route::get('/privacy-policy', "Frontend\PrivacyPolicy");

    Route::get('/about-us', "Frontend\About");
});

Route::group(['prefix' => '', 'namespace' => "Controllers"], function () {
    Route::post('/checkout', 'CheckoutController@checkout');
    Route::post('/checkout/pay-due', 'CheckoutController@pay_due');
    Route::post('/apply-coupon', 'CheckoutController@apply_coupon');
    Route::get('/pos', 'WebsiteController@pos');

    Route::group(['prefix' => 'json'], function () {
        Route::get('/products', 'Json\ProductJsonController@products');
    });

    Route::post('/profile/address-update', 'Common\AddressController@update_from_frontend');
    Route::post('/profile/update', 'Auth\ApiLoginController@update_profile');
    Route::post('/profile/update-profile-pic', 'Auth\ApiLoginController@update_profile_pic');

    Route::post('/profile/update-profile-pic', 'Auth\ApiLoginController@update_profile_pic');
    Route::post('/contact-submit', 'WebsiteController@contact_submit');

    Route::get('/invoice-printout/{order}', 'Admin\Order\OrderPrintoutController@sales_invoice');
});

Route::get('/dashboard', function () {
    return view('backend.dashboard');
})->name('dashboard');

Route::get('/test', function () {
    // return view('test');
    // dd(request()->getClientIp());
    DB::table('category_product')->truncate();
    for ($i = 1; $i <= 12; $i++) {
        DB::table('category_product')->insert([
            'category_id' => $i,
            "product_id" => $i,
        ]);
        DB::table('category_product')->insert([
            'category_id' => 1,
            "product_id" => $i,
        ]);
    }
});

Route::get('/old-products', function () {
    $conn = new mysqli("localhost", "shefat", "1234", "almariz_prokasona");
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $sql = "SELECT * FROM products";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        Product::truncate();
        DB::table('category_product')->truncate();
        while ($row = $result->fetch_object()) {
            // dd($row);
            $product = Product::create([
                "product_name" => $row->product_title,
                "product_name_english" => \Str::slug($row->product_title),
                "product_url" => \Str::slug($row->product_title),

                "thumb_image" => $row->product_main_image,
                "thumb_alt" => \Str::slug($row->product_title),
                "is_public" => 1,

                "page_title" => $row->product_title,
                "meta_description" => $row->product_title,
                "search_keywords" => $row->product_title . ", " . \Str::slug($row->product_title),

                "description" => $row->product_description,
                "stock_alert_qty" => $row->alert_quantity,
                "sales_price" => $row->product_price,

                // "product_category" => $row->product_category,
                // "product_sub_category" => $row->product_sub_category,
                // "product_quantity" => $row->product_quantity,
                // "special_offer" => $row->special_offer,
            ]);

            $category = Category::where('name', 'LIKE', "%" . $row->product_category . "%")->first();
            $sub_category = Category::where('name', 'LIKE', "%" . $row->product_sub_category . "%")->first();
            $a_c = [];
            if ($category) {
                $a_c[] = $category->id;
            }
            if ($sub_category) {
                $a_c[] = $sub_category->id;
            }
            $product->categories()->sync($a_c);

            ProductStockLog::insert([
                "product_id" => $product->id,
                "qty" => $row->product_quantity,
                "type" => "init",
            ]);
        }
    } else {
        echo "0 results";
    }
    $conn->close();
});

Route::get('/data-reload', function () {
    \Illuminate\Support\Facades\Artisan::call('migrate:fresh', ['--seed' => true]);
    \Illuminate\Support\Facades\Artisan::call('migrate', ['--path' => 'vendor/laravel/passport/database/migrations', '--force' => true]);
    \Illuminate\Support\Facades\Artisan::call('passport:install');
    return redirect()->back();
});
