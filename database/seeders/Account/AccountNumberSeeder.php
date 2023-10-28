<?php

namespace Database\Seeders\Account;

use App\Models\Account\AccountNumber as AccountAccountNumber;
use Illuminate\Database\Seeder;

class AccountNumberSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        AccountAccountNumber::truncate();
        $values = [
            // bank account
            "3" => [
                '+880 169874523',
                '+880 169874524',
                '+880 169874525',
            ],
            // bkash
            "4" => [
                '+880 169874526',
                '+880 169874527',
                '+880 169874528',
            ],
            // nagad
            "5" => [
                '+880 169874529',
                '+880 169874530',
                '+880 169874531',
            ],
            // bank account
            "2" => [
                'Islami bank 874523',
                'Agrani bank 874524',
                'City bank 874525',
            ],
        ];

        foreach ($values as $account_id=>$values) {
            foreach ($values as $value) {
                AccountAccountNumber::create([
                    'account_id' => $account_id,
                    'value' => $value,
                ]);
            }
        }
    }
}
