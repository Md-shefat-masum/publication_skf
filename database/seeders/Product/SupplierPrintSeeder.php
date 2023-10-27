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
            "Fatah Paper House",
            "Joti Book Bingding",
            "Al-Hera Binding",
            "S Alam",
            "Isan Paper House",
            "Arshad Production",
            "Mahmud",
            "parvej Binding",
            "Al Hamra Paper  House",
            "Nasim Fayel",
            "Payel Vi",
            "Jahidul Calender Binding",
            "Jahid binding",
            "Rafiq onubad",
            "Rafiq onubad",
            "Robi sopt Lamination",
            "Al kawser",
            "Al Nasba",
            "Masum binding",
            "BM Voucher Jama",
            "Hoque Printers",
            "Gardian",
            "Mustafig treders",
            "Diganta printers",
            "Abdul Jabber",
            "Universel treders",
            "Professor pablication",
            "Bismillah papers (banglabazer)",
            "Dewan bazer chittagong union",
            "Brahmaputra Printers",
            "Suganda",
            "Sashas",
            "Special Book set 2 mahmud",
            "sarak nijame",
            "Upaher Galary",
            "colour criation",
            "Maktabun Nasba",
            "Gardian",
            "Ali Bindings",
            "Shohag Trade",
            "Prassad pracationa",
            "Office Advance",
            "IDEA COMMUNICATION",
            "Maria Key House",
            "Mayer Doya Lamination",
            "Sijan Printing",
            "Gift Vely",
            "BM Trading Corporation",
            "Pan Asiatic Pablication",
            "BIIT Pablication",
            "Md Habibur Rahman",
            "BIC",
            "Rakib Binding",
            "colour criation",
            "Agig Paper House",
            "Ontara Plastic",
            "ZR Printers",
            "MRI Association",
            "The Imprint Press",
            "Nur Lader",
            "Jinnat Calander Binding",
            "Gangi",
            "Mitaly Solution",
            "CMC Sarak",
            "Al falah Printing Press",
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
