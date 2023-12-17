<?php

namespace App\Models\Account;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AccountLog extends Model
{
    use HasFactory;

    protected $guarded = [];

    public static function boot()
    {
        parent::boot();

        static::created(function ($data) {

            $data->slug = Carbon::now()->format('dmy') . $data->customer_id . $data->id;

            if (auth()->check()) {
                $data->creator = auth()->user()->id;
            }

            if($data->is_income == 1){
                $last_income = AccountLog::where("is_income",1)
                    ->orderBy('id','DESC')
                    ->where('income_id','>',0)
                    ->first();
                if($last_income){
                    $data->income_id = $last_income->income_id + 1;
                }else{
                    $data->income_id = 10001;
                }
            }
            if($data->is_expense == 1){
                $last_income = AccountLog::where("is_expense",1)
                    ->orderBy('id','DESC')
                    ->where('expense_id','>',0)
                    ->first();
                if($last_income){
                    $data->expense_id = $last_income->expense_id+1;
                }else{
                    $data->expense_id = 10001;
                }
            }
            $data->save();
        });
    }

    public function account()
    {
        return $this->belongsTo(Account::class, 'account_id');
    }
    public function category()
    {
        return $this->belongsTo(AccountCategory::class, 'category_id');
    }
    public function account_number()
    {
        return $this->belongsTo(AccountNumber::class, 'account_number_id');
    }
}
