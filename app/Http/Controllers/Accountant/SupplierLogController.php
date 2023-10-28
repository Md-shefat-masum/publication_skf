<?php

namespace App\Http\Controllers\Accountant;

use App\Http\Controllers\Controller;
use App\Models\Account\AccountCategory;
use App\Models\Account\AccountEntry;
use App\Models\Account\AccountLog;
use App\Models\Account\AccountSupplierLog;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class SupplierLogController extends Controller
{
    public function all()
    {
        $paginate = (int) request()->paginate;
        $orderBy = request()->orderBy;
        $orderByType = request()->orderByType;

        // $status = 1;
        // if (request()->has('status')) {
        //     $status = request()->status;
        // }

        $query = AccountSupplierLog::orderBy($orderBy, $orderByType);

        // if (request()->has('search_key')) {
        //     $key = request()->search_key;
        //     $query->where(function ($q) use ($key) {
        //         return $q->where('id', $key)
        //             ->orWhere('id', 'LIKE', '%' . $key . '%');
        //     });
        // }

        $query->where('supplier_id',request()->supplier_id);
        $query->where('supplier_type',request()->supplier_type);
        $query->where('payment_type',request()->payment_type);

        if(request()->payment_type == 'payment'){
            $query->with([
                'ac_log' => function($q){
                    $q->with(['account','account_number']);
                }
            ]);
        }

        $data = $query->paginate($paginate);

        $query = AccountSupplierLog::where('supplier_id',request()->supplier_id);
        $query->where('supplier_type',request()->supplier_type);
        $query->where('payment_type',request()->payment_type);
        $total_amount = $query->sum('amount');

        return response()->json([
            "data" => $data,
            "total_amount" => $total_amount,
        ]);
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
            'date' => ['required'],
            'name' => ['required'],
            'amount' => ['required','numeric'],
            'payment_type' => ['required'],
            'supplier_type' => ['required'],
            'supplier_id' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = new AccountSupplierLog();

        if(request()->payment_type == "payment"){
            $category = null;
            $payment_method = json_decode(request()->payment_method);
            if(request()->supplier_type == 'paper'){
                $category = AccountCategory::where('title', 'কাগজ ক্রয়')->first();
            }
            if(request()->supplier_type == 'binding'){
                $category = AccountCategory::where('title', 'বাইন্ডিং')->first();
            }
            if(request()->supplier_type == 'printing'){
                $category = AccountCategory::where('title', 'প্রিন্টিং ও ছাপা বিল')->first();
            }

            $ac_log = AccountLog::create([
               'date' => request()->date,
               'category_id' => $category->id,
               'account_id' => request()->account_id,
               'account_number_id' => $payment_method->id,
               'trx_id' => request()->trx_id,
               'is_expense' => 1,
               'is_income' => 0,
               'amount' => request()->amount,
               'description' => request()->description,
            ]);

            $data->account_log_id = $ac_log->id;
        }

        $data->date = request()->date;
        $data->name = request()->name;
        $data->amount = request()->amount;
        $data->payment_type = request()->payment_type;
        $data->supplier_type = request()->supplier_type;
        $data->supplier_id = request()->supplier_id;
        $data->description = request()->description;
        $data->save();

        if(request()->hasFile('attachment')){
            $path = Storage::putFile('uploads/supplier_payments',request()->file('attachment'));
            $data->attachment = $path;
        }

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
