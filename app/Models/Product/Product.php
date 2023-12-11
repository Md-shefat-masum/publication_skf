<?php

namespace App\Models\Product;

use App\Models\Order\OrderDetails;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Query\Builder as QueryBuilder;
use Illuminate\Support\Facades\DB;

class Product extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $appends = [
        "discount_info",
        "stock",
        "sales",
        "returns",
        "thumb_image_url",
        "category",
        "categories",
    ];

    static $common_selected_fields = [
        "id",
        "product_name",
        "product_name_english",
        "product_url",
        "is_top_product",
        "cost",
        "sales_price",
        "stock_alert_qty",
        "thumb_image",
        "thumb_alt",
        "search_keywords",
        "is_public",
        "is_branch",
        "custom_fields",
    ];

    public static function boot()
    {
        parent::boot();

        static::creating(function ($data) {
            if (isset($data->product_name_english)) {
                $data->slug = \Illuminate\Support\Str::slug($data->product_name_english);
            } else {
                $data->slug = $data->id . uniqid();
            }
            if (auth()->check()) {
                $data->creator = auth()->user()->id;
            }
        });
    }

    public function getThumbImageUrlAttribute()
    {
        if (count(explode('http', $this->thumb_image)) > 1) {
            return $this->thumb_image;
        } else {
            return url('') . '/' . $this->thumb_image;
        }
    }

    public function getCategoryAttribute()
    {
        $category = $this->categories()->select(['name', 'categories.id'])->first();
        return $category;
    }
    public function getCategoriesAttribute()
    {
        $category = $this->categories()->select(['name', 'categories.id'])->get();
        return $category;
    }
    public function getStockAttribute()
    {
        $stock = ProductStockLog::where('product_id', $this->id)->sum('qty');
        return $stock;
    }
    public function getReturnsAttribute()
    {
        $returns = ProductReturn::where('product_id', $this->id)->sum('qty');
        return $returns;
    }
    public function getSalesAttribute()
    {
        $sales = OrderDetails::where('product_id', $this->id)
            ->whereExists(function ($query) {
                $query->select(DB::raw("*"))
                    ->from('orders')
                    ->whereColumn('orders.id', 'order_details.order_id')
                    ->where('orders.order_status', '!=', 'pending');
            })
            ->sum('qty');
        return $sales;
    }
    public function getDiscountInfoAttribute()
    {
        $discount_amount = 0;
        $discount_percent = 0;
        $discount_price = $this->sales_price;
        $expire_date = 0;
        $is_discount = false;
        $discount = ProductDiscount::select([
            "id",
            "product_id",
            "main_price",
            "parcent_discount",
            "flat_discount",
            "expire_date",
        ])
            ->where('product_id', $this->id)
            ->where('expire_date', '>', Carbon::today()->toDateString())
            ->orderBy('id', "DESC")
            ->first();
        if ($discount) {
            $is_discount = true;
            if ($discount->flat_discount) {
                $discount_amount = $discount->flat_discount;
                $discount_percent = round(100 * $discount->flat_discount / $discount->main_price);
                $discount_price =  $discount->main_price - $discount->flat_discount;
                $expire_date = Carbon::parse($discount->expire_date)->format('Y-m-d H:i');
            } else if ($discount->parcent_discount) {
                $discount_amount = ($discount->main_price * $discount->parcent_discount / 100); // no round price
                $discount_amount = $discount_amount;
                $discount_percent  = $discount->parcent_discount;
                $discount_price =  $discount->main_price - $discount_amount;
                $expire_date = Carbon::parse($discount->expire_date)->format('Y-m-d H:i');
            }
        }

        return (object) [
            "discount_amount" => $discount_amount,
            "discount_percent" => $discount_percent,
            "discount_price" => $discount_price,
            "expire_date" => $expire_date,
            "is_discount" => $is_discount,
        ];
    }

    public function related_image()
    {
        return $this->hasMany(ProductImage::class, 'product_id');
    }

    public function discount()
    {
        return $this->hasOne(ProductDiscount::class)->latest();
    }

    public function categories()
    {
        return $this->belongsToMany(Category::class);
    }

    public function writers()
    {
        return $this->belongsToMany(ProductWriter::class);
    }

    public function translators()
    {
        return $this->belongsToMany(ProductTranslator::class);
    }

    public function stocks()
    {
        return $this->hasMany(ProductStockLog::class, 'product_id');
    }

    public function sales()
    {
        return $this->hasMany(OrderDetails::class, 'product_id');
        // return $this->hasMany(ProductStockLog::class, 'product_id');
    }

    public function brand()
    {
        return $this->belongsToMany(Brand::class);
    }

    static function findById($id)
    {
        $product = Product::select([
            "products.id",
            "products.product_name",
            "products.product_url",
            "products.sales_price",
            "products.thumb_image",
            "products.status",
            "products.sku",
            "products.slug",
        ])
            ->where('products.id', $id)->first();

        // $discount = ProductDiscount::select([
        //     "id",
        //     "product_id",
        //     "main_price",
        //     "parcent_discount",
        //     "flat_discount",
        //     "expire_date",
        // ])
        //     ->where('product_id', $product->id)
        //     ->whereDate('expire_date', '>', Carbon::today()->toDateString())
        //     ->orderBy('id', "DESC")
        //     ->first();
        // if ($discount) {
        //     if ($discount->flat_discount) {
        //         $product->discount_amount = $discount->flat_discount;
        //         $product->discount_percent = round(100 * $discount->flat_discount / $discount->main_price);
        //         $product->discount_price =  $discount->main_price - $discount->flat_discount;
        //     }
        //     if ($discount->parcent_discount) {
        //         $discount_amount = round($discount->main_price * $discount->parcent_discount / 100);
        //         $product->discount_amount = $discount_amount;
        //         $product->discount_percent  = $discount->parcent_discount;
        //         $product->discount_price =  $discount->main_price - $discount_amount;
        //     }
        // } else {
        //     $product->discount_amount = 0;
        //     $product->discount_percent = 0;
        //     $product->discount_price = 0;
        // }

        return $product;
    }
}
