<?php

namespace App\Http\Controllers\Admin\Order;

use App\Http\Controllers\Controller;
use App\Models\Account\Account;
use App\Models\Account\AccountLog;
use App\Models\Order\Order;
use App\Models\Order\OrderPayment;
use App\Models\Product\Brand;
use App\Models\Settings\AppSettingTitle;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class PaymentRequestController extends Controller
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

        $query = OrderPayment::where('status', $status)
            ->with([
                'user',
                'order' => function ($q) {
                    return $q->with(['order_details', 'user']);
                }
            ])
            ->orderBy($orderBy, $orderByType);

        if (request()->has('search_key')) {
            $key = request()->search_key;
            $query->where(function ($q) use ($key) {
                return $q->where('id', $key)
                    ->orWhere('invoice_id', $key)
                    ->orWhere('invoice_id', 'LIKE', '%' . $key . '%')
                    ->orWhere('order_status', 'LIKE', '%' . $key . '%')
                    ->orWhere('payment_status', 'LIKE', '%' . $key . '%')
                    ->orWhere('delivery_method', 'LIKE', '%' . $key . '%');
            });
        }

        $users = $query->paginate($paginate);
        return response()->json($users);
    }

    public function approve()
    {
        $validator = Validator::make(request()->all(), [
            'payment_id' => ['required', 'exists:order_payments,id']
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $account_log = AccountLog::class;
        $order_payment = OrderPayment::find(request()->payment_id);
        if ($order_payment->approved == 1) {
            $order_payment->approved = 0;
            $order_payment->account_logs_id = null;
            $order_payment->save();
            AccountLog::where('id',$order_payment->account_logs_id)->delete();
            return response()->json("rejected");
        } else {

            $cash_acount = Account::where('name','cash')->first();
            $log = $account_log::create([
                'date' => Carbon::now()->toDateTimeString(),
                'category_id' => 30,
                'account_id' => $cash_acount->id,
                'is_income' => 1,
                'amount' => $order_payment->amount,
                'description' => 'branch payment accepted',
            ]);

            $order_payment->approved = 1;
            $order_payment->account_logs_id = $log->id;
            $order_payment->save();

            return response()->json("approved");
        }
    }

    public function show($id)
    {
        $data = OrderPayment::where('id', $id)
            ->with([
                'user',
                'order' => function ($q) {
                    return $q->with(['order_details', 'user']);
                }
            ])
            ->where('id', $id)
            ->first();

        if (!$data) {
            return response()->json([
                'err_message' => 'not found',
                'errors' => ['amount' => ['data not found']],
            ], 422);
        }
        return response()->json($data, 200);
    }

    public function store(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'name' => ['required', 'unique:brands']
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = new Brand();
        $data->name = $request->name;
        $data->creator = Auth::user()->id;
        $data->save();
        $data->slug = $data->id . uniqid(5);
        $data->save();

        return response()->json($data, 200);
    }

    public function canvas_store(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'amount' => ['required'],
            'payment_method' => ['required'],
            'trx_id' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = new Brand();
        $data->name = $request->name;
        $data->creator = Auth::user()->id;
        $data->save();
        $data->slug = $data->id . uniqid(5);
        $data->save();

        return response()->json($data, 200);
    }

    public function update()
    {
        $data = OrderPayment::find(request()->id);
        if (!$data) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['payment_method' => ['data not found by given id ' . (request()->id ? request()->id : 'null')]],
            ], 422);
        }

        $validator = Validator::make(request()->all(), [
            'id' => ['required'],
            'amount' => ['required'],
            'payment_method' => ['required'],
            'trx_id' => ['required'],
            'number' => ['required']
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data->id = request()->id;
        $data->number = request()->number;
        $data->account_no = request()->account_no;
        $data->trx_id = request()->trx_id;
        $data->amount = request()->amount;
        $data->save();

        return response()->json($data, 200);
    }

    public function canvas_update()
    {
        $data = Brand::find(request()->id);
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
            'id' => ['required', 'exists:categories,id'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = Brand::find(request()->id);
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
            'id' => ['required', 'exists:categories,id'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = Brand::find(request()->id);
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
            $check = Brand::where('id', $item->id)->first();
            if (!$check) {
                try {
                    Brand::create((array) $item);
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
