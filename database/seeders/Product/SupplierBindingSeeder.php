<?php

namespace Database\Seeders\Product;

use App\Models\Production\SupplierBinding;
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

        foreach ($data as $item) {
            SupplierBinding::create([
                'company_name' => $item,
                'binding_cost' => rand(10, 20),
                'contact_date' => '2023'.'-'.rand(1,5).'-'.rand(1,28),
            ]);
        }
    }
}
