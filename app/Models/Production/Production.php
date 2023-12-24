<?php

namespace App\Models\Production;

use App\Models\Product\Product;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Production extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $appends = [
        'production_status',
        'product_info',
    ];

    public function getProductionStatusAttribute()
    {
        return ProductionStatus::select('id','production_id','status','description','created_at')
            ->where('production_id',$this->id)->get();
    }

    public function getProductInfoAttribute()
    {
        return Product::select('id','product_name','thumb_image','sales_price')->where('id',$this->product_id)->first();
    }

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

    public function suppliers()
    {
        return $this->hasMany(ProductionUsedPaper::class,'production_id');
    }

    public function related_suppliers()
    {
        return $this->hasMany(ProductionRelatedSuppliers::class,'production_id');
    }

}
