<?php

namespace Database\Seeders\Product;

use App\Models\Production\SupplierPaper;
use App\Models\Production\SupplierPaperStock;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class SupplierPaperStockSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        SupplierPaperStock::truncate();
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

        for ($i = 1; $i <= 12; $i++) {
            $supplier_paper = SupplierPaper::find($i);
            $supplier_paper_stock = null;

            for ($j = 0; $j < 4; $j++) {
                $supplier_paper_stock = SupplierPaperStock::create([
                    "paper_name" => $paper[$j],
                    "paper_type" => $printing_paper_types[$j],
                    'cost_per_paper' => rand(.3, 2),
                    'cost_per_ream' => rand(300, 500),
                    'supplier_paper_id' => $i,
                    'stock' => rand(100, 200),
                    'purchase_date' => Carbon::now()->subDays(rand(20, 100))->toDateString(),
                    'description' => '',
                ]);
            }

            $supplier_paper->stock = $supplier_paper->SupplierPaperStock()->sum('stock') - $supplier_paper->SupplierPaperUsed()->sum('amount');
            $supplier_paper->purchase_date = $supplier_paper_stock->purchase_date;
            $supplier_paper->save();
        }
    }
}
