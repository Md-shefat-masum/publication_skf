<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Product\Product;
use Illuminate\Http\Request;

class AdminCommonApiController extends Controller
{
    public function all_stock_out_products()
    {
        $products = Product::select(Product::$common_selected_fields)->where('is_in_stock',0)->get();
        return response()->json($products);
    }

    public function all_stock_in_products()
    {
        $products = Product::select(Product::$common_selected_fields)->where('is_in_stock',1)->get();
        return response()->json($products);
    }
}
