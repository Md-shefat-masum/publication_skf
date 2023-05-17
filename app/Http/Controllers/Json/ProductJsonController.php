<?php

namespace App\Http\Controllers\Json;

use App\Http\Controllers\Controller;
use App\Models\Product\Product;
use App\Models\Product\ProductDiscount;
use Carbon\Carbon;
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
        foreach ($products->items() as $product) {
            $discount = ProductDiscount::select([
                "id",
                "product_id",
                "main_price",
                "parcent_discount",
                "flat_discount",
                "expire_date",
            ])
                ->where('product_id', $product->id)
                ->whereDate('expire_date', '>', Carbon::today()->toDateString())
                ->orderBy('id', "DESC")
                ->first();
            if ($discount) {
                if ($discount->flat_discount) {
                    $product->discount_amount = $discount->flat_discount;
                    $product->discount_percent = round(100 * $discount->flat_discount / $discount->main_price);
                    $product->discount_price =  $discount->main_price - $discount->flat_discount;
                }
                if ($discount->parcent_discount) {
                    $discount_amount = round($discount->main_price * $discount->parcent_discount / 100);
                    $product->discount_amount = $discount_amount;
                    $product->discount_percent  = $discount->parcent_discount;
                    $product->discount_price =  $discount->main_price - $discount_amount;
                }
            } else {
                $product->discount_amount = 0;
                $product->discount_percent = 0;
                $product->discount_price = 0;
            }
        }
        // dd($products->toArray());
        return $products;
    }
}
