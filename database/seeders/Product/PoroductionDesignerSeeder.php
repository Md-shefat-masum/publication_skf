<?php

namespace Database\Seeders\Product;

use App\Models\Production\ProductionDesigner;
use Illuminate\Database\Seeder;

class PoroductionDesignerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        ProductionDesigner::truncate();
        $data = array(
            "Mohammed Rahman",
            "Abdul Ali",
            "Rahim Ahmed",
            "Kamal Hasan",
            "Shahidul Islam",
            "Mosharraf Hossain",
            "Tariqul Islam",
            "Rashid Ahmed",
            "Anwar Hossain",
            "Nurul Islam"
        );

        foreach ($data as $item) {
            ProductionDesigner::create(['name'=>$item]);
        }
    }
}
