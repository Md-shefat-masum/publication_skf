<?php

namespace Database\Seeders\Account;

use App\Models\Account\Account;
use Illuminate\Database\Seeder;

class AccountSeeder extends Seeder
{
    /**
     * Run the database seeds.
     * sudo ufw allow from 103.191.241.251:3389
     * @return void
     */
    public function run()
    {
        Account::truncate();
        $data = [
            [
                "name" => "cash",
            ],
            [
                "name" => "bank_account",
            ],
            [
                "name" => "bkash",
            ],
            [
                "name" => "nagad",
            ],
            [
                "name" => "rocket",
            ],
        ];

        foreach ($data as $item) {
            Account::create($item);
        }
    }
}
