<?php

namespace App\Models\Order;

use App\Models\User;
use App\Models\User\Address;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $casts = [
        "invoice_date" => 'date',
    ];

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
        return $this->hasMany(OrderDetails::class, 'order_id')->select([
            'id', 'order_id',
            'customer_id', 'user_id', 'product_id',
            'product_name', 'product_price', 'discount_price',
            'discount_percent', 'sales_price', 'qty'
        ])->with('product');
    }

    public function products()
    {
        return $this->hasMany(OrderDetails::class, 'order_id')->select([
            'id', 'order_id', 'customer_id', 'user_id', 'product_id',
            'product_name', 'product_price', 'discount_price', 'discount_percent', 'sales_price', 'qty'
        ])->with('product');
    }

    public function order_delivery_info()
    {
        return $this->hasOne(OrderDeliveryInfo::class, 'order_id');
    }

    public function address()
    {
        return $this->hasOne(Address::class, 'table_id','user_id')->orderBy('id','DESC');
    }

    public function order_payments()
    {
        return $this->hasMany(OrderPayment::class, 'order_id');
    }

    public function approved_order_payments()
    {
        return $this->hasMany(OrderPayment::class, 'order_id')->where('approved',1);
    }

    public function not_approved_order_payments()
    {
        return $this->hasMany(OrderPayment::class, 'order_id')->where('approved',0);
    }

    public function payment()
    {
        return $this->hasOne(OrderPayment::class, 'order_id')
            ->orderBy('id','DESC')
            ->with('attachment');
    }

    public function ecom_order_payment()
    {
        return $this->hasOne(OrderPayment::class, 'order_id')->orderBy('id','DESC');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'user_id')->select([
            'id',
            'first_name',
            'user_name',
            "last_name",
            "mobile_number",
            "photo"
        ]);
    }
}
