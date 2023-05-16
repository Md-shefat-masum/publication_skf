<?php

namespace App\Http\Controllers\Json;

use App\Http\Controllers\Controller;
use App\Models\Product\Product;
use Illuminate\Http\Request;

class ProductJsonController extends Controller
{
    public function products(Request $request)
    {
        $paginate = 10;
        $query = Product::select([
            "category_product.id",
            "category_product.category_id",
            "category_product.product_id",
            "products.id",
            "products.product_name",
            "products.product_url",
            "products.sales_price",
            "products.thumb_image",
            "products.status",
            "products.slug",
        ])
            ->rightJoin('category_product', 'category_product.product_id', 'products.id')
            ->where('products.status', 1);

        if ($request->has('category') && (int) $request->category > 0) {
            $query->where('category_product.category_id', $request->category);
        }

        if ($request->has('paginate') && (int) $request->category > 0) {
            $paginate = $request->paginate;
        }

        $query->orderBy('products.id', 'DESC');
        $products = $query->paginate($paginate);
        return $products;
    }
}
