<?php

namespace App\Http\Controllers\Json;

use App\Http\Controllers\Controller;
use App\Models\Product\Product;
use App\Models\Product\ProductDiscount;
use Carbon\Carbon;
use Illuminate\Database\Query\Builder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductJsonController extends Controller
{
    public function products(Request $request)
    {
        $paginate = 10;
        $query = Product::select([
            "id",
            "product_name",
            "product_url",
            "sales_price",
            "thumb_image",
            "status",
            "slug",
        ])
            ->where('status', 1);

        if ($request->has('category') && (int) $request->category > 0) {
            $category_id = $request->category;
            $query->whereExists(function (Builder $query) use($category_id){
                $query->select(DB::raw(1))
                    ->from('category_product')
                    ->whereColumn('category_product.product_id', 'products.id')
                    ->where('category_product.category_id',$category_id);
            });
        }

        if ($request->has('paginate') && (int) $request->category > 0) {
            $paginate = $request->paginate;
        }

        $query->orderBy('id', 'DESC');
        $products = $query->paginate($paginate);
        // dd($products->toArray());
        return $products;
    }
}
