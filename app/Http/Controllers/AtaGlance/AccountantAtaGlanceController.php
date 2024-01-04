<?php

namespace App\Http\Controllers\AtaGlance;

use App\Http\Controllers\Controller;
use App\Models\Account\AccountLog;
use App\Models\Account\AccountSupplierLog;
use App\Models\Order\Order;
use App\Models\Order\OrderPayment;
use App\Models\Task\Task;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AccountantAtaGlanceController extends Controller{
    public function analytics()
    {
        $at_a_glance = [
            "life_time_income" => 0,
            "life_time_expense" => 0,
            "net_income" => 0,

            "today_total_income" => 0,
            "today_total_expense" => 0,

            "this_month_total_income" => 0,
            "this_month_total_expense" => 0,

            "this_year_total_income" => 0,
            "this_year_total_expense" => 0,

            "customer_due" => 0,
            "customer_paid" => 0,

            "supplier_bill" => 0,
            "supplier_paid" => 0,
            "supplier_due" => 0,
        ];

        $at_a_glance["life_time_income"] = AccountLog::where('is_income',1)->sum("amount");
        $at_a_glance["life_time_expense"] = AccountLog::where('is_expense',1)->sum("amount");
        $at_a_glance["net_income"] = $at_a_glance["life_time_income"] - $at_a_glance["life_time_expense"];

        $at_a_glance["today_total_income"] = AccountLog::whereDate('date',Carbon::now()->toDateString())->where('is_income',1)->sum("amount");
        $at_a_glance["today_total_expense"] = AccountLog::whereDate('date',Carbon::now()->toDateString())->where('is_expense',1)->sum("amount");

        $at_a_glance["this_month_total_income"] = AccountLog::whereYear('date',Carbon::now()->format('Y'))->whereMonth('date',Carbon::now()->month())->where('is_income',1)->sum("amount");
        $at_a_glance["this_month_total_expense"] = AccountLog::whereYear('date',Carbon::now()->format('Y'))->whereMonth('date',Carbon::now()->month())->where('is_expense',1)->sum("amount");

        $at_a_glance["this_year_total_income"] = AccountLog::whereYear('date',Carbon::now()->format('Y'))->where('is_income',1)->sum("amount");
        $at_a_glance["this_year_total_expense"] = AccountLog::whereYear('date',Carbon::now()->format('Y'))->where('is_expense',1)->sum("amount");

        $total_order = Order::whereNotIn('order_status',['pending','canceled'])->sum('total_price');
        $total_paid = OrderPayment::where('approved',1)->sum('amount');

        $at_a_glance["customer_due"] = $total_order - $total_paid;
        $at_a_glance["customer_paid"] = $total_paid;

        $suplier_bill = AccountSupplierLog::whereIn('payment_type',['opening','bill'])->sum('amount');
        $suplier_paid = AccountSupplierLog::whereIn('payment_type',['payment'])->sum('amount');
        $at_a_glance["supplier_bill"] = $suplier_bill;
        $at_a_glance["supplier_paid"] = $suplier_paid;
        $at_a_glance["supplier_due"] = $suplier_bill - $suplier_paid;

        return $at_a_glance;
    }
}

