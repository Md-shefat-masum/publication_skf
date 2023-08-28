<?php

namespace Database\Seeders\Product;

use App\Models\Production\SupplierPaper;
use App\Models\User\PhoneNumber;
use Illuminate\Database\Seeder;

class SupplierPaperSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        SupplierPaper::truncate();

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

        foreach ($data as $key=>$item) {
            $data = SupplierPaper::create([
                'supplier_name' => $item,
                'purchase_date' => '2023'.'-'.rand(1,5).'-'.rand(1,28),
                "stock" => rand(50,60),
            ]);

            PhoneNumber::create([
                'table_id' => $data->id,
                "table_name" => "supplier_papers",
                'mobile_number' => generateRandomMobileNumber(),
            ]);
        }
    }
}
