<?php

namespace App\Models\Order;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    protected $guarded = [];

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

    public function order_details()
    {
        return $this->hasMany(OrderDetails::class,'order_id');
    }

    public function order_delivery_info()
    {
        return $this->hasOne(OrderDeliveryInfo::class,'order_id');
    }

    public function order_payments()
    {
        return $this->hasMany(OrderPayment::class,'order_id');
    }
}
