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
            "Fatah Paper House",
            "S Alam",
            "Isan Paper House",
            "Mahmud",
            "Al Hamra Paper  House",
            "Nasim Fayel",
            "Payel Vi",
            "Al kawser",
            "Al Nasba",
            "Gardian",
            "Mustafig treders",
            "Abdul Jabber",
            "Universel treders",
            "Professor pablication",
            "Bismillah papers (banglabazer)",
            "Dewan bazer chittagong union",
            "Suganda",
            "Sashas",
            "sarak nijame",
            "Upaher Galary",
            "colour criation",
            "Maktabun Nasba",
            "Gardian",
            "Shohag Trade",
            "Prassad pracationa",
            "Office Advance",
            "IDEA COMMUNICATION",
            "Maria Key House",
            "Mayer Doya Lamination",
            "Gift Vely",
            "BM Trading Corporation",
            "Pan Asiatic Pablication",
            "BIIT Pablication",
            "Md Habibur Rahman",
            "BIC",
            "colour criation",
            "Agig Paper House",
            "Ontara Plastic",
            "ZR Printers",
            "MRI Association",
            "Nur Lader",
            "Gangi",
            "Mitaly Solution",
            "CMC Sarak",
            "Paper View",
            "Quelity Care",
            "Tech park Trust",
            "Mawlana Richarce",
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
