<?php

namespace App\Http\Controllers\AppApi;

use App\Http\Controllers\Controller;
use App\Models\Product\Category;
use App\Models\Product\Product;
use App\Models\Website\Banner;
use Illuminate\Http\Request;

class CommonController extends Controller
{
    public function top_categories()
    {
        $categories = Category::where('is_top_category', 1)
            ->select(['category_image', 'id', 'name', 'name_english', 'slug'])
            ->where('status', 1)
            ->get();
        return response()->json($categories);
    }

    public function banners()
    {
        $data = Banner::select(['id', 'image', 'title'])
            ->where('status', 1)
            ->where('show', 1)
            ->orderBy('serial', 'ASC')
            ->get();
        return response()->json($data);
    }

    public function products()
    {
        $data = Product::select([
            'id', 'product_name', 'is_top_product',
            'cost', 'sales_price', 'stock_alert_qty',
            'slug', "thumb_image",
        ])
            ->where('status', 1)
            ->orderBy('is_top_product', 'ASC')
            ->paginate(4);
        return response()->json($data);
    }
}
