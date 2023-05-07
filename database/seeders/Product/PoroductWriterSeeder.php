<?php

namespace Database\Seeders\Product;

use App\Models\Product\ProductWriter;
use Illuminate\Database\Seeder;

class PoroductWriterSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        ProductWriter::truncate();
        $data = array(
            "Maulana Mufti Muhammad Waliullah Deobandi",
            "Mufti Muhammad Ruhul Amin Kausari",
            "Maulana Abdul Hamid Khan Bhashani",
            "Professor Ghulam Azam",
            "Maulana Abul Kalam Azad",
            "Professor Muhammad Yunus",
            "Maulana Syed Abul Ala",
            "Maulana Abdul Latif Chowdhury",
            "Maulana Mohammad Ibrahim",
            "Maulana Abdur Rahim",
            "Maulana Muhammad Qasim Nanotvi",
            "Mufti Maulana Fazlul Karim",
            "Professor Dr. Muhammad Shahidullah",
            "Maulana Abdul Hai Laskar",
            "Maulana Muhiuddin Khan",
            "Maulana Mohammad Zafar Iqbal",
            "Maulana Muhammad Abdul Matin"
        );
        foreach ($data as $writer) {
            ProductWriter::create([
                'name' => $writer,
            ]);
        }
    }
}
