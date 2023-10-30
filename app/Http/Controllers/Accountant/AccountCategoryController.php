<?php

namespace App\Http\Controllers\Accountant;

use App\Http\Controllers\Controller;
use App\Models\Account\Account;
use App\Models\Account\AccountCategory;
use App\Models\Account\AccountCategoryType;
use App\Models\Account\AccountLog;
use App\Models\Order\Order;
use App\Models\Product\Brand;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class AccountCategoryController extends Controller
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

        $query = AccountCategory::where('status', $status)
            ->select(['id', 'title', 'type_id', 'status'])
            ->orderBy($orderBy, $orderByType)
            ->withSum([
                'logs' => function ($q) {
                    $q->where('is_income', 1)->select(DB::raw("SUM(amount) as total_income"));
                    // ->whereMonth('date',Carbon::today()->format('m'))
                }
            ], 'total_income')
            ->withSum([
                'logs' => function ($q) {
                    $q->where('is_expense', 1)->select(DB::raw("SUM(amount) as total_expense"));
                    // ->whereMonth('date',Carbon::today()->format('m'))
                }
            ], 'total_expense');
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

    public function all_income_categories()
    {
        $categories = AccountCategory::where('status', 1)->where('type_id', 1)->orderBy('title', 'ASC')->get();
        return response()->json($categories);
    }

    public function all_expense_categories()
    {
        $categories = AccountCategory::where('status', 1)->where('type_id', 2)->orderBy('title', 'ASC')->get();
        return response()->json($categories);
    }

    public function income_and_expense()
    {
        $from = request()->from;
        $to = request()->to;

        $data = AccountCategoryType::select(['id', 'name'])
            ->with([
                'categories' => function ($q) {
                    return $q->select('id', 'title', 'type_id');
                }
            ])->get();

        $total_income = 0;
        $total_expense = 0;
        foreach ($data as $type) {
            foreach ($type->categories as $category) {
                if($type->id == 1){
                    $total_income += $category->logs_sum_total = AccountLog::whereBetween('date',[$from,$to])->where('category_id',$category->id)->where('is_income',1)->sum('amount');
                }else{
                    $total_expense += $category->logs_sum_total = AccountLog::whereBetween('date',[$from,$to])->where('category_id',$category->id)->where('is_expense',1)->sum('amount');
                }
            }
        }

        return response()->json([
            "data" => $data,
            "total_income" => $total_income,
            "total_expense" => $total_expense,
        ]);
    }

    public function previous_extra_money()
    {
        $from = request()->from;
        $income = AccountLog::where('date', '<', $from)->where('is_income', 1)->sum('amount');
        $expense = AccountLog::where('date', '<', $from)->where('is_expense', 1)->sum('amount');
        $extra_money = $income - $expense;
        return $extra_money;
    }
    public function show($id)
    {
        $data = AccountCategory::where('id', $id)
            ->where('id', $id)
            ->with('type')
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
            'title' => ['required', 'unique:account_categories'],
            'type_id' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = new AccountCategory();
        $data->title = $request->title;
        $data->type_id = $request->type_id;
        $data->description = $request->description;
        $data->creator = Auth::user()->id;
        $data->save();

        return response()->json($data, 200);
    }

    public function canvas_store(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'name' => ['required', 'unique:account_categories'],
            'title' => ['required']
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = new AccountCategory();
        $data->name = $request->name;
        $data->type_id = $request->type_id;
        $data->creator = Auth::user()->id;
        $data->save();

        return response()->json($data, 200);
    }

    public function update()
    {
        $data = AccountCategory::find(request()->id);
        if (!$data) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['name' => ['data not found by given id ' . (request()->id ? request()->id : 'null')]],
            ], 422);
        }

        $validator = Validator::make(request()->all(), [
            'title' => ['required'],
            'type_id' => ['required']
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data->title = request()->title;
        $data->type_id = request()->type_id;
        $data->description = request()->description;
        $data->update();

        return response()->json($data, 200);
    }

    public function canvas_update()
    {
        $data = AccountCategory::find(request()->id);
        if (!$data) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['title' => ['data not found by given id ' . (request()->id ? request()->id : 'null')]],
            ], 422);
        }

        $validator = Validator::make(request()->all(), [
            'title' => ['required'],
            'type_id' => ['required']
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data->title = request()->title;
        $data->type_id = request()->type_id;
        $data->save();

        return response()->json($data, 200);
    }

    public function soft_delete()
    {
        $validator = Validator::make(request()->all(), [
            'id' => ['required', 'exists:account_categories,id'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = AccountCategory::find(request()->id);
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
            'id' => ['required', 'exists:account_categoriess,id'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = AccountCategory::find(request()->id);
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
            $check = AccountCategory::where('id', $item->id)->first();
            if (!$check) {
                try {
                    AccountCategory::create((array) $item);
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
