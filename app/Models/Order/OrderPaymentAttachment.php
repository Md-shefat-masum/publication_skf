<?php

namespace App\Models\Order;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderPaymentAttachment extends Model
{
    use HasFactory;

    protected $appends = [
        'file_url',
    ];

    public function getFileUrlAttribute()
    {
        return asset($this->file);
    }
}
