<?php

namespace App\Http\Controllers\Admin\Order;

use App\Http\Controllers\Controller;
use App\Models\Account\Account;
use App\Models\Account\AccountLog;
use App\Models\Account\AccountNumber;
use App\Models\Order\Order;
use App\Models\Order\OrderPayment;
use App\Models\Product\Brand;
use App\Models\Settings\AppSettingTitle;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
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

    public function all_dues()
    {
        $branches = User::whereExists(function($q){
            $q->select(DB::raw(1))
                ->from('user_user_role')
                ->where('user_role_id',4)
                ->whereColumn('users.id','user_user_role.user_id');
        })->get();

        $data = [];
        foreach ($branches as $branch) {
            $branch->total_bill = Order::where('order_status','!=','pending')->where('user_id',$branch->id)->sum('total_price');
            $branch->total_paid = Order::where('order_status','!=','pending')->where('user_id',$branch->id)->sum('total_paid');
            $branch->total_due = $branch->total_bill - $branch->total_paid;
        }

        $branches->sortBy('total_due')->where('total_bill','>',0)->all();
        foreach ($branches as $item) {
            $data[] = $item;
        }


        return $data;
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
        $order = Order::find($order_payment->order_id);
        if ($order_payment->approved == 1) {
            $order_payment->approved = 0;
            $order_payment->account_logs_id = null;
            $order_payment->save();

            $order->backup_sales_id = $order->sales_id;
            $order->sales_id = null; // remove sales id;
            $order->save();

            $log = $account_log::create([
                'date' => Carbon::now()->toDateTimeString(),
                "name" => $order_payment->user->first_name . " " . $order_payment->user->last_name,
                'amount' => - ($order_payment->amount),
                'category_id' => 1, // ponno theke ay
                'account_id' => $order_payment->account_id,
                'account_number_id' => $order_payment->account_number_id,
                'trx_id' => $order_payment->trx_id,
                'receipt_no' => request()->receipt_no,
                'is_income' => 1,
                'description' => 'admin rejected client payment',
            ]);

            return response()->json("rejected");
        } else {
            // $cash_acount = Account::where('name','cash')->first();
            $log = $account_log::create([
                'date' => Carbon::now()->toDateTimeString(),
                "name" => $order_payment->user->first_name . " " . $order_payment->user->last_name,
                'amount' => $order_payment->amount,
                'category_id' => 1, // ponno theke ay
                'account_id' => $order_payment->account_id,
                'account_number_id' => $order_payment->account_number_id,
                'trx_id' => $order_payment->trx_id,
                'receipt_no' => request()->receipt_no,
                'is_income' => 1,
                'description' => 'admin accepted payment',
            ]);

            $order_payment->approved = 1;
            $order_payment->account_logs_id = $log->id;
            $order_payment->save();

            if(!$order->sales_id){
                $this->set_sales_id($order);
            }

            return response()->json("approved");
        }
    }

    public function set_sales_id($order)
    {
        if(!$order->sales_id){
            $latest_sales_id = Order::orderBy('sales_id', 'DESC')->first();
            $sales_id = 10001;
            if ($latest_sales_id->sales_id) {
                $sales_id = $latest_sales_id->sales_id + 1;
            }
            $order->sales_id = $sales_id; // remove sales id;
            $order->save();
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

    public function check_orders_with_payments()
    {
        $order_payments = OrderPayment::whereIn('trx_id',request()->instument_no)
            ->with(['user'])
            ->select(['user_id','trx_id','amount','order_id'])
            ->get();
        return response()->json($order_payments);
        dd(request()->all());
    }

    public function save_orders_with_payments()
    {
        foreach (request()->trxs as $item) {
            $this->save_single_payment((object) $item);
        }
        return response()->json("success");
    }

    public function save_single_payment($item)
    {
        $order_payment = OrderPayment::where('trx_id',$item->trx_id)->first();

        if($order_payment && $order_payment->approved == 1 || !$order_payment){
            return 0;
        }

        $order_payment->approved = 1;
        $order_payment->save();

        $order = Order::find($item->order_id);
        $total_paid = OrderPayment::where('order_id', $order->id)->sum('amount');
        $order->total_paid = $total_paid;
        if ($total_paid < $order->total_price) {
            $order->payment_status =  'partially paid';
        }
        if ($total_paid == 0) {
            $order->payment_status =  'due';
        }
        if ($total_paid >= $order->total_price) {
            $order->payment_status =  'paid';
        }
        $order->save();

        if(!$order->sales_id){
            $payment_controller = new PaymentRequestController();
            $payment_controller->set_sales_id($order);
        }

        $log = AccountLog::create([
            'date' => Carbon::now()->toDateTimeString(),
            "name" => $order_payment->user->first_name." ".$order_payment->user->last_name,
            'amount' => $order_payment->amount,
            'category_id' => 1, // ponno theke ay
            'account_id' => $order_payment->account_id,
            'account_number_id' => $order_payment->account_number_id,
            'trx_id' => $order_payment->trx_id,
            'receipt_no' => $order->sales_id,
            'is_income' => 1,
            'description' => 'admin received and inserted client payment',
        ]);

        $order_payment->account_logs_id = $log->id;
        $order_payment->save();
    }
}
