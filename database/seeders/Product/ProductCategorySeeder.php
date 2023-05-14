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
                "name" => "ইসলামী সাহিত্য",
                "name_english" => "islamic book",
                "child" => [
                    [
                        "name" => "দাওয়াতী বই",
                        "name_english" => "dawati book"
                    ],
                    [
                        "name" => "অন্যান্য বই",
                        "name_english" => "others book"
                    ],
                    [
                        "name" => "সাইন্স সিরিজ",
                        "name_english" => "science series"
                    ],
                ],
            ],
            [
                "name" => "সাংগঠনিক উপকরণ",
                "name_english" => "sangothonik upokoron",
                "child" => [
                    [
                        "name" => "ফর্ম",
                        "name_english" => "form"
                    ],
                    [
                        "name" => "রেজিস্টার খাতা",
                        "name_english" => "register note book"
                    ],
                    [
                        "name" => "অন্যান্য",
                        "name_english" => "others"
                    ],
                ],
            ],
            [
                "name" => "দাওয়াতী উপকরণ",
                "name_english" => "aa",
                "child" => [
                    [
                        "name" => "ফর্ম",
                        "name_english" => "form"
                    ],
                    [
                        "name" => "পোস্টার",
                        "name_english" => "poster"
                    ],
                    [
                        "name" => "স্টীকার",
                        "name_english" => "sticker"
                    ],
                    [
                        "name" => "পতাকা",
                        "name_english" => "flag"
                    ],
                    [
                        "name" => "চাবির রিং",
                        "name_english" => "key ring"
                    ],
                    [
                        "name" => "টি-শার্ট",
                        "name_english" => "t-shirt"
                    ],
                    [
                        "name" => "অন্যান্য",
                        "name_english" => "others"
                    ],
                ],
            ],
            [
                "name" => "নববর্ষ প্রকাশনা",
                "name_english" => "new year prokashona",
                "child" => [],
            ],
            [
                "name" => "পোস্টার",
                "name_english" => "poster",
                "child" => [],
            ],
            [
                "name" => "প্রি-অর্ডার",
                "name_english" => "pre order",
                "child" => [],
            ],
        ];

        foreach ($data as $item) {
            $main_cat = Category::create([
                "name" => $item["name"],
                "name_english" => $item["name_english"],
                "page_title" => $item["name"],
                "meta_keywords" => $item["name_english"],
                "meta_description" => $item["name_english"].', '.$item["name"],
                "search_keywords" => $item["name_english"].' '.$item["name"],
            ]);

            if(count($item['child'])){
                foreach ($item['child'] as $item2) {
                    $child_cat = Category::create([
                        "parent_id" => $main_cat->id,
                        "name" => $item2["name"],
                        "name_english" => $item2["name_english"],
                        "page_title" => $item2["name"],
                        "meta_keywords" => $item2["name_english"],
                        "meta_description" => $item2["name_english"].', '.$item2["name"],
                        "search_keywords" => $item2["name_english"].' '.$item2["name"],
                    ]);

                }
            }
        }
    }
}
