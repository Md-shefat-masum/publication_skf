<?php

namespace App\Models\Order;

use App\Models\User;
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
            $data->slug = $data->id . uniqid();
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

    public function user()
    {
        return $this->belongsTo(User::class,'user_id')->select(['id','first_name',"last_name","mobile_number","photo"]);
    }
}
