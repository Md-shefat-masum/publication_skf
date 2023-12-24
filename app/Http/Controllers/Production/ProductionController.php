<?php

namespace App\Http\Controllers\Production;

use App\Http\Controllers\Controller;
use App\Models\Product\Product;
use App\Models\Product\ProductDiscount;
use App\Models\Product\ProductStockLog;
use App\Models\Production\Production;
use App\Models\Production\ProductionCost;
use App\Models\Production\ProductionDesigner;
use App\Models\Production\ProductionRelatedSuppliers;
use App\Models\Production\ProductionStatus;
use App\Models\Production\ProductionUsedPaper;
use App\Models\Production\SupplierBinding;
use App\Models\Production\SupplierPaper;
use App\Models\Production\SupplierPrint;
use App\Models\ProductionSupplier;
use App\Models\User\PhoneNumber;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class ProductionController extends Controller
{
    public function all()
    {
        $paginate = (int) request()->paginate;
        $orderBy = request()->orderBy;
        $orderByType = request()->orderByType;

        $status = 1;
        if (request()->has('status')) {
            $status = request()->status;
        }

        $query = Production::where('status', $status)
            ->orderBy($orderBy, $orderByType);

        if (request()->has('search_key')) {
            $key = request()->search_key;
            $query->where(function ($q) use ($key) {
                return $q->where('id', $key);
                // ->orWhere('name', $key)
                // ->orWhere('name', 'LIKE', '%' . $key . '%');
            });
        }

        $users = $query->paginate($paginate);
        return response()->json($users);
    }

    public function running_productions()
    {
        $data = Production::where('is_complete',0)->get();
        return $data;
    }

    public function show($id)
    {
        $data = Production::where('id', $id)->first();
        $data->product = Product::find($data->product_id);
        $data->binding = SupplierBinding::find($data->supplier_bindings_id);
        $data->print = SupplierPrint::find($data->supplier_prints_id);
        $data->design = ProductionDesigner::find($data->book_cover_designer);
        $data->related_suppliers = $data->related_suppliers()->get();
        $data->paper_suppliers = $data->suppliers()
            ->select([
                'production_used_papers.id',
                'production_used_papers.production_id',
                'production_used_papers.supplier_paper_id',
                'production_used_papers.amount',

                'supplier_papers.id as supplier_papers_id',
                'supplier_papers.supplier_name',
                'supplier_papers.stock',
            ])
            ->join('supplier_papers', 'supplier_papers.id', '=', 'production_used_papers.supplier_paper_id')
            ->get();

        if (!$data) {
            return response()->json([
                'err_message' => 'not found',
                'errors' => ['name' => ['data not found']],
            ], 422);
        }
        return response()->json($data, 200);
    }

    public function update_supplier_present_stock($supplier_id)
    {
        $supplier_paper = SupplierPaper::find($supplier_id);
        $total_stock = $supplier_paper->SupplierPaperStock()->sum('stock');
        $user_paper = $supplier_paper->SupplierPaperUsed()->sum('amount');
        $supplier_paper_stock = $total_stock - $user_paper;
        $supplier_paper->stock = $supplier_paper_stock;
        $supplier_paper->save();
    }

    public function store(Request $request)
    {

        $validator = Validator::make(request()->all(), [
            'product_id' => ['required'],
            'print_qty' => ['required'],
            // 'paper_amount' => ['required'],
            // 'book_cover_designer' => ['required'],
            // 'supplier_prints_id' => ['required'],
            // 'supplier_bindings_id' => ['required'],
            'status' => ['required'],
            'description' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        // dd(request()->all(), $categories);

        $categories = json_decode(request()->categories);
        $data = Production::create(request()->except(['status', 'description', 'paper_supplier','categories']));
        $data->creator = Auth::user()->id;
        $data->save();

        ProductionRelatedSuppliers::where('production_id', $data->id)->delete();
        foreach ($categories as $categroy) {
            $supplier = ProductionSupplier::where('category_id',$data->id)
                ->where('name',$categroy->selected_name)->first();

            if(($categroy->selected_name && !$categroy->selected_id) || !$supplier && $categroy->selected_name){
                $supplier = ProductionSupplier::create([
                    'category_id' => $categroy->id,
                    'name' => $categroy->selected_name,
                ]);
                $categroy->selected_id = $supplier->id;
            }

            if($categroy->selected_name && $categroy->selected_id ){
                ProductionRelatedSuppliers::create([
                    'production_id' => $data->id,
                    'product_id' => $data->product_id,
                    'category_id' => $categroy->id,
                    'supplier_id' => $categroy->selected_id,

                    'category_name' => $categroy->title,
                    'supplier_name' => $categroy->selected_name,

                    'amount' => $categroy->amount,
                    'price' => $categroy->price,
                    'order_number' => $categroy->order_number,
                    'comment' => $categroy->comment,

                    'creator' => auth()->user()->id,
                ]);
            }
        }

        $production_status = ProductionStatus::create([
            "production_id" => $data->id,
            "status" => request()->status,
            "description" => request()->description,
        ]);

        $total_paper_amount = 0;
        foreach (request()->paper_supplier as $item) {
            $item['production_id'] = $data->id;
            ProductionUsedPaper::create($item);
            $total_paper_amount += $item['amount'];

            $this->update_supplier_present_stock($item['supplier_paper_id']);
        }

        $data->paper_amount = $total_paper_amount;
        $data->save();

        return response()->json($data, 200);
    }

    public function store_old(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'product_id' => ['required'],
            // 'paper_amount' => ['required'],
            'print_qty' => ['required'],
            'book_cover_designer' => ['required'],
            'supplier_prints_id' => ['required'],
            'supplier_bindings_id' => ['required'],
            'status' => ['required'],
            'description' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = Production::create(request()->except(['status', 'description', 'paper_supplier']));
        $data->creator = Auth::user()->id;
        $data->save();

        $production_status = ProductionStatus::create([
            "production_id" => $data->id,
            "status" => request()->status,
            "description" => request()->description,
        ]);

        $total_paper_amount = 0;
        foreach (request()->paper_supplier as $item) {
            $item['production_id'] = $data->id;
            ProductionUsedPaper::create($item);
            $total_paper_amount += $item['amount'];

            $this->update_supplier_present_stock($item['supplier_paper_id']);
        }

        $data->paper_amount = $total_paper_amount;
        $data->save();

        return response()->json($data, 200);
    }

    public function store_cost(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'product_id' => ['required'],
            'design_cost' => ['required'],
            'printing_cost' => ['required'],
            'binding_cost' => ['required'],
            'other_cost' => ['required'],
            'sales_price' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = ProductionCost::create(request()->all());
        $data->save();

        $product = Product::find(request()->product_id);
        $product->cost = $data->final_cost;
        $product->sales_price = $data->sales_price;
        $product->save();

        $discount = ProductDiscount::where('product_id', $product->id)
            ->whereDate('expire_date', '>=', Carbon::now()->toDateString())
            ->orderBy('id', 'desc')
            ->first();

        if ($discount) {
            $discount->main_price = $data->sales_price;
            $discount->save();
        }

        return response()->json($data, 200);
    }

    public function canvas_store(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'name' => ['required']
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = new ProductionDesigner();
        $data->name = $request->name;
        $data->creator = Auth::user()->id;
        $data->save();

        if (request()->has('image')) {
            $data->image = Storage::put('uploads/writers', request()->file('image'));
        }
        $data->save();

        return response()->json($data, 200);
    }

    public function update()
    {
        $data = Production::find(request()->id);
        if (!$data) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['production_description' => ['data not found by given id ' . (request()->id ? request()->id : 'null')]],
            ], 422);
        }

        $validator = Validator::make(request()->all(), [
            'product_id' => ['required'],
            // 'paper_amount' => ['required'],
            'print_qty' => ['required'],
            // 'book_cover_designer' => ['required'],
            // 'supplier_prints_id' => ['required'],
            // 'supplier_bindings_id' => ['required'],
            // 'status' => ['required'],
            // 'description' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data->fill(request()->except(['status', 'description', 'paper_supplier', 'categories']));
        $data->save();

        $categories = json_decode(request()->categories);
        ProductionRelatedSuppliers::where('production_id', $data->id)->delete();
        foreach ($categories as $categroy) {
            $supplier = ProductionSupplier::where('category_id',$data->id)
                ->where('name',$categroy->selected_name)->first();

            if(($categroy->selected_name && !$categroy->selected_id) || !$supplier && $categroy->selected_name){
                $supplier = ProductionSupplier::create([
                    'category_id' => $categroy->id,
                    'name' => $categroy->selected_name,
                ]);
                $categroy->selected_id = $supplier->id;
            }

            if($categroy->selected_name && $categroy->selected_id ){
                ProductionRelatedSuppliers::create([
                    'production_id' => $data->id,
                    'product_id' => $data->product_id,
                    'category_id' => $categroy->id,
                    'supplier_id' => $categroy->selected_id,

                    'category_name' => $categroy->title,
                    'supplier_name' => $categroy->selected_name,

                    'amount' => $categroy->amount,
                    'price' => $categroy->price,
                    'order_number' => $categroy->order_number,
                    'comment' => $categroy->comment,

                    'creator' => auth()->user()->id,
                ]);
            }
        }

        $total_paper_amount = 0;

        // delete record if supplier id not in new selection
        $supplier_papers_ids = [];
        foreach (request()->paper_supplier as $item) {
            $supplier_papers_ids[] = $item["supplier_paper_id"];
        }

        // update previous used amount to 0 then update from request amount
        $production_suppliers = $data->suppliers()->get();
        foreach ($production_suppliers as $item) {
            $item->amount = 0;
            $item->save();
            $this->update_supplier_present_stock($item->supplier_paper_id);
            $item->delete();
        }

        ProductionUsedPaper::where('production_id', $data->id)
            ->whereNotIn('supplier_paper_id', $supplier_papers_ids)
            ->delete();

        foreach (request()->paper_supplier as $item) {
            // $supplier_papers_ids[] = $item["supplier_paper_id"];
            $item['production_id'] = $data->id;
            ProductionUsedPaper::updateOrCreate(
                $item,
                [
                    "production_id" => $item["production_id"],
                    "supplier_paper_id" => $item["supplier_paper_id"],
                ]
            );
            $total_paper_amount += $item['amount'];
            $this->update_supplier_present_stock($item['supplier_paper_id']);
        }

        $data->paper_amount = $total_paper_amount;
        $data->save();

        return response()->json($data, 200);
    }

    public function update_status()
    {
        $data = Production::find(request()->id);
        if (!$data) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['production_description' => ['data not found by given id ' . (request()->id ? request()->id : 'null')]],
            ], 422);
        }

        $validator = Validator::make(request()->all(), [
            'status' => ['required'],
            'description' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $production_status = ProductionStatus::create([
            "production_id" => $data->id,
            "status" => request()->status,
            "description" => request()->description,
        ]);

        return $production_status;
    }

    public function complete_production()
    {
        $data = Production::find(request()->id);
        if (!$data) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['production_description' => ['data not found by given id ' . (request()->id ? request()->id : 'null')]],
            ], 422);
        }

        $validator = Validator::make(request()->all(), [
            'qty' => ['required'],
            'description' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        if($data->is_complete == 0){
            $data->is_complete = 1;
            $data->final_print_qty = request()->qty;
            $data->save();

            $production_status = ProductionStatus::create([
                "production_id" => $data->id,
                "status" => "complete",
                "description" => request()->description,
            ]);

            $stock_log = ProductStockLog::create([
                'product_id' => $data->product_id,
                'qty' => request()->qty,
                'type' => "production",
                'productions_id' => $data->id,
            ]);

            $product = Product::find($data->product_id);
            if ($product) {
                $product->total_stock = $product->stock;
                $product->total_sales = $product->sales;
                $product->is_in_stock = ($product->stock - $product->stock_alert_qty) > $product->sales;
                $product->save();
            }
        }

        return $data;
    }

    public function canvas_update()
    {
        $data = Production::find(request()->id);
        if (!$data) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['name' => ['data not found by given id ' . (request()->id ? request()->id : 'null')]],
            ], 422);
        }

        $validator = Validator::make(request()->all(), [
            'name' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data->name = request()->name;
        $data->designation = request()->designation;
        $data->address = request()->address;
        $data->description = request()->description;
        $data->creator = Auth::user()->id;
        $data->save();

        if (request()->has('image')) {
            $data->image = Storage::put('uploads/writers', request()->file('image'));
        }
        $data->save();
        $data->update();

        return response()->json($data, 200);
    }

    public function soft_delete()
    {
        $validator = Validator::make(request()->all(), [
            'id' => ['required', 'exists:product_writers,id'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = Production::find(request()->id);
        $data->status = 0;
        $data->save();

        return response()->json([
            'result' => 'deactivated',
        ], 200);
    }

    public function destroy()
    {
        $validator = Validator::make(request()->all(), [
            'id' => ['required', 'exists:productions,id'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = Production::find(request()->id);
        if($data->is_complete == 0){
            ProductionUsedPaper::where('production_id',$data->id)->delete();
            $data->delete();
        }

        return 'production deleted';
    }

    public function restore()
    {
        $validator = Validator::make(request()->all(), [
            'id' => ['required', 'exists:product_writers,id'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = Production::find(request()->id);
        $data->status = 1;
        $data->save();

        return response()->json([
            'result' => 'activated',
        ], 200);
    }

    public function bulk_import()
    {
        $validator = Validator::make(request()->all(), [
            'data' => ['required', 'array'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        foreach (request()->data as $item) {
            $item['created_at'] = $item['created_at'] ? Carbon::parse($item['created_at']) : Carbon::now()->toDateTimeString();
            $item['updated_at'] = $item['updated_at'] ? Carbon::parse($item['updated_at']) : Carbon::now()->toDateTimeString();
            $item = (object) $item;
            $check = Production::where('id', $item->id)->first();
            if (!$check) {
                try {
                    Production::create((array) $item);
                } catch (\Throwable $th) {
                    return response()->json([
                        'err_message' => 'validation error',
                        'errors' => $th->getMessage(),
                    ], 400);
                }
            }
        }

        return response()->json('success', 200);
    }
}
