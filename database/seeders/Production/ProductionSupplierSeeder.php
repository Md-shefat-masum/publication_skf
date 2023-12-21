<?php

namespace Database\Seeders\Production;

use App\Models\ProductionSupplier;
use App\Models\ProductionSupplierCategory;
use Illuminate\Database\Seeder;

class ProductionSupplierSeeder extends Seeder
{
    /**
     Database\Seeders\Production\ProductionSupplierSeeder

     * Run the database seeds.
     *
     * @return void
     *
     */
    public function run()
    {
        ProductionSupplierCategory::truncate();
        ProductionSupplier::truncate();

        $production_cats = [
            [
                "subject" => "লেককের অনারিয়াম",
                "supliers" => [],
            ],
            [
                "subject" => "ডিজাইন চার্জ",
                "supliers" => [],
            ],
            [
                "subject" => "কম্পোজ",
                "supliers" => [],
            ],
            [
                "subject" => "কালার প্রিন্ট",
                "supliers" => [
                    "Arshad Production",
                ],
            ],
            [
                "subject" => "সম্পাদনা",
                "supliers" => [],
            ],
            [
                "subject" => " রিডিং (হার্ডকপি)",
                "supliers" => [],
            ],
            [
                "subject" => "প্রুফ রিডিং (সফটকপি)",
                "supliers" => [],
            ],
            [
                "subject" => "পজেটিভ",
                "supliers" => [],
            ],
            [
                "subject" => "প্লেট ইনার",
                "supliers" => [],
            ],
            [
                "subject" => "প্লেট কাভার",
                "supliers" => [],
            ],
            [
                "subject" => "প্লেট স্ক্রীন",
                "supliers" => [],
            ],
            [
                "subject" => "প্লেট প্রস্তানি",
                "supliers" => [],
            ],
            [
                "subject" => "কাগজ ইনার",
                "supliers" => [],
            ],
            [
                "subject" => "কাগজ কাভার",
                "supliers" => [],
            ],
            [
                "subject" => "কাগজ প্রস্তানি",
                "supliers" => [
                    "Fatah Paper House",
                ],
            ],
            [
                "subject" => "ছাপা ইনার",
                "supliers" => [],
            ],
            [
                "subject" => "ছাপা কাভার",
                "supliers" => [],
            ],
            [
                "subject" => "ছাপা প্রস্তানি",
                "supliers" => [],
            ],
            [
                "subject" => "ছাপা সলিড",
                "supliers" => [],
            ],
            [
                "subject" => "ল্যামিনেশন",
                "supliers" => [],
            ],
            [
                "subject" => "স্পট",
                "supliers" => [],
            ],
            [
                "subject" => "ইউভি",
                "supliers" => [],
            ],
            [
                "subject" => "ফয়েল",
                "supliers" => [],
            ],
            [
                "subject" => "অ্যাম্বোস",
                "supliers" => [],
            ],
            [
                "subject" => "ক্রিস",
                "supliers" => [],
            ],
            [
                "subject" => "ব্লক",
                "supliers" => [],
            ],
            [
                "subject" => "ডাইকাটিং",
                "supliers" => [],
            ],
            [
                "subject" => "বাইন্ডিং",
                "supliers" => [],
            ],
            [
                "subject" => "যাতায়াত",
                "supliers" => [],
            ],
            [
                "subject" => "কার্টুন",
                "supliers" => [],
            ],
            [
                "subject" => "বস্তা",
                "supliers" => [],
            ],
        ];

        foreach ($production_cats as $s) {
            $category = ProductionSupplierCategory::create([
                "title" => $s["subject"],
            ]);

            foreach ($s['supliers'] as $value) {
                $supplier = ProductionSupplier::create([
                    "name" => $value,
                    "category_id" => $category->id,
                ]);
            }
        }

    }
}
