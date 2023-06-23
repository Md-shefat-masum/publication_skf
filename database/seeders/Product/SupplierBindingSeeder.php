<?php

namespace Database\Seeders\Product;

use App\Models\Production\SupplierBinding;
use App\Models\User\PhoneNumber;
use Illuminate\Database\Seeder;

class SupplierBindingSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        SupplierBinding::truncate();
        $data = array(
            "The University Press Limited",
            "Safdar Printing Press",
            "Fifth Avenue Printing Press",
            "Anannya Printers",
            "Adhuna Printing & Packaging",
            "Panjeree Publications Ltd.",
            "Bangla Academy",
            "Biddyut Limited",
            "Bengal Multimedia Limited",
            "Meghna Publications"
        );

        function generateRandomMobileNumber()
        {
            $prefixes = ['+1', '+44', '+61', '+49'];
            $number = rand(100000000, 999999999);
            $prefix = $prefixes[rand(0, count($prefixes) - 1)];
            return $prefix . $number;
        }

        foreach ($data as $item) {
            $data = SupplierBinding::create([
                'company_name' => $item,
                'binding_cost' => rand(10, 20),
                'total_book' => rand(100, 150),
                'contact_date' => '2023'.'-'.rand(1,5).'-'.rand(1,28),
            ]);
            PhoneNumber::create([
                'table_id' => $data->id,
                "table_name" => "supplier_bindings",
                'mobile_number' => generateRandomMobileNumber(),
            ]);
        }
    }
}
