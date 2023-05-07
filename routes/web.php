<?php

use App\Http\Controllers\Auth\ApiLoginController;
use App\Http\Livewire\Login;
use App\Http\Livewire\Register;
use App\Http\Livewire\ShowPosts;
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
    Route::get('category_product', "Frontend\CategoryProduct")->name('category_product');
    Route::get('product_details', "Frontend\ProductDetails")->name('product_details');
    Route::get('cart', "Frontend\Cart")->name('cart');
    Route::get('checkout', "Frontend\Checkout")->name('checkout');
    Route::get('/login', "Login");
    Route::get('/register', "Register");
});

Route::group( ['prefix'=>'','namespace' => "Controllers" ],function(){
    // Route::get('/','WebsiteController@home');
    // Route::get('/category_product','WebsiteController@category_product');
    Route::get('/website','WebsiteController@website');
});

Route::get('/dashboard', function () {
    return view('backend.dashboard');
})->name('dashboard');

Route::get('/test', function () {
    // return view('test');
    // dd(request()->getClientIp());
    $user = \App\Models\User::find(1);
    dd(
        $user->roles()->get()->toArray(),
        $user->permissions()->get()->toArray(),
    );
});

Route::get('/data-reload', function () {
    \Illuminate\Support\Facades\Artisan::call('migrate:fresh', ['--seed' => true]);
    \Illuminate\Support\Facades\Artisan::call('migrate', ['--path' => 'vendor/laravel/passport/database/migrations', '--force' => true]);
    \Illuminate\Support\Facades\Artisan::call('passport:install');
    return redirect()->back();
});


