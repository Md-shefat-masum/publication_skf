<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Account\Account;
use App\Models\Settings\AppSettingTitle;
use Illuminate\Http\Request;

class TransactionAccountController extends Controller
{
    public function setting_accounts()
    {
        $accounts = Account::select('id', 'name')
            ->whereIn('name', [
                'cash',
                'bkash', 'nagad',
                'rocket', 'bank_account'
            ])
            ->where('status', 1)
            ->with([
                'numbers' => function ($q) {
                    return $q->select(['id', 'account_id', 'value']);
                }
            ])->get();
        return response()->json($accounts);
    }
}
