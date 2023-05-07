<?php

namespace Database\Seeders\Account;

use App\Models\Account\Account;
use Illuminate\Database\Seeder;

class AccountSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
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
                "name" => "Islami Bank",
            ],
            [
                "name" => "Bkash",
            ],
            [
                "name" => "Nogod",
            ],
        ];

        foreach ($data as $item) {
            Account::create($item);
        }
    }
}
