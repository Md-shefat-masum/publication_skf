<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Order\OrderDetails;
use App\Models\Product\Product;
use App\Models\Production\Production;
use Carbon\Carbon;
use Illuminate\Http\Request;

class AdminCommonApiController extends Controller
{
    public function all_stock_out_products()
    {
        $products = Product::select(Product::$common_selected_fields)->where('is_in_stock', 0)->get();
        return response()->json($products);
    }

    public function all_stock_in_products()
    {
        $products = Product::select(Product::$common_selected_fields)->where('is_in_stock', 1)->get();
        return response()->json($products);
    }

    public function product_report()
    {
        $from = Carbon::parse(request()->from);
        $to = Carbon::parse(request()->to);

        $formated_from = $from->copy()->toDateString();
        $formated_to = $to->copy()->toDateString();

        $diff = $from->diffInMonths($to);
        $report = [];
        $products = Product::select(Product::$common_selected_fields)->get();
        foreach ($products as $product) {
            $temp = [];
            $temp["product"] = $product->product_name;

            $temp["total"]["production"] = Production::where('product_id', $product->id)
                ->whereBetween('created_at', [$formated_from, $formated_to])
                ->where('is_complete', 1)
                ->sum('final_print_qty');;

            $temp["total"]["sales"] = OrderDetails::query()
                ->where('product_id', $product->id)
                ->whereBetween('created_at', [$formated_from, $formated_to])
                ->sum('qty');;

            for ($month_no = 0; $month_no <= $diff; $month_no++) {
                $get_month = $to->copy()->subMonthNoOverflow($month_no)->format('m');
                $get_year = $to->copy()->subMonthNoOverflow($month_no)->format('Y');
                $index = $to->copy()->subMonthNoOverflow($month_no)->format('M y');

                $temp[$index]["sales"] = OrderDetails::query()
                    ->where('product_id', $product->id)
                    ->whereMonth('created_at', $get_month)
                    ->whereYear('created_at', $get_year)
                    ->sum('qty');

                $temp[$index]["production"] = Production::where('product_id', $product->id)
                    ->whereYear('created_at', $get_year)
                    ->whereMonth('created_at', $get_month)
                    ->where('is_complete', 1)
                    ->sum('final_print_qty');
            }
            $report[] = $temp;
        }

        return $report;
    }
}
