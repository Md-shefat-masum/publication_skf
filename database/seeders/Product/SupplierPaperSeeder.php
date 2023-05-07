<?php

namespace Database\Seeders\Product;

use App\Models\Production\SupplierPaper;
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

        $paper = [
            "Bond paper",
            "Coated paper",
            "Offset paper",
            "Recycled paper",
            "Newsprint paper",
            "Cardstock",
            "Art paper",
            "Glossy paper",
            "Matte paper",
            "Specialty paper"
        ];

        $printing_paper_types = array(
            "Bond",
            "Coated",
            "Offset",
            "Recycled",
            "Newsprint",
            "Cardstock",
            "Art",
            "Glossy",
            "Matte",
            "Specialty"
        );



        foreach ($data as $key=>$item) {
            SupplierPaper::create([
                'supplier_name' => $item,
                "paper_name" => $paper[$key],
                "paper_type" => $printing_paper_types[$key],
                'cost_per_paper' => rand(.3, 2),
                'cost_per_ream' => rand(300, 500),
                'purchase_date' => '2023'.'-'.rand(1,5).'-'.rand(1,28),
            ]);
        }
    }
}
