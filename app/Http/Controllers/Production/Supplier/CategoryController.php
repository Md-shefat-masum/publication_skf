<?php

namespace App\Http\Controllers\Production\Supplier;

use App\Http\Controllers\Controller;
use App\Models\Account\Account;
use App\Models\Account\AccountCategory;
use App\Models\Account\AccountCategoryType;
use App\Models\Order\Order;
use App\Models\Product\Brand;
use App\Models\ProductionSupplierCategory;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class CategoryController extends Controller
{
    public function all_json()
    {
        return response()->json(ProductionSupplierCategory::orderBy("title",'ASC')->get(), 200);
    }

    public function all_with_suppliers()
    {
        return response()->json(ProductionSupplierCategory::orderBy("title",'ASC')->with('suppliers')->get(), 200);
    }

    public function all()
    {
        $paginate = (int) request()->paginate;
        $orderBy = request()->orderBy;
        $orderByType = request()->orderByType;

        $status = 1;
        if (request()->has('status')) {
            $status = request()->status;
        }

        $query = ProductionSupplierCategory::select(['id', 'title'])
            ->orderBy($orderBy, $orderByType)

            // ->with([
            //     'categories' => function($q){
            //         return $q->select('id','title','type_id')
            //             ->withSum([
            //                 'logs' => function($q){
            //                     $q->select(DB::raw("SUM(amount) as total"));
            //                     // ->whereMonth('date',Carbon::today()->format('m'))
            //                 }
            //             ],'total');
            //     }
            // ])
        ;

        if (request()->has('search_key')) {
            $key = request()->search_key;
            $query->where(function ($q) use ($key) {
                return $q->where('id', $key)
                    ->orWhere('title',$key)
                    ->orWhere('id', 'LIKE', '%' . $key . '%');
            });
        }

        $users = $query->paginate($paginate);
        // $users = $query->get();
        return response()->json($users);
    }


    public function show($id)
    {
        $data = ProductionSupplierCategory::where('id', $id)
            ->where('id', $id)
            ->first();

        if (!$data) {
            return response()->json([
                'err_message' => 'not found',
                'errors' => ['role' => ['data not found']],
            ], 422);
        }
        return response()->json($data, 200);
    }

    public function store(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'title' => ['required']
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = new ProductionSupplierCategory();
        $data->title = $request->title;
        $data->category_id = $request->category_id;
        $data->save();

        return response()->json($data, 200);
    }

    public function canvas_store(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'title' => ['required']
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = new ProductionSupplierCategory();
        $data->title = $request->title;
        $data->category_id = $request->category_id;
        $data->save();

        return response()->json($data, 200);
    }


    public function update()
    {
        $data = ProductionSupplierCategory::find(request()->id);
        if (!$data) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['title' => ['data not found by given id ' . (request()->id ? request()->id : 'null')]],
            ], 422);
        }

        $validator = Validator::make(request()->all(), [
            'title' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data->name = request()->name;
        $data->update();

        return response()->json($data, 200);
    }

    public function canvas_update()
    {
        $data = ProductionSupplierCategory::find(request()->id);
        if (!$data) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['title' => ['data not found by given id ' . (request()->id ? request()->id : 'null')]],
            ], 422);
        }

        $validator = Validator::make(request()->all(), [
            'title' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data->title = request()->title;
        $data->save();

        return response()->json($data, 200);
    }

    public function soft_delete()
    {
        $validator = Validator::make(request()->all(), [
            'id' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = ProductionSupplierCategory::find(request()->id);
        $data->delete();

        return response()->json([
            'result' => 'deactivated',
        ], 200);
    }

    public function destroy()
    {
        $data = ProductionSupplierCategory::find(request()->id);
        $data->delete();

        return response()->json([
            'result' => 'deactivated',
        ], 200);
    }

    public function restore()
    {
        $validator = Validator::make(request()->all(), [
            'id' => ['required', 'exists:accounty_category_types,id'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = ProductionSupplierCategory::find(request()->id);
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
            $check = ProductionSupplierCategory::where('id', $item->id)->first();
            if (!$check) {
                try {
                    ProductionSupplierCategory::create((array) $item);
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
