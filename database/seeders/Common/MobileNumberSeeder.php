<?php

namespace Database\Seeders\Common;

use App\Models\User\PhoneNumber;
use Illuminate\Database\Seeder;

class MobileNumberSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {


        function generateRandomPhoneNumber()
        {
            $prefixes = ['017', '018', '019', '015', '016'];
            $number = rand(10000000, 99999999);
            $prefix = $prefixes[rand(0, count($prefixes) - 1)];
            return $prefix . $number;
        }
        PhoneNumber::truncate();
        for ($i = 0; $i < 10; $i++) {
            for ($j = 0; $j < rand(1, 4); $j++) {
                PhoneNumber::create([
                    "table_id" => $j + 1,
                    "table_name" => 'users',
                    "mobile_number" => generateRandomPhoneNumber(),
                ]);
            }
            for ($j = 0; $j < rand(1, 4); $j++) {
                PhoneNumber::create([
                    "table_id" => $j + 1,
                    "table_name" => 'customers',
                    "mobile_number" => generateRandomPhoneNumber(),
                ]);
            }
        }
    }
}
