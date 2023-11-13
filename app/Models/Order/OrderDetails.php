<?php

namespace App\Models\Order;

use App\Models\Product\Product;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderDetails extends Model
{
    use HasFactory;
    protected $guarded = [];

    public static function boot()
    {
        parent::boot();

        static::creating(function ($data) {
            if (auth()->check() && auth()->user()->roles()->count()) {
                /**
                 * if not admin save user_id
                 */
                if(auth()->user()->roles()->get()->whereNotIn('role_serial',[1,2,3])->count()){
                    $data->user_id = auth()->user()->id;
                }
            }
        });
    }

    public function product()
    {
        return $this->belongsTo(Product::class, 'product_id');
    }
}
