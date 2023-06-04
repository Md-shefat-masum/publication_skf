<?php

namespace App\Http\Controllers\Production;

use App\Http\Controllers\Controller;
use App\Models\Product\Product;
use App\Models\Production\Production;
use App\Models\Production\ProductionDesigner;
use App\Models\Production\ProductionStatus;
use App\Models\Production\SupplierBinding;
use App\Models\Production\SupplierPrint;
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

    public function show($id)
    {
        $data = Production::where('id', $id)->first();
        $data->product = Product::find($data->product_id);
        $data->binding = SupplierBinding::find($data->supplier_bindings_id);
        $data->print = SupplierPrint::find($data->supplier_prints_id);
        $data->design = ProductionDesigner::find($data->book_cover_designer);

        if (!$data) {
            return response()->json([
                'err_message' => 'not found',
                'errors' => ['name' => ['data not found']],
            ], 422);
        }
        return response()->json($data, 200);
    }

    public function store(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'product_id' => ['required'],
            'paper_amount' => ['required'],
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

        $data = Production::create(request()->except(['status', 'description']));
        $data->creator = Auth::user()->id;
        $data->save();

        $production_status = ProductionStatus::create([
            "production_id" => $data->id,
            "status" => request()->status,
            "description" => request()->description,
        ]);

        $data->status = $production_status->status;
        $data->description = $production_status->description;
        $data->status_id = $production_status->id;

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
            'paper_amount' => ['required'],
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

        $data->fill(request()->except(['status', 'description']));
        $data->save();

        $production_status = ProductionStatus::create([
            "production_id" => $data->id,
            "status" => request()->status,
            "description" => request()->description,
        ]);

        $data->status = $production_status->status;
        $data->description = $production_status->description;
        $data->status_id = $production_status->id;

        return response()->json($data, 200);
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
