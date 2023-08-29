<?php

namespace App\Http\Controllers\Production\Supplier;

use App\Http\Controllers\Controller;
use App\Models\Production\SupplierPaper;
use App\Models\Production\SupplierPaperStock;
use App\Models\User\PhoneNumber;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class PaperStockController extends Controller
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

        $query = SupplierPaperStock::where('supplier_paper_stocks.status', $status)
            ->orderBy('supplier_paper_stocks.' . $orderBy, $orderByType);

        $query->join('supplier_papers', 'supplier_papers.id', '=', 'supplier_paper_stocks.supplier_paper_id');
        $query->select([
            'supplier_paper_stocks.*',
            'supplier_papers.id as supplier_papers_id',
            'supplier_papers.supplier_name',
            'supplier_papers.purchase_date',
        ]);

        if (request()->has('search_key')) {
            $key = request()->search_key;
            $query->where(function ($q) use ($key) {
                return $q->where('supplier_papers.supplier_name', $key)
                    ->orWhere('supplier_papers.supplier_name', 'LIKE', '%' . $key . '%');
            });
        }

        // $query->with(['supplier'=>function($q){
        //     return $q->select(['id','supplier_name']);
        // }]);
        $users = $query->paginate($paginate);
        return response()->json($users);
    }

    public function show($id)
    {
        $data = SupplierPaperStock::where('id', $id)->with('supplier')->first();
        if (!$data) {
            return response()->json([
                'err_message' => 'not found',
                'errors' => ['supplier_name' => ['data not found']],
            ], 422);
        }
        return response()->json($data, 200);
    }

    public function store(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'supplier_paper_id' => ['required'],
            'paper_name' => ['required'],
            'paper_type' => ['required'],
            'cost_per_paper' => ['required'],
            'cost_per_ream' => ['required'],
            'purchase_date' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = new SupplierPaperStock();
        $data->supplier_paper_id = $request->supplier_paper_id;
        $data->paper_name = $request->paper_name;
        $data->paper_type = $request->paper_type;
        $data->cost_per_paper = $request->cost_per_paper;
        $data->cost_per_ream = $request->cost_per_ream;
        $data->stock = $request->stock;
        $data->purchase_date = $request->purchase_date;
        $data->description = $request->description;
        $data->creator = Auth::user()->id;
        $data->save();

        $supplier_paper = SupplierPaper::find($data->supplier_paper_id);
        $supplier_paper_stock = $supplier_paper->SupplierPaperStock()->sum('stock') - $supplier_paper->SupplierPaperUsed()->sum('amount');
        $supplier_paper->stock = $supplier_paper_stock;
        $supplier_paper->save();

        return response()->json($data, 200);
    }

    public function canvas_store(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'supplier_name' => ['required', 'unique:product_writers']
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = new SupplierPaperStock();
        $data->supplier_name = $request->supplier_name;
        $data->description = $request->description;
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
        $data = SupplierPaperStock::find(request()->id);
        if (!$data) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['supplier_name' => ['data not found by given id ' . (request()->id ? request()->id : 'null')]],
            ], 422);
        }

        $validator = Validator::make(request()->all(), [
            'supplier_paper_id' => ['required'],
            'paper_name' => ['required'],
            'paper_type' => ['required'],
            'cost_per_paper' => ['required', 'numeric'],
            'cost_per_ream' => ['required', 'numeric'],
            'stock' => ['required', 'numeric'],
            'purchase_date' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data->supplier_paper_id = request()->supplier_paper_id;
        $data->paper_name = request()->paper_name;
        $data->paper_type = request()->paper_type;
        $data->cost_per_paper = request()->cost_per_paper;
        $data->cost_per_ream = request()->cost_per_ream;
        $data->stock = request()->stock;
        $data->purchase_date = request()->purchase_date;
        $data->description = request()->description;
        $data->creator = Auth::user()->id;
        $data->save();

        $supplier_paper = SupplierPaper::find($data->supplier_paper_id);
        $supplier_paper_stock = $supplier_paper->SupplierPaperStock()->sum('stock') - $supplier_paper->SupplierPaperUsed()->sum('amount');
        $supplier_paper->stock = $supplier_paper_stock;
        $supplier_paper->save();

        return response()->json($data, 200);
    }

    public function canvas_update()
    {
        $data = SupplierPaperStock::find(request()->id);
        if (!$data) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['supplier_name' => ['data not found by given id ' . (request()->id ? request()->id : 'null')]],
            ], 422);
        }

        $validator = Validator::make(request()->all(), [
            'supplier_name' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data->supplier_name = request()->supplier_name;
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

        $data = SupplierPaperStock::find(request()->id);
        $data->status = 0;
        $data->save();

        return response()->json([
            'result' => 'deactivated',
        ], 200);
    }

    public function destroy()
    {
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

        $data = SupplierPaperStock::find(request()->id);
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
            $check = SupplierPaperStock::where('id', $item->id)->first();
            if (!$check) {
                try {
                    SupplierPaperStock::create((array) $item);
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
