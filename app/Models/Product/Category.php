<?php

namespace App\Models\Product;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    protected $guarded = [];

    public static function boot()
    {
        parent::boot();

        static::creating(function ($data) {
            if (isset($data->name_english)) {
                $data->slug = \Illuminate\Support\Str::slug($data->name_english);
            }else {
                $data->slug = $data->id . uniqid();
            }
            if (auth()->check()) {
                $data->creator = auth()->user()->id;
            }
        });
    }

    public function child()
    {
        return $this->hasMany(Category::class,'parent_id','id');
    }

    public function parent()
    {
        return $this->belongsTo(Category::class,'parent_id');
    }

    public function products()
    {
        return $this->belongsToMany(Product::class)->select(['product_name']);
    }

    public function products_custom()
    {
        return $this->belongsToMany(Product::class);
    }
}
