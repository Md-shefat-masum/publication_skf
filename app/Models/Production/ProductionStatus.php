<?php

namespace App\Models\Production;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductionStatus extends Model
{
    use HasFactory;
    protected $guarded = [];

    public static function boot()
    {
        parent::boot();

        static::creating(function ($data) {
            if (auth()->check()) {
                $data->creator = auth()->user()->id;
            }
        });
    }
}
