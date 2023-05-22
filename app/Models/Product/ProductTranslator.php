<?php

namespace App\Models\Product;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductTranslator extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $appends = ['image_url'];

    public static function boot()
    {
        parent::boot();

        static::creating(function ($data) {
            if (isset($data->name)) {
                $data->slug = \Illuminate\Support\Str::slug($data->name);
            } else if (isset($data->title)) {
                $data->slug = \Illuminate\Support\Str::slug($data->title);
            } else {
                $data->slug = $data->id . uniqid();
            }
            if (auth()->check()) {
                $data->creator = auth()->user()->id;
            }
        });
    }

    public function getImageUrlAttribute()
    {
        if (count(explode('http', $this->image)) > 1) {
            return $this->image;
        } else {
            return url('') . '/' . $this->image;
        }
    }
}
