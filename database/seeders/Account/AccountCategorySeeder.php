<?php

namespace Database\Seeders\Account;

use App\Models\Account\AccountCategory;
use Illuminate\Database\Seeder;

class AccountCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        AccountCategory::truncate();

        $data = [
            // assets
            "Checking" => 1,
            "Savings" => 1,
            "Accounts Receivable" => 1,
            "Inventory" => 1,
            "Prepaid Expenses" => 1,

            // fixed assets
            "Equipment" => 9,
            "Land" => 9,
            "Buildings" => 9,
            "Furniture" => 9,
            "Vehicles" => 9,

            "Other long-term assets" => 9,
            "Intellectual property" => 9,
            "Goodwill" => 9,
            "Long-term investments" => 9,

            // liabilites
            "Accounts Payable" => 5,
            "Sales Tax Payable" => 5,
            "Income Tax Payable" => 5,
            "Wages Payable" => 5,
            "Unearned Revenue" => 5,
            "Long-term debt" => 5,

            // equity
            "Owners Capital" => 6,
            "Withdrawals" => 6,
            "Revenue" => 6,

            // revenue
            "Sales Revenue" => 7,
            "Service Revenue" => 7,

            // expense
            "Salaries and Wages" => 4,
            "Rent" => 4,
            "Insurance" => 4,
            "Taxes" => 4,
        ];

        foreach ($data as $title => $type_id) {
            AccountCategory::create([
                'title' => $title,
                'type_id' => $type_id,
            ]);
        }
    }
}
