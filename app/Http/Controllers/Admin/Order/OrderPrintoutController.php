<?php

namespace App\Http\Controllers\Admin\Order;

use App\Http\Controllers\Controller;
use App\Models\Order\Order;
use App\Models\Order\OrderDetails;
use Illuminate\Http\Request;

class OrderPrintoutController extends Controller
{
    public function sales_invoice(Order $order)
    {
        $order->details = $order->order_details()->get();
        $order->user = $order->user()->first();
        $order->paid = $order->order_payments()->where('approved',1)->sum('amount');
        // $order->details = OrderDetails::take(60)->get();
        // dd($order->toArray());
        return view('backend.order_prints.sales_invoice',compact('order'));
    }
}
