<?php

namespace Database\Seeders\Product;

use App\Models\Production\SupplierPrint;
use App\Models\User\PhoneNumber;
use Illuminate\Database\Seeder;

class SupplierPrintSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        SupplierPrint::truncate();

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

        // function generateRandomMobileNumber()
        // {
        //     $prefixes = ['+1', '+44', '+61', '+49'];
        //     $number = rand(100000000, 999999999);
        //     $prefix = $prefixes[rand(0, count($prefixes) - 1)];
        //     return $prefix . $number;
        // }
        foreach ($data as $item) {
            $data = SupplierPrint::create([
                'company_name' => $item,
                'print_cost' => rand(100, 200),
                'total_page' => rand(100, 500),
                'per_page_cost' => rand(1,2),
                'contact_date' => '2023'.'-'.rand(1,5).'-'.rand(1,28),
            ]);

            PhoneNumber::create([
                'table_id' => $data->id,
                "table_name" => "supplier_prints",
                'mobile_number' => generateRandomMobileNumber(),
            ]);
        }
    }
}
