<?php

namespace Database\Seeders\Product;

use App\Models\Product\Category;
use Illuminate\Database\Seeder;

class ProductCategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        Category::truncate();
        $data = [
            [
                "name" => "নন ফিকশন",
                "name_english" => "non-fiction",
            ],
            [
                "name" => "আত্মজীবনী",
                "name_english" => "atma-jiboni",
            ],
            [
                "name" => "ইতিহাস",
                "name_english" => "itihas",
            ],
            [
                "name" => "কারাজীবন",
                "name_english" => "karajibon",
            ],
            [
                "name" => "দর্শন",
                "name_english" => "dorshon",
            ],
            [
                "name" => "প্রবন্ধ",
                "name_english" => "probondo",
            ],
            [
                "name" => "ইসলামিক",
                "name_english" => "islamic",
            ],
            [
                "name" => "মোটিভেশনাল",
                "name_english" => "motivational",
            ],
            [
                "name" => "ইসলামী জ্ঞান চর্চা",
                "name_english" => "islamic-gyan-corca",
            ],
            [
                "name" => "তাফসির",
                "name_english" => "tafsir",
            ],
            [
                "name" => "দাওয়াহ",
                "name_english" => "dawa",
            ],
        ];

        foreach ($data as $item) {
            Category::create([
                "name" => $item["name"],
                "name_english" => $item["name_english"],
                "page_title" => $item["name"],
                "meta_keywords" => $item["name_english"],
                "meta_description" => $item["name_english"].', '.$item["name"],
                "search_keywords" => $item["name_english"].' '.$item["name"],
            ]);
        }
    }
}
