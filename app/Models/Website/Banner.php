<?php

namespace App\Models\Website;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $appends = ['image_url'];

    public function getImageUrlAttribute()
    {
        return url('').'/'.$this->image;
    }

    public static function boot()
    {
        parent::boot();

        static::created(function ($data) {
            $data->slug = $data->id . uniqid();

            if (auth()->check()) {
                $data->creator = auth()->user()->id;
            }
            $data->save();
        });
    }
}
