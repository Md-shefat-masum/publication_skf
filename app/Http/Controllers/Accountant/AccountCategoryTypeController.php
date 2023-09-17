<?php

namespace App\Http\Controllers\Accountant;

use App\Http\Controllers\Controller;
use App\Models\Account\Account;
use App\Models\Account\AccountCategory;
use App\Models\Account\AccountCategoryType;
use App\Models\Order\Order;
use App\Models\Product\Brand;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class AccountCategoryTypeController extends Controller
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

        $query = AccountCategoryType::where('status', $status)
            ->select(['id', 'name', 'status'])
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
                    ->orWhere('id', 'LIKE', '%' . $key . '%');
            });
        }

        $users = $query->paginate($paginate);
        // $users = $query->get();
        return response()->json($users);
    }

    public function income_and_expense()
    {
        $paginate = (int) request()->paginate;
        $orderBy = request()->orderBy;
        $orderByType = request()->orderByType;

        $status = 1;
        if (request()->has('status')) {
            $status = request()->status;
        }

        $query = AccountCategoryType::where('status', $status)
            ->select(['id', 'name'])
            // ->orderBy($orderBy, $orderByType)
            ->with([
                'categories' => function ($q) {
                    return $q->select('id', 'title', 'type_id')
                        ->withSum([
                            'logs' => function ($q) {
                                $q->select(DB::raw("SUM(amount) as total"));
                                // ->whereMonth('date',Carbon::today()->format('m'))
                            }
                        ], 'total');
                }
            ]);

        if (request()->has('search_key')) {
            $key = request()->search_key;
            $query->where(function ($q) use ($key) {
                return $q->where('id', $key)
                    ->orWhere('id', 'LIKE', '%' . $key . '%');
            });
        }

        // $users = $query->paginate($paginate);
        $users = $query->get();
        return response()->json($users);
    }

    public function show($id)
    {
        $data = AccountCategoryType::where('id', $id)
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
            'name' => ['required', 'unique:account_category_types']
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = new AccountCategoryType();
        $data->name = $request->name;
        $data->creator = Auth::user()->id;
        $data->save();

        return response()->json($data, 200);
    }

    public function canvas_store(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'name' => ['required', 'unique:account_category_types']
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = new AccountCategoryType();
        $data->name = $request->name;
        $data->creator = Auth::user()->id;
        $data->save();
        $data->slug = $data->id . uniqid(5);
        $data->save();

        return response()->json($data, 200);
    }

    public function update()
    {
        $data = AccountCategoryType::find(request()->id);
        if (!$data) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['name' => ['user_role not found by given id ' . (request()->id ? request()->id : 'null')]],
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
        $data->update();

        return response()->json($data, 200);
    }

    public function canvas_update()
    {
        $data = AccountCategoryType::find(request()->id);
        if (!$data) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['name' => ['user_role not found by given id ' . (request()->id ? request()->id : 'null')]],
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
        $data->save();

        return response()->json($data, 200);
    }

    public function soft_delete()
    {
        $validator = Validator::make(request()->all(), [
            'id' => ['required', 'exists:account_category_types,id'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = AccountCategoryType::find(request()->id);
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
            'id' => ['required', 'exists:accounty_category_types,id'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = AccountCategoryType::find(request()->id);
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
            $check = AccountCategoryType::where('id', $item->id)->first();
            if (!$check) {
                try {
                    AccountCategoryType::create((array) $item);
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
