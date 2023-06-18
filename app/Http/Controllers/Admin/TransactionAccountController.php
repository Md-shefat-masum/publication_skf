<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Settings\AppSettingTitle;
use Illuminate\Http\Request;

class TransactionAccountController extends Controller
{
    public function accounts()
    {
        $accounts = AppSettingTitle::select('id', 'title')
            ->whereIn('title', [
                'bkash', 'nagad',
                'rocket', 'bank_account'
            ])->where('status', 1)->with([
                'values' => function ($q) {
                    return $q->select(['id', 'setting_id', 'title', 'setting_value']);
                }
            ])->get();
        return response()->json($accounts);
    }
}
