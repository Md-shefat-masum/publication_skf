<?php

namespace Database\Seeders\Product;

use App\Models\Product\Product;
use App\Models\Product\ProductStockLog;
use App\Models\Production\Production;
use App\Models\Production\ProductionStatus;
use App\Models\Production\ProductionUsedPaper;
use Illuminate\Database\Seeder;

class PoroductionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Production::truncate();
        ProductionUsedPaper::truncate();
        ProductionStatus::truncate();

        $products = Product::limit(12)->get();
        foreach ($products as $item) {
            for ($i=0; $i < 3; $i++) {

                $production = Production::create([
                    'product_id' => $item->id,
                    'paper_amount' => rand(40, 70),
                    'print_qty' => rand(300, 500),
                    'book_cover_designer' => rand(0,9),
                    'supplier_prints_id' => rand(0, 9),
                    'supplier_bindings_id' => rand(0, 9),
                    'creator' => 3,
                ]);

                $product_stock = ProductStockLog::create([
                    'product_id' => $item->id,
                    'qty' => $production->print_qty,
                    'type' => 'production', // production, sales, returns
                    'productions_id' => $production->id,
                    'creator' => 3
                ]);

                ProductionUsedPaper::create([
                    'production_id' => $item->id,
                    'supplier_paper_id' => rand(0,9),
                    'amount' => $production->paper_amount,
                ]);

                ProductionStatus::create([
                    'production_id' => $production->id,
                    'status' => 'planning',
                ]);
                ProductionStatus::create([
                    'production_id' => $production->id,
                    'status' => 'processing',
                ]);
                ProductionStatus::create([
                    'production_id' => $production->id,
                    'status' => 'designing',
                ]);
                ProductionStatus::create([
                    'production_id' => $production->id,
                    'status' => 'printing',
                ]);
                ProductionStatus::create([
                    'production_id' => $production->id,
                    'status' => 'binding',
                ]);
                ProductionStatus::create([
                    'production_id' => $production->id,
                    'status' => 'complete',
                ]);
            }
        }
    }
}
