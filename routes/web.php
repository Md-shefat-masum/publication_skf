<?php

use App\Http\Controllers\Auth\ApiLoginController;
use App\Http\Livewire\Login;
use App\Http\Livewire\Register;
use App\Http\Livewire\ShowPosts;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::group(['prefix' => '', 'namespace' => "Livewire"], function () {
    Route::get('/', "Frontend\Home");
    Route::get('category/{category}/{name}', "Frontend\CategoryProduct")->name('category_product');
    Route::get('product/{product}/{name}', "Frontend\ProductDetails")->name('product_details');
    Route::get('cart', "Frontend\Cart")->name('cart');
    Route::get('checkout', "Frontend\Checkout")->name('checkout');
    Route::get('invoice/{invoice}', "Frontend\Invoice")->name('invoice');
    // Route::get('pos', "Frontend\Pos")->name('pos');
    Route::get('/login', "Login");
    Route::get('/register', "Register");
});

Route::group( ['prefix'=>'','namespace' => "Controllers" ],function(){
    Route::post('/checkout','CheckoutController@checkout');
    Route::post('/apply-coupon','CheckoutController@apply_coupon');
    Route::get('/pos','WebsiteController@pos');

    Route::group( ['prefix'=>'json' ],function(){
        Route::get('/products','Json\ProductJsonController@products');
    });
});

Route::get('/dashboard', function () {
    return view('backend.dashboard');
})->name('dashboard');

Route::get('/test', function () {
    // return view('test');
    // dd(request()->getClientIp());
    DB::table('category_product')->truncate();
    for ($i=1; $i <= 12; $i++) {
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

Route::get('/data-reload', function () {
    \Illuminate\Support\Facades\Artisan::call('migrate:fresh', ['--seed' => true]);
    \Illuminate\Support\Facades\Artisan::call('migrate', ['--path' => 'vendor/laravel/passport/database/migrations', '--force' => true]);
    \Illuminate\Support\Facades\Artisan::call('passport:install');
    return redirect()->back();
});


