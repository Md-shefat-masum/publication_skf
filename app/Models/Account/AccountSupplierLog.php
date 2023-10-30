<?php

namespace App\Models\Account;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AccountSupplierLog extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $appends = [
        'formated_date',
    ];

    public function getFormatedDateAttribute()
    {
        return Carbon::parse($this->date)->format('d M, y D');
    }

    public function ac_log()
    {
        //function_body
        return $this->belongsTo(AccountLog::class,'account_log_id');
    }
}
