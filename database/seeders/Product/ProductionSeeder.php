<?php

namespace Database\Seeders\Product;

use App\Models\Product\Product;
use App\Models\Product\ProductStockLog;
use App\Models\Production\Production;
use App\Models\Production\ProductionStatus;
use App\Models\Production\ProductionUsedPaper;
use App\Models\Production\SupplierPaper;
use Illuminate\Database\Seeder;

class ProductionSeeder extends Seeder
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
        $total_paper_supplier = SupplierPaper::count();
        foreach ($products as $item) {
            for ($i = 0; $i < 3; $i++) {

                $production = Production::create([
                    'product_id' => $item->id,
                    'paper_amount' => rand(40, 70),
                    'print_qty' => rand(300, 500),
                    'book_cover_designer' => rand(1, $total_paper_supplier),
                    'supplier_prints_id' => rand(1, $total_paper_supplier),
                    'supplier_bindings_id' => rand(1, $total_paper_supplier),
                    'creator' => 3,
                ]);

                $product_stock = ProductStockLog::create([
                    'product_id' => $item->id,
                    'qty' => $production->print_qty,
                    'type' => 'production', // production, sales, returns
                    'productions_id' => $production->id,
                    'creator' => 3
                ]);

                $supplier_paper_id = rand(1, $total_paper_supplier);
                ProductionUsedPaper::create([
                    'production_id' => $item->id,
                    'supplier_paper_id' => $supplier_paper_id,
                    'amount' => $production->paper_amount,
                ]);

                $supplier_paper = SupplierPaper::find($supplier_paper_id);
                $total_stock = $supplier_paper->SupplierPaperStock()->sum('stock');
                $used_stock = $supplier_paper->SupplierPaperUsed()->sum('amount');
                $supplier_paper->stock =  $total_stock - $used_stock;
                $supplier_paper->save();

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
