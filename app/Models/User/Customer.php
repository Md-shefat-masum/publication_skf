<?php

namespace App\Models\User;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;
    protected $guarded = [];

    public static function boot()
    {
        parent::boot();

        static::creating(function ($data) {
            $data->slug = $data->id . uniqid();
            if (auth()->check()) {
                $data->creator = auth()->user()->id;
            }
        });
    }
}
