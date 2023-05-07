<?php

namespace App\Models\Product;

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
        return $this->hasOne(DiscountProduct::class);
    }

    public function categories()
    {
        return $this->belongsToMany(Category::class)->withTimestamps();
    }

    public function stocks()
    {
        return $this->hasMany(ProductStockLog::class,'product_id');
    }

    public function sales()
    {
        // return $this->hasMany(OrderDetails::class,'product_id');
        return $this->hasMany(ProductStockLog::class,'product_id');
    }

    public function brand()
    {
        return $this->belongsTo(Brand::class, 'brand_id');
    }
}
