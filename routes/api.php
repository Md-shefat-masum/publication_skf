<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return [$request->user(), auth()->user()];
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
            Route::post('/login-from-almari', 'Auth\ApiLoginController@login_almari');
        });

        Route::group(['middleware' => ['auth:api']], function () {
            Route::group(['prefix' => 'app'], function () {
                Route::get('/categories', 'AppApi\CommonController@categories');
                Route::get('/top-products', 'AppApi\CommonController@top_products');
                Route::get('/all-products', 'AppApi\CommonController@all_products');

                Route::get('/top-categories', 'AppApi\CommonController@top_categories');
                Route::get('/banners', 'AppApi\CommonController@banners');
                Route::get('/products', 'AppApi\CommonController@products');

                Route::post('/store-order', 'AppApi\CommonController@store_order');
                Route::post('/profile-update', 'AppApi\CommonController@profile_update');

                Route::get('/orders','AppApi\CommonController@orders');
                Route::get('/orders/dues','AppApi\CommonController@dues');

                Route::get('/payments','AppApi\CommonController@payments');
                Route::post('/payment','AppApi\CommonController@payment');

                Route::get('/orders/{id}','AppApi\CommonController@order');
            });

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

            Route::group(['prefix' => 'task'], function () {
                Route::get('/varients', 'Task\TaskController@varients');
                Route::get('/super-admin-get-all', 'Task\TaskController@super_admin_get_all');
                Route::get('/get_all_employee_task', 'Task\TaskController@get_all_employee_task');
                Route::post('/update_employee_task', 'Task\TaskController@employeeUpdate');
                Route::post('/save-varient-values', 'Task\TaskController@save_varient_values');
                Route::post('/new-varient', 'Task\TaskController@save_new_varient');
                Route::post('/new-task', 'Task\TaskController@save_new_task');
                Route::get('/complete/{task}', 'Task\TaskController@complete');
                Route::post('/update-task', 'Task\TaskController@update');
                Route::post('/delete-task', 'Task\TaskController@delete');
                Route::get('/incomplete-task-count', 'Task\TaskController@incomplete_task_count');
                Route::get('/{task}', 'Task\TaskController@get_task');
            });

            Route::group(['prefix' => 'user'], function () {
                Route::post('/update-profile', 'Auth\ProfileController@update_profile');
                Route::get('/all', 'Auth\UserController@all');
                Route::get('/all-employee', 'Auth\UserController@all_employee');
                Route::post('/store', 'Auth\UserController@store');
                Route::post('/canvas-store', 'Auth\UserController@canvas_store');
                Route::post('/update', 'Auth\UserController@update');
                Route::post('/soft-delete', 'Auth\UserController@soft_delete');
                Route::post('/destroy', 'Auth\UserController@destroy');
                Route::post('/restore', 'Auth\UserController@restore');
                Route::post('/bulk-import', 'Auth\UserController@bulk_import');
                Route::get('/{id}', 'Auth\UserController@show');
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
                    Route::post('/delete-related-image', 'Production\Supplier\PaperController@delete_related_image');
                    Route::post('/canvas-update', 'Production\Supplier\PaperController@canvas_update');
                    Route::post('/soft-delete', 'Production\Supplier\PaperController@soft_delete');
                    Route::post('/destroy', 'Production\Supplier\PaperController@destroy');
                    Route::post('/restore', 'Production\Supplier\PaperController@restore');
                    Route::post('/bulk-import', 'Production\Supplier\PaperController@bulk_import');
                    Route::get('/{id}', 'Production\Supplier\PaperController@show');
                });


                Route::group(['prefix' => 'paper-stock'], function () {
                    Route::get('/all', 'Production\Supplier\PaperStockController@all');
                    Route::post('/store', 'Production\Supplier\PaperStockController@store');
                    Route::post('/canvas-store', 'Production\Supplier\PaperStockController@canvas_store');
                    Route::post('/update', 'Production\Supplier\PaperStockController@update');
                    Route::post('/delete-related-image', 'Production\Supplier\PaperStockController@delete_related_image');
                    Route::post('/canvas-update', 'Production\Supplier\PaperStockController@canvas_update');
                    Route::post('/soft-delete', 'Production\Supplier\PaperStockController@soft_delete');
                    Route::post('/destroy', 'Production\Supplier\PaperStockController@destroy');
                    Route::post('/restore', 'Production\Supplier\PaperStockController@restore');
                    Route::post('/bulk-import', 'Production\Supplier\PaperStockController@bulk_import');
                    Route::get('/{id}', 'Production\Supplier\PaperStockController@show');
                });

                Route::group(['prefix' => 'print'], function () {
                    Route::get('/all', 'Production\Supplier\PrintController@all');
                    Route::post('/store', 'Production\Supplier\PrintController@store');
                    Route::post('/canvas-store', 'Production\Supplier\PrintController@canvas_store');
                    Route::post('/update', 'Production\Supplier\PrintController@update');
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
                Route::get('/all', 'Admin\TransactionAccountController@setting_accounts');
                Route::get('/main-accounts', 'Admin\TransactionAccountController@accounts');
            });

            Route::get('/all-dues', 'Admin\Order\PaymentRequestController@all_dues');

            Route::group(['prefix' => 'admin'], function () {
                Route::get('/at-a-glance','AtaGlance\AdminAtaGlanceController@analytics');

                Route::group(['prefix' => 'writer'], function () {
                    Route::get('/all', 'Admin\Product\WriterController@all');
                    Route::post('/store', 'Admin\Product\WriterController@store');
                    Route::post('/canvas-store', 'Admin\Product\WriterController@canvas_store');
                    Route::post('/update', 'Admin\Product\WriterController@update');
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
                    Route::post('/store-cost', 'Production\ProductionController@store_cost');
                    Route::post('/store-discount', 'Admin\Product\ProductController@store_discount');
                    Route::post('/canvas-store', 'Admin\Product\ProductController@canvas_store');
                    Route::post('/update', 'Admin\Product\ProductController@update');
                    Route::post('/add-to-top-product', 'Admin\Product\ProductController@add_to_top_product');
                    Route::post('/add-to-public', 'Admin\Product\ProductController@add_to_public');
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
                    Route::post('/approve-payment', 'Admin\Order\AdminOrderController@approve_payment');
                    Route::post('/generate-sales-id', 'Admin\Order\AdminOrderController@generate_sales_id');

                    Route::post('/check-orders-with-payments', 'Admin\Order\PaymentRequestController@check_orders_with_payments');
                    Route::post('/save-orders-with-payments', 'Admin\Order\PaymentRequestController@save_orders_with_payments');

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
                    Route::post('/payment-account-set', 'Admin\SettingController@payment_account_set');
                    Route::get('/get/{key}', 'Admin\SettingController@get');
                    Route::post('/get-by-keys', 'Admin\SettingController@get_by_keys');
                    Route::get('/get-payment-accounts', 'Admin\SettingController@get_payment_accounts');
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
                Route::post('/add-to-is-public', 'Admin\Product\CategoryController@add_to_public');
                Route::get('/{id}', 'Admin\Product\CategoryController@show');
            });

            Route::get('/all-products', 'Branch\BranchOrderController@all_products');

            Route::group(['prefix' => 'branch'], function () {
                Route::post('/store-order', 'Branch\BranchOrderController@store_order');
                Route::post('/update-order', 'Branch\BranchOrderController@update_order');
                Route::post('/pay-due', 'Branch\BranchOrderController@pay_due');
                Route::post('/delete-payment', 'Branch\BranchOrderController@delete_payment');
                Route::get('/at-a-glance','AtaGlance\BranchAtaGlanceController@analytics');

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

            Route::group(['prefix' => 'accountant'], function () {

                Route::group(['prefix' => 'report'], function () {
                    Route::get('/ledger','Accountant\ReportController@ledger');
                    Route::get('/statements','Accountant\ReportController@statements');
                    Route::get('/income-expense-closing-in-range','Accountant\ReportController@income_expense_closing_in_range');
                });
                Route::group(['prefix' => 'account-category'], function () {
                    Route::get('/income-expese', 'Accountant\AccountCategoryController@income_and_expense');
                    Route::get('/previous-extra-money', 'Accountant\AccountCategoryController@previous_extra_money');

                    Route::get('/all-income-categories', 'Accountant\AccountCategoryController@all_income_categories');
                    Route::get('/all-expense-categories', 'Accountant\AccountCategoryController@all_expense_categories');

                    Route::get('/all', 'Accountant\AccountCategoryController@all');
                    Route::post('/store', 'Accountant\AccountCategoryController@store');
                    Route::post('/canvas-store', 'Accountant\AccountCategoryController@canvas_store');
                    Route::post('/update', 'Accountant\AccountCategoryController@update');
                    Route::post('/canvas-update', 'Accountant\AccountCategoryController@canvas_update');
                    Route::post('/soft-delete', 'Accountant\AccountCategoryController@soft_delete');
                    Route::post('/destroy', 'Accountant\AccountCategoryController@destroy');
                    Route::post('/restore', 'Accountant\AccountCategoryController@restore');
                    Route::post('/bulk-import', 'Accountant\AccountCategoryController@bulk_import');
                    Route::get('/all-json', 'Accountant\AccountCategoryController@all_json');
                    Route::post('/check-exists', 'Accountant\AccountCategoryController@check_exists');
                    Route::post('/add-to-top-cat', 'Accountant\AccountCategoryController@add_to_top_cat');
                    Route::get('/{id}', 'Accountant\AccountCategoryController@show');
                });

                Route::group(['prefix' => 'account-category-type'], function () {
                    Route::get('/all', 'Accountant\AccountCategoryTypeController@all');
                    Route::post('/store', 'Accountant\AccountCategoryTypeController@store');
                    Route::post('/canvas-store', 'Accountant\AccountCategoryTypeController@canvas_store');
                    Route::post('/update', 'Accountant\AccountCategoryTypeController@update');
                    Route::post('/canvas-update', 'Accountant\AccountCategoryTypeController@canvas_update');
                    Route::post('/soft-delete', 'Accountant\AccountCategoryTypeController@soft_delete');
                    Route::post('/destroy', 'Accountant\AccountCategoryTypeController@destroy');
                    Route::post('/restore', 'Accountant\AccountCategoryTypeController@restore');
                    Route::post('/bulk-import', 'Accountant\AccountCategoryTypeController@bulk_import');
                    Route::get('/all-json', 'Accountant\AccountCategoryTypeController@all_json');
                    Route::post('/check-exists', 'Accountant\AccountCategoryTypeController@check_exists');
                    Route::post('/add-to-top-cat', 'Accountant\AccountCategoryTypeController@add_to_top_cat');
                    Route::get('/{id}', 'Accountant\AccountCategoryTypeController@show');
                });

                Route::group(['prefix' => 'account-entry'], function () {
                    Route::get('/all', 'Accountant\AccountEntryController@all');
                    Route::post('/store', 'Accountant\AccountEntryController@store');
                    Route::post('/store/expense', 'Accountant\AccountEntryController@expense');
                    Route::post('/canvas-store', 'Accountant\AccountEntryController@canvas_store');
                    Route::post('/update', 'Accountant\AccountEntryController@update');
                    Route::post('/canvas-update', 'Accountant\AccountEntryController@canvas_update');
                    Route::post('/soft-delete', 'Accountant\AccountEntryController@soft_delete');
                    Route::post('/destroy', 'Accountant\AccountEntryController@destroy');
                    Route::post('/restore', 'Accountant\AccountEntryController@restore');
                    Route::post('/bulk-import', 'Accountant\AccountEntryController@bulk_import');
                    Route::get('/all-json', 'Accountant\AccountEntryController@all_json');
                    Route::post('/check-exists', 'Accountant\AccountEntryController@check_exists');
                    Route::post('/add-to-top-cat', 'Accountant\AccountEntryController@add_to_top_cat');
                    Route::get('/{id}', 'Accountant\AccountEntryController@show');
                });

                Route::group(['prefix' => 'supplier-log'], function () {
                    Route::get('/all', 'Accountant\SupplierLogController@all');
                    Route::post('/store', 'Accountant\SupplierLogController@store');
                    Route::post('/canvas-store', 'Accountant\SupplierLogController@canvas_store');
                    Route::post('/update', 'Accountant\SupplierLogController@update');
                    Route::post('/canvas-update', 'Accountant\SupplierLogController@canvas_update');
                    Route::post('/soft-delete', 'Accountant\SupplierLogController@soft_delete');
                    Route::post('/destroy', 'Accountant\SupplierLogController@destroy');
                    Route::post('/restore', 'Accountant\SupplierLogController@restore');
                    Route::post('/bulk-import', 'Accountant\SupplierLogController@bulk_import');
                    Route::get('/all-json', 'Accountant\SupplierLogController@all_json');
                    Route::post('/check-exists', 'Accountant\SupplierLogController@check_exists');
                    Route::post('/add-to-top-cat', 'Accountant\SupplierLogController@add_to_top_cat');
                    Route::get('/{id}', 'Accountant\SupplierLogController@show');
                });

                Route::group(['prefix' => 'customer'], function () {
                    Route::get('/all', 'Accountant\CustomerController@all');
                    Route::post('/store', 'Accountant\CustomerController@store');
                    Route::post('/canvas-store', 'Accountant\CustomerController@canvas_store');
                    Route::post('/update', 'Accountant\CustomerController@update');
                    Route::post('/canvas-update', 'Accountant\CustomerController@canvas_update');
                    Route::post('/soft-delete', 'Accountant\CustomerController@soft_delete');
                    Route::post('/destroy', 'Accountant\CustomerController@destroy');
                    Route::post('/restore', 'Accountant\CustomerController@restore');
                    Route::post('/bulk-import', 'Accountant\CustomerController@bulk_import');
                    Route::get('/all-json', 'Accountant\CustomerController@all_json');
                    Route::post('/check-exists', 'Accountant\CustomerController@check_exists');
                    Route::post('/add-to-top-cat', 'Accountant\CustomerController@add_to_top_cat');
                    Route::get('/{id}', 'Accountant\CustomerController@show');
                });
            });
        });


        Route::group(['prefix' => 'user'], function () {
            Route::post('/update-profile', 'Auth\ProfileController@update_profile');

            Route::get('/all', 'Auth\UserController@all');
            Route::get('/{id}', 'Auth\UserController@show');
            Route::post('/store', 'Auth\UserController@store');
            Route::post('/canvas-store', 'Auth\UserController@canvas_store');
            Route::post('/update', 'Auth\UserController@update');
            Route::post('/canvas-update', 'Auth\UserController@canvas_update');
            Route::post('/soft-delete', 'Auth\UserController@soft_delete');
            Route::post('/restore', 'Auth\UserController@restore');
            Route::post('/destroy', 'Auth\UserController@destroy');
            Route::post('/bulk-import', 'Auth\UserController@bulk_import');
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
    }
);
