<?php

namespace Database\Seeders\Product;

use App\Models\Product\ProductTranslator;
use Illuminate\Database\Seeder;

class PoroductTranslatorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        ProductTranslator::truncate();
        $data = array(
            "Abdullah Yusuf Ali",
            "Muhammad Muhsin Khan",
            "Saheeh International",
            "Muhammad Taqi-ud-Din al-Hilali",
            "Mufti Taqi Usmani",
            "Dr. Muhammad Taqi-ud-Din al-Hilali",
            "Yusuf Talal DeLorenzo",
            "Muhammad Abdel-Haleem",
            "Abdul Majid Daryabadi",
            "Abdul Rahman Yusuf"
        );
        foreach ($data as $translator) {
            ProductTranslator::create([
                'name' => $translator,
            ]);
        }
    }
}
