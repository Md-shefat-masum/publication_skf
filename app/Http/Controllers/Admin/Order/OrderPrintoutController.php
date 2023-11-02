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
        // $order->details = $order->order_details()->get();
        $order->details = OrderDetails::take(60)->get();
        // dd($order);
        return view('backend.order_prints.sales_invoice',compact('order'));
    }
}
