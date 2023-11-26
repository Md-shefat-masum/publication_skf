<?php

namespace App\Http\Controllers\AtaGlance;

use App\Http\Controllers\Controller;
use App\Models\Order\Order;
use Illuminate\Http\Request;

class AdminAtaGlanceController extends Controller
{
    public $analytics = [
        "total_order" => null,
        "pending_order" => null,
        "accepted_order" => null,
        "processing_order" => null,
        "delivered_order" => null,
        "canceled_order" => null,
    ];

    public $accounts_analytics = [
        "total_bill" => null,
        "total_paid" => null,
        "total_due" => null,
    ];

    public function analytics()
    {
        foreach ($this->analytics as $title=>$value) {
            $this->analytics[$title] = number_format($this->get_analytics($title) );
        }

        foreach ($this->accounts_analytics as $title=>$value) {
            $this->analytics[$title] = number_format($this->get_analytics($title) );
        }

        return response()->json([
            "anatytics" => $this->analytics,
            "keys" => array_keys($this->analytics),
            'account_keys' => array_keys($this->accounts_analytics),
        ]);
    }

    public function get_analytics($key)
    {
        switch ($key) {
            case 'total_order':
                return Order::count();
                break;

            case 'pending_order':
                return Order::where('order_status','pending')->count();
                break;

            case 'accepted_order':
                return Order::where('order_status','accepted')->count();
                break;

            case 'processing_order':
                return Order::where('order_status','processing')->count();
                break;

            case 'delivered_order':
                return Order::where('order_status','delivered')->count();
                break;

            case 'canceled_order':
                return Order::where('order_status','canceled')->count();
                break;

            case 'total_bill':
                return Order::where('order_status','!=','canceled')->sum('total_price');
                break;

            case 'total_paid':
                return Order::sum('total_paid');
                break;

            case 'total_due':
                $bill= Order::where('order_status','!=','canceled')->sum('total_price');
                $due= Order::sum('total_paid');
                return $bill - $due;
                break;

            default:
                return 0;
                break;
        }
    }
}

