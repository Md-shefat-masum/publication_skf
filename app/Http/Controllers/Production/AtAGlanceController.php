<?php

namespace App\Http\Controllers\Production;

use App\Http\Controllers\Controller;
use App\Models\Product\Product;
use App\Models\Production\Production;
use Illuminate\Http\Request;

class AtAGlanceController extends Controller
{
    public function at_a_glance()
    {
        $at_a_glance = [
            "total_products" => 0,
            "outstock_products" => 0,
            "instock_products" => 0,

            "total_production" => 0,
            "running_production" => 0,
            "complete_production" => 0,
        ];

        $at_a_glance["total_products"] = Product::count();
        $at_a_glance["outstock_products"] = Product::where('is_in_stock', 0)->count();
        $at_a_glance["instock_products"] = Product::where('is_in_stock', 1)->count();

        $at_a_glance["total_production"] = Production::count();
        $at_a_glance["running_production"] = Production::where('is_complete',0)->count();
        $at_a_glance["complete_production"] = Production::where('is_complete',1)->count();

        return $at_a_glance;
    }
}
