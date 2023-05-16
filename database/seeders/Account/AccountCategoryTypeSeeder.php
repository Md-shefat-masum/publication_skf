<?php

namespace Database\Seeders\Account;

use App\Models\Account\AccountCategoryType;
use Illuminate\Database\Seeder;

class AccountCategoryTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        AccountCategoryType::truncate();

        $data = [
            "Asset" => '',
            "Accounts payable" => '',
            "Accounts receivable" => '',
            "Expense" => '',
            "Liability" => '',
            "Equity" => '',
            "Revenue" => '',
            "Bank account" => '',
            "Fixed asset" => '',
            "Personal account" => '',
            "Income statement" => '',
            "Cheque" => '',
            "Cash account" => '',
            "Financial asset" => ''
        ];

        foreach ($data as $name => $type) {
            AccountCategoryType::create([
                'name' => $name,
                // 'type' => $type,
            ]);
        }
    }
}
