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
        $discount_price = 0;
        $discount = ProductDiscount::select([
            "id",
            "product_id",
            "main_price",
            "parcent_discount",
            "flat_discount",
            "expire_date",
        ])
            ->where('product_id', $this->id)
            ->whereDate('expire_date', '>', Carbon::today()->toDateString())
            ->orderBy('id', "DESC")
            ->first();
        if ($discount) {
            if ($discount->flat_discount) {
                $discount_amount = $discount->flat_discount;
                $discount_percent = round(100 * $discount->flat_discount / $discount->main_price);
                $discount_price =  $discount->main_price - $discount->flat_discount;
            }
            if ($discount->parcent_discount) {
                $discount_amount = round($discount->main_price * $discount->parcent_discount / 100);
                $discount_amount = $discount_amount;
                $discount_percent  = $discount->parcent_discount;
                $discount_price =  $discount->main_price - $discount_amount;
            }
        }

        return (object) [
            "discount_amount" => $discount_amount,
            "discount_percent" => $discount_percent,
            "discount_price" => $discount_price,
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
