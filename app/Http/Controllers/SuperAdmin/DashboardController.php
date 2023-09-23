<?php

namespace App\Http\Controllers\SuperAdmin;

use App\Http\Controllers\Controller;
use App\Models\Account\AccountLog;
use App\Models\Order\Order;
use App\Models\Order\OrderPayment;
use App\Models\Product\Product;
use App\Models\User\Customer;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;

class DashboardController extends Controller
{
    public function info() {
        $total_customer = Customer::count();
        $total_expense = AccountLog::where('is_expense', 1)->sum('amount');
        $total_products = Product::where('status', 1)->count();
        $total_ecommerce_order = Order::where('order_type', 'ecommerce')->sum('total_paid');

        $data = array();
        $data['income_expense_data'] = [
            'total_customer' => $total_customer,
            'total_expense' => $total_expense,
            'total_ecommerce_order' => $total_ecommerce_order,
            'total_products' => $total_products
        ];

        return response()->json($data, 200);
    }

    public function month_wise_info() {
        
    }
}
