<?php

namespace Database\Seeders\Account;

use App\Models\Account\Account;
use App\Models\Account\AccountCustomer;
use Illuminate\Database\Seeder;

class AccountCustomerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     * sudo ufw allow from 103.191.241.251:3389
     * @return void
     */
    public function run()
    {
        AccountCustomer::truncate();
        $data = [
            [
                "name" => "Parvej",
            ],
            [
                "name" => "Ahmed Rokom",
            ],
            [
                "name" => "Sompadok",
            ],
            [
                "name" => "Sahin",
            ],
            [
                "name" => "Selim",
            ],
        ];

        foreach ($data as $item) {
            AccountCustomer::create($item);
        }
    }
}
