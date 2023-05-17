<?php

namespace App\Models\Product;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $guarded = [];

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
        // return $this->hasMany(OrderDetails::class,'product_id');
        return $this->hasMany(ProductStockLog::class, 'product_id');
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
            "products.slug",
        ])
            ->where('products.id', $id)->first();

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

        return $product;
    }
}
