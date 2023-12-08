<?php

namespace App\Models\Account;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

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

            if ($data->is_income == 1) {
                $last_income = AccountLog::where("is_income", 1)
                    ->orderBy('id', 'DESC')
                    ->where('income_id', '>', 0)
                    ->first();
                if ($last_income) {
                    $data->income_id = $last_income->income_id + 1;
                } else {
                    $data->income_id = 10001;
                }
            }
            if ($data->is_expense == 1) {
                $last_income = AccountLog::where("is_expense", 1)
                    ->orderBy('id', 'DESC')
                    ->where('expense_id', '>', 0)
                    ->first();
                if ($last_income) {
                    $data->expense_id = $last_income->expense_id + 1;
                } else {
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

    /**
     ```js
        [
            "name" => null,
            "customer_id" => null,
            "related_table" => null,
            "date" => null,
            "category_id" => null,
            "trx_id" => null,
            "account_id" => null,
            "account_number_id" => null,
            "is_expense" => null,
            "is_income" => null,
            "amount" => null,
            "description" => null,
        ]
        ```js
     *@return AccountLog::class
     */
    public function store($params = [])
    {
        $params = (object) $params;
        $account_log = new AccountLog();

        $account_log->name = $params->name;
        $account_log->customer_id = $params->customer_id;
        $account_log->related_table = $params->related_table;

        $account_log->date = $params->date;
        $account_log->category_id = $params->category_id;
        $account_log->trx_id = $params->trx_id;
        $account_log->account_id = $params->account_id;
        $account_log->account_number_id = $params->account_number_id ?? 0;
        $account_log->is_expense = $params->is_expense;
        $account_log->is_income = $params->is_income;
        $account_log->amount = $params->amount;
        $account_log->description = $params->description;
        $account_log->creator = Auth::user()->id;
        $account_log->save();

        return $account_log;
    }
}
