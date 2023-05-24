<?php

namespace App\Models\Website;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class About extends Model
{
    use HasFactory;
    protected $guarded = [];

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

    static public function short()
    {
        return About::where('type',"short_about")->first()->description;
    }

    static public function long()
    {
        return About::where('type',"long_about")->first()->description;
    }
}
