<?php

namespace App\Models\Product;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    use HasFactory;
    protected $guarded = [];

    public static function boot()
    {
        parent::boot();

        static::creating(function ($data) {
            // $data->slug = Str::slug($data->title);
            if(isset($data->name)){
                $data->slug = \Illuminate\Support\Str::slug($data->name);
            }
            else if(isset($data->title)){
                $data->slug = \Illuminate\Support\Str::slug($data->title);
            }else{
                $data->slug = $data->id.uniqid();
            }
            if (auth()->check()) {
                $data->creator = auth()->user()->id;
            }
        });
    }
}
