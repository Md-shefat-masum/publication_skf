<?php

namespace App\Http\Controllers\Accountant;

use App\Http\Controllers\Controller;
use App\Models\Account\AccountCategory;
use App\Models\Account\AccountEntry;
use App\Models\Account\AccountLog;
use App\Models\Account\AccountLogAttachment;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class AccountEntryController extends Controller
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

        $query = AccountEntry::where('status', $status)
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

    public function show($id)
    {
        $data = AccountEntry::where('id', $id)
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
            'category' => ['required'],
            'amount' => ['required'],
            'account_id' => ['required'],
            'description' => ['required'],
            'trx_id' => ['required'],
            // 'attachments' => ['required']
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $category = AccountCategory::find($request->category);

        $payment_method = (object) [];
        try {
            $payment_method = json_decode(request()->payment_method);
        } catch (\Throwable $th) {
        }

        $account_log = new AccountLog();
        $account_log->date = Carbon::now()->toDateString();
        $account_log->category_id = $category->id;
        $account_log->trx_id = $request->trx_id;
        $account_log->receipt_no = $request->receipt_no;
        $account_log->account_id = $request->account_id;
        $account_log->account_number_id = $payment_method->id ?? 0;
        $account_log->is_expense = 0;
        $account_log->is_income = 1;
        $account_log->amount = $request->amount;
        $account_log->description = request()->description;
        $account_log->creator = Auth::user()->id;
        $account_log->save();

        if (request()->hasFile('attachments')) {
            foreach (request()->file('attachments') as $file) {
                try {
                    AccountLogAttachment::create([
                        'account_log_id' => $account_log->id,
                        'attachment' => Storage::put('uploads/account_logs', $file),
                    ]);
                } catch (\Throwable $th) {
                }
            }
        }

        return response()->json($account_log, 200);
    }

    public function expense(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'category' => ['required'],
            'amount' => ['required'],
            'account_id' => ['required'],
            'description' => ['required'],
            'trx_id' => ['required'],
            // 'attachments' => ['required']
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $category = AccountCategory::find($request->category);

        $payment_method = (object) [];
        try {
            $payment_method = json_decode(request()->payment_method);
        } catch (\Throwable $th) {
        }

        $account_log = new AccountLog();
        $account_log->date = Carbon::now()->toDateString();
        $account_log->category_id = $category->id;
        $account_log->trx_id = $request->trx_id;
        $account_log->account_id = $request->account_id;
        $account_log->account_number_id = $payment_method->id ?? 0;
        $account_log->is_expense = 1;
        $account_log->is_income = 0;
        $account_log->amount = $request->amount;
        $account_log->description = request()->description;
        $account_log->creator = Auth::user()->id;
        $account_log->save();

        if (request()->hasFile('attachments')) {
            foreach (request()->file('attachments') as $file) {
                try {
                    AccountLogAttachment::create([
                        'account_log_id' => $account_log->id,
                        'attachment' => Storage::put('uploads/account_logs', $file),
                    ]);
                } catch (\Throwable $th) {
                }
            }
        }

        return response()->json($account_log, 200);
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

        $data = new AccountEntry();
        $data->name = $request->name;
        $data->type_id = $request->type_id;
        $data->creator = Auth::user()->id;
        $data->save();

        return response()->json($data, 200);
    }

    public function update()
    {
        $data = AccountEntry::find(request()->id);
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
        $data = AccountEntry::find(request()->id);
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

        $data = AccountEntry::find(request()->id);
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

        $data = AccountEntry::find(request()->id);
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
            $check = AccountEntry::where('id', $item->id)->first();
            if (!$check) {
                try {
                    AccountEntry::create((array) $item);
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
