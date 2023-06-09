<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return [$request->user(), auth()->user()];
});

Route::middleware('cors')->get('/t',function(){
    return ['ok'];
});

Route::group(
    ['prefix' => 'v1', 'namespace' => 'Controllers'],
    function () {
        // Route::group(['prefix' => '/user', 'middleware' => ['guest:api']], function () {
        Route::group(['prefix' => '/user', 'middleware' => ['guest:api']], function () {
            Route::post('/get-token', 'Auth\ApiLoginController@get_token');
            Route::post('/api-login', 'Auth\ApiLoginController@login');
            Route::post('/api-register', 'Auth\ApiLoginController@register');
            Route::post('/forget-mail', 'Auth\ApiLoginController@forget_mail');
            Route::post('/logout-from-all-devices', 'Auth\ApiLoginController@logout_from_all_devices');
        });

        Route::group(['middleware' => ['auth:api']], function () {
            Route::group(['prefix' => 'user'], function () {
                Route::get('/auth-check', 'Auth\ApiLoginController@auth_check');
                Route::post('/check-code', 'Auth\ApiLoginController@check_code');

                Route::post('/api-logout', 'Auth\ApiLoginController@logout');
                Route::post('/user_info', 'Auth\ApiLoginController@user_info');
                Route::post('/check-auth', 'Auth\ApiLoginController@check_auth');
                Route::post('/user_update', 'Auth\ApiLoginController@user_update');
                Route::post('/update_password', 'Auth\ApiLoginController@update_password');
                Route::post('/find-user-info', 'Auth\ApiLoginController@find_user_info');
            });

            Route::group(['prefix' => 'user'], function () {
                Route::post('/update-profile', 'Auth\ProfileController@update_profile');
                Route::get('/all', 'Auth\UserController@all');
                Route::get('/{id}', 'Auth\UserController@show');
                Route::post('/store', 'Auth\UserController@store');
                Route::post('/canvas-store', 'Auth\UserController@canvas_store');
                Route::post('/update', 'Auth\UserController@update');
                Route::post('/soft-delete', 'Auth\UserController@soft_delete');
                Route::post('/destroy', 'Auth\UserController@destroy');
                Route::post('/restore', 'Auth\UserController@restore');
                Route::post('/bulk-import', 'Auth\UserController@bulk_import');
            });

            Route::group(['prefix' => 'app'], function () {
                Route::get('/top-categories', 'AppApi\CommonController@top_categories');
                Route::get('/banners', 'AppApi\CommonController@banners');
                Route::get('/products', 'AppApi\CommonController@products');
            });

            Route::group(['prefix' => 'user-role'], function () {
                Route::get('/all', 'Auth\UserRoleController@all');
                Route::get('/{id}', 'Auth\UserRoleController@show');
                Route::post('/store', 'Auth\UserRoleController@store');
                Route::post('/canvas-store', 'Auth\UserRoleController@canvas_store');
                Route::post('/update', 'Auth\UserRoleController@update');
                Route::post('/canvas-update', 'Auth\UserRoleController@canvas_update');
                Route::post('/soft-delete', 'Auth\UserRoleController@soft_delete');
                Route::post('/destroy', 'Auth\UserRoleController@destroy');
                Route::post('/restore', 'Auth\UserRoleController@restore');
                Route::post('/bulk-import', 'Auth\UserRoleController@bulk_import');
            });

            Route::group(['prefix' => 'contact-message'], function () {
                Route::get('/all', 'Admin\ContactMessageController@all');
                Route::get('/{id}', 'Admin\ContactMessageController@show');
                Route::post('/store', 'Admin\ContactMessageController@store');
                Route::post('/canvas-store', 'Admin\ContactMessageController@canvas_store');
                Route::post('/update', 'Admin\ContactMessageController@update');
                Route::post('/canvas-update', 'Admin\ContactMessageController@canvas_update');
                Route::post('/soft-delete', 'Admin\ContactMessageController@soft_delete');
                Route::post('/destroy', 'Admin\ContactMessageController@destroy');
                Route::post('/restore', 'Admin\ContactMessageController@restore');
                Route::post('/bulk-import', 'Admin\ContactMessageController@bulk_import');
            });

            Route::group(['prefix' => 'production'], function () {
                Route::group(['prefix' => 'product'], function () {
                    Route::get('/all', 'Production\Product\ProductController@all');
                    Route::get('/{id}', 'Production\Product\ProductController@show');
                });

                Route::group(['prefix' => 'production'], function () {
                    Route::get('/all', 'Production\ProductionController@all');
                    Route::post('/store', 'Production\ProductionController@store');
                    Route::post('/store-cost', 'Production\ProductionController@store_cost');
                    Route::post('/canvas-store', 'Production\ProductionController@canvas_store');
                    Route::post('/update', 'Production\ProductionController@update');
                    Route::post('/add-to-top-product', 'Production\ProductionController@add_to_top_product');
                    Route::post('/delete-related-image', 'Production\ProductionController@delete_related_image');
                    Route::post('/canvas-update', 'Production\ProductionController@canvas_update');
                    Route::post('/soft-delete', 'Production\ProductionController@soft_delete');
                    Route::post('/destroy', 'Production\ProductionController@destroy');
                    Route::post('/restore', 'Production\ProductionController@restore');
                    Route::post('/bulk-import', 'Production\ProductionController@bulk_import');
                    Route::get('/{id}', 'Production\ProductionController@show');
                });

                Route::group(['prefix' => 'paper'], function () {
                    Route::get('/all', 'Production\Supplier\PaperController@all');
                    Route::post('/store', 'Production\Supplier\PaperController@store');
                    Route::post('/canvas-store', 'Production\Supplier\PaperController@canvas_store');
                    Route::post('/update', 'Production\Supplier\PaperController@update');
                    Route::post('/add-to-top-product', 'Production\Supplier\PaperController@add_to_top_product');
                    Route::post('/delete-related-image', 'Production\Supplier\PaperController@delete_related_image');
                    Route::post('/canvas-update', 'Production\Supplier\PaperController@canvas_update');
                    Route::post('/soft-delete', 'Production\Supplier\PaperController@soft_delete');
                    Route::post('/destroy', 'Production\Supplier\PaperController@destroy');
                    Route::post('/restore', 'Production\Supplier\PaperController@restore');
                    Route::post('/bulk-import', 'Production\Supplier\PaperController@bulk_import');
                    Route::get('/{id}', 'Production\Supplier\PaperController@show');
                });

                Route::group(['prefix' => 'print'], function () {
                    Route::get('/all', 'Production\Supplier\PrintController@all');
                    Route::post('/store', 'Production\Supplier\PrintController@store');
                    Route::post('/canvas-store', 'Production\Supplier\PrintController@canvas_store');
                    Route::post('/update', 'Production\Supplier\PrintController@update');
                    Route::post('/add-to-top-product', 'Production\Supplier\PrintController@add_to_top_product');
                    Route::post('/delete-related-image', 'Production\Supplier\PrintController@delete_related_image');
                    Route::post('/canvas-update', 'Production\Supplier\PrintController@canvas_update');
                    Route::post('/soft-delete', 'Production\Supplier\PrintController@soft_delete');
                    Route::post('/destroy', 'Production\Supplier\PrintController@destroy');
                    Route::post('/restore', 'Production\Supplier\PrintController@restore');
                    Route::post('/bulk-import', 'Production\Supplier\PrintController@bulk_import');
                    Route::get('/{id}', 'Production\Supplier\PrintController@show');
                });

                Route::group(['prefix' => 'binding'], function () {
                    Route::get('/all', 'Production\Supplier\BindingController@all');
                    Route::post('/store', 'Production\Supplier\BindingController@store');
                    Route::post('/canvas-store', 'Production\Supplier\BindingController@canvas_store');
                    Route::post('/update', 'Production\Supplier\BindingController@update');
                    Route::post('/add-to-top-product', 'Production\Supplier\BindingController@add_to_top_product');
                    Route::post('/delete-related-image', 'Production\Supplier\BindingController@delete_related_image');
                    Route::post('/canvas-update', 'Production\Supplier\BindingController@canvas_update');
                    Route::post('/soft-delete', 'Production\Supplier\BindingController@soft_delete');
                    Route::post('/destroy', 'Production\Supplier\BindingController@destroy');
                    Route::post('/restore', 'Production\Supplier\BindingController@restore');
                    Route::post('/bulk-import', 'Production\Supplier\BindingController@bulk_import');
                    Route::get('/{id}', 'Production\Supplier\BindingController@show');
                });

                Route::group(['prefix' => 'designer'], function () {
                    Route::get('/all', 'Production\Supplier\DesignerController@all');
                    Route::post('/store', 'Production\Supplier\DesignerController@store');
                    Route::post('/canvas-store', 'Production\Supplier\DesignerController@canvas_store');
                    Route::post('/update', 'Production\Supplier\DesignerController@update');
                    Route::post('/add-to-top-product', 'Production\Supplier\DesignerController@add_to_top_product');
                    Route::post('/delete-related-image', 'Production\Supplier\DesignerController@delete_related_image');
                    Route::post('/canvas-update', 'Production\Supplier\DesignerController@canvas_update');
                    Route::post('/soft-delete', 'Production\Supplier\DesignerController@soft_delete');
                    Route::post('/destroy', 'Production\Supplier\DesignerController@destroy');
                    Route::post('/restore', 'Production\Supplier\DesignerController@restore');
                    Route::post('/bulk-import', 'Production\Supplier\DesignerController@bulk_import');
                    Route::get('/{id}', 'Production\Supplier\DesignerController@show');
                });
            });

            Route::group(['prefix' => 'accounts'], function () {
                Route::get('/all', 'Admin\TransactionAccountController@accounts');
            });

            Route::group(['prefix' => 'admin'], function () {

                Route::group(['prefix' => 'writer'], function () {
                    Route::get('/all', 'Admin\Product\WriterController@all');
                    Route::post('/store', 'Admin\Product\WriterController@store');
                    Route::post('/canvas-store', 'Admin\Product\WriterController@canvas_store');
                    Route::post('/update', 'Admin\Product\WriterController@update');
                    Route::post('/add-to-top-product', 'Admin\Product\WriterController@add_to_top_product');
                    Route::post('/delete-related-image', 'Admin\Product\WriterController@delete_related_image');
                    Route::post('/canvas-update', 'Admin\Product\WriterController@canvas_update');
                    Route::post('/soft-delete', 'Admin\Product\WriterController@soft_delete');
                    Route::post('/destroy', 'Admin\Product\WriterController@destroy');
                    Route::post('/restore', 'Admin\Product\WriterController@restore');
                    Route::post('/bulk-import', 'Admin\Product\WriterController@bulk_import');
                    Route::get('/{id}', 'Admin\Product\WriterController@show');
                });

                Route::group(['prefix' => 'translator'], function () {
                    Route::get('/all', 'Admin\Product\TranslatorController@all');
                    Route::post('/store', 'Admin\Product\TranslatorController@store');
                    Route::post('/canvas-store', 'Admin\Product\TranslatorController@canvas_store');
                    Route::post('/update', 'Admin\Product\TranslatorController@update');
                    Route::post('/add-to-top-product', 'Admin\Product\TranslatorController@add_to_top_product');
                    Route::post('/delete-related-image', 'Admin\Product\TranslatorController@delete_related_image');
                    Route::post('/canvas-update', 'Admin\Product\TranslatorController@canvas_update');
                    Route::post('/soft-delete', 'Admin\Product\TranslatorController@soft_delete');
                    Route::post('/destroy', 'Admin\Product\TranslatorController@destroy');
                    Route::post('/restore', 'Admin\Product\TranslatorController@restore');
                    Route::post('/bulk-import', 'Admin\Product\TranslatorController@bulk_import');
                    Route::get('/{id}', 'Admin\Product\TranslatorController@show');
                });

                Route::group(['prefix' => 'product'], function () {
                    Route::get('/all', 'Admin\Product\ProductController@all');
                    Route::post('/store', 'Admin\Product\ProductController@store');
                    Route::post('/store-discount', 'Admin\Product\ProductController@store_discount');
                    Route::post('/canvas-store', 'Admin\Product\ProductController@canvas_store');
                    Route::post('/update', 'Admin\Product\ProductController@update');
                    Route::post('/add-to-top-product', 'Admin\Product\ProductController@add_to_top_product');
                    Route::post('/delete-related-image', 'Admin\Product\ProductController@delete_related_image');
                    Route::post('/canvas-update', 'Admin\Product\ProductController@canvas_update');
                    Route::post('/soft-delete', 'Admin\Product\ProductController@soft_delete');
                    Route::post('/destroy', 'Admin\Product\ProductController@destroy');
                    Route::post('/restore', 'Admin\Product\ProductController@restore');
                    Route::post('/bulk-import', 'Admin\Product\ProductController@bulk_import');
                    Route::get('/{id}', 'Admin\Product\ProductController@show');
                });

                Route::group(['prefix' => 'order'], function () {
                    Route::post('/store-order', 'Admin\Order\AdminOrderController@store_order');
                    Route::post('/update-order', 'Admin\Order\AdminOrderController@update_order');
                    Route::post('/update-order-status', 'Admin\Order\AdminOrderController@update_order_status');
                    Route::post('/receive-due', 'Admin\Order\AdminOrderController@receive_due');
                    Route::post('/delete-payment', 'Admin\Order\AdminOrderController@delete_payment');

                    Route::get('/all', 'Admin\Order\AdminOrderManagementController@all');
                    Route::post('/store', 'Admin\Order\AdminOrderManagementController@store');
                    Route::post('/canvas-store', 'Admin\Order\AdminOrderManagementController@canvas_store');
                    Route::post('/update', 'Admin\Order\AdminOrderManagementController@update');
                    Route::post('/canvas-update', 'Admin\Order\AdminOrderManagementController@canvas_update');
                    Route::post('/soft-delete', 'Admin\Order\AdminOrderManagementController@soft_delete');
                    Route::post('/destroy', 'Admin\Order\AdminOrderManagementController@destroy');
                    Route::post('/restore', 'Admin\Order\AdminOrderManagementController@restore');
                    Route::post('/bulk-import', 'Admin\Order\AdminOrderManagementController@bulk_import');
                    Route::get('/all-json', 'Admin\Order\AdminOrderManagementController@all_json');
                    Route::post('/check-exists', 'Admin\Order\AdminOrderManagementController@check_exists');
                    Route::post('/add-to-top-cat', 'Admin\Order\AdminOrderManagementController@add_to_top_cat');
                    Route::get('/{id}', 'Admin\Order\AdminOrderManagementController@show');
                });

                Route::group(['prefix' => 'payment-request'], function () {
                    Route::post('/approve', 'Admin\Order\PaymentRequestController@approve');

                    Route::get('/all', 'Admin\Order\PaymentRequestController@all');
                    Route::post('/store', 'Admin\Order\PaymentRequestController@store');
                    Route::post('/canvas-store', 'Admin\Order\PaymentRequestController@canvas_store');
                    Route::post('/update', 'Admin\Order\PaymentRequestController@update');
                    Route::post('/add-to-top-product', 'Admin\Order\PaymentRequestController@add_to_top_product');
                    Route::post('/delete-related-image', 'Admin\Order\PaymentRequestController@delete_related_image');
                    Route::post('/canvas-update', 'Admin\Order\PaymentRequestController@canvas_update');
                    Route::post('/soft-delete', 'Admin\Order\PaymentRequestController@soft_delete');
                    Route::post('/destroy', 'Admin\Order\PaymentRequestController@destroy');
                    Route::post('/restore', 'Admin\Order\PaymentRequestController@restore');
                    Route::post('/bulk-import', 'Admin\Order\PaymentRequestController@bulk_import');
                    Route::get('/{id}', 'Admin\Order\PaymentRequestController@show');
                });

                Route::group(['prefix' => 'settings'], function () {
                    Route::post('/set/{id}', 'Admin\SettingController@set');
                    Route::get('/get/{key}', 'Admin\SettingController@get');
                    Route::post('/get-by-keys', 'Admin\SettingController@get_by_keys');
                });
            });

            Route::group(['prefix' => 'product_stock'], function () {
                Route::get('/all', 'Admin\Product\ProductStockController@all');
                Route::post('/store', 'Admin\Product\ProductStockController@store');
                Route::post('/canvas-store', 'Admin\Product\ProductStockController@canvas_store');
                Route::post('/update', 'Admin\Product\ProductStockController@update');
                Route::post('/canvas-update', 'Admin\Product\ProductStockController@canvas_update');
                Route::post('/soft-delete', 'Admin\Product\ProductStockController@soft_delete');
                Route::post('/destroy', 'Admin\Product\ProductStockController@destroy');
                Route::post('/restore', 'Admin\Product\ProductStockController@restore');
                Route::post('/bulk-import', 'Admin\Product\ProductStockController@bulk_import');
                Route::get('/{id}', 'Admin\Product\ProductStockController@show');
            });

            Route::group(['prefix' => 'category'], function () {
                Route::get('/all', 'Admin\Product\CategoryController@all');
                Route::post('/store', 'Admin\Product\CategoryController@store');
                Route::post('/canvas-store', 'Admin\Product\CategoryController@canvas_store');
                Route::post('/update', 'Admin\Product\CategoryController@update');
                Route::post('/canvas-update', 'Admin\Product\CategoryController@canvas_update');
                Route::post('/soft-delete', 'Admin\Product\CategoryController@soft_delete');
                Route::post('/destroy', 'Admin\Product\CategoryController@destroy');
                Route::post('/restore', 'Admin\Product\CategoryController@restore');
                Route::post('/bulk-import', 'Admin\Product\CategoryController@bulk_import');
                Route::get('/all-json', 'Admin\Product\CategoryController@all_json');
                Route::get('/{id}/products', 'Admin\Product\CategoryController@products');
                Route::post('/check-exists', 'Admin\Product\CategoryController@check_exists');
                Route::post('/add-to-top-cat', 'Admin\Product\CategoryController@add_to_top_cat');
                Route::get('/{id}', 'Admin\Product\CategoryController@show');
            });

            Route::get('/all-products', 'Branch\BranchOrderController@all_products');

            Route::group(['prefix' => 'branch'], function () {
                Route::post('/store-order', 'Branch\BranchOrderController@store_order');
                Route::post('/update-order', 'Branch\BranchOrderController@update_order');
                Route::post('/pay-due', 'Branch\BranchOrderController@pay_due');
                Route::post('/delete-payment', 'Branch\BranchOrderController@delete_payment');

                Route::group(['prefix' => 'order'], function () {
                    Route::get('/all', 'Branch\BranchOrderManagementController@all');
                    Route::post('/store', 'Branch\BranchOrderManagementController@store');
                    Route::post('/canvas-store', 'Branch\BranchOrderManagementController@canvas_store');
                    Route::post('/update', 'Branch\BranchOrderManagementController@update');
                    Route::post('/canvas-update', 'Branch\BranchOrderManagementController@canvas_update');
                    Route::post('/soft-delete', 'Branch\BranchOrderManagementController@soft_delete');
                    Route::post('/destroy', 'Branch\BranchOrderManagementController@destroy');
                    Route::post('/restore', 'Branch\BranchOrderManagementController@restore');
                    Route::post('/bulk-import', 'Branch\BranchOrderManagementController@bulk_import');
                    Route::get('/all-json', 'Branch\BranchOrderManagementController@all_json');
                    Route::post('/check-exists', 'Branch\BranchOrderManagementController@check_exists');
                    Route::post('/add-to-top-cat', 'Branch\BranchOrderManagementController@add_to_top_cat');
                    Route::get('/{id}', 'Branch\BranchOrderManagementController@show');
                });
            });
        });
    }
);
