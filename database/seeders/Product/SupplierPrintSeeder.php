<?php

namespace Database\Seeders\Product;

use App\Models\Production\SupplierPrint;
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

        foreach ($data as $item) {
            SupplierPrint::create([
                'company_name' => $item,
                'print_cost' => rand(100, 200),
                'total_page' => rand(100, 500),
                'per_page_cost' => rand(.5,2),
                'contact_date' => '2023'.'-'.rand(1,5).'-'.rand(1,28),
            ]);
        }
    }
}
