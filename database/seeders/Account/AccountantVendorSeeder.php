<?php

namespace Database\Seeders\Account;

use App\Models\Account\AccountantVendor;
use Illuminate\Database\Seeder;

class AccountantVendorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        function generateRandomName($i)
        {
            $names = [
                "Al kawser",
                "Al Nasba",
                "BM Voucher Jama",
                "Gardian",
                "Mustafig treders",
                "Abdul Jabber",
                "Universel treders",
                "Suganda",
                "Sashas",
                "Upaher Galary",
            ];
            return $names[$i];
        }

        function generateRandomEmail()
        {
            $domains = ['gmail.com', 'yahoo.com', 'hotmail.com', 'example.com'];
            $name = generateRandomName(rand(0,9));
            $domain = $domains[rand(0, count($domains) - 1)];
            return $name . '@' . $domain;
        }

        function generateRandomAddress()
        {
            $streets = ['Main Street', 'First Avenue', 'Park Road', 'Elm Street', 'Oak Avenue'];
            $numbers = ['123', '456', '789', '10', '11'];
            $street = $streets[rand(0, count($streets) - 1)];
            $number = $numbers[rand(0, count($numbers) - 1)];
            return $number . ' ' . $street;
        }

        function generateRandomCity()
        {
            $cities = ['New York', 'Los Angeles', 'Chicago', 'Houston', 'Philadelphia'];
            return $cities[rand(0, count($cities) - 1)];
        }

        function generateRandomState()
        {
            $states = ['NY', 'CA', 'IL', 'TX', 'PA'];
            return $states[rand(0, count($states) - 1)];
        }

        function generateRandomZipCode()
        {
            return strval(rand(10000, 99999));
        }

        function generateRandomLatitude()
        {
            return rand(-90, 90) + (rand(0, 9999) / 10000);
        }

        function generateRandomLongitude()
        {
            return rand(-180, 180) + (rand(0, 9999) / 10000);
        }
        function generateRandomZone()
        {
            $zones = ['Zone A', 'Zone B', 'Zone C', 'Zone D', 'Zone E'];
            return $zones[rand(0, count($zones) - 1)];
        }

        function generateRandomCountry()
        {
            $countries = ['United States', 'Canada', 'United Kingdom', 'Australia', 'Germany'];
            return $countries[rand(0, count($countries) - 1)];
        }

        function generateRandomMobileNumber()
        {
            $prefixes = ['+1', '+44', '+61', '+49'];
            $number = rand(100000000, 999999999);
            $prefix = $prefixes[rand(0, count($prefixes) - 1)];
            return $prefix . $number;
        }

        AccountantVendor::truncate();
        for ($i = 0; $i < 10; $i++) {
            $user = [
                'name' => generateRandomName($i),
                'email' => generateRandomEmail(),
                'image' => "avatar.png",
            ];

            AccountantVendor::create($user);
        }
    }
}
