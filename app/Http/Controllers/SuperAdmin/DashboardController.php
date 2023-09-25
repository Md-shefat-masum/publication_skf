<?php

namespace App\Http\Controllers\SuperAdmin;

use App\Http\Controllers\Controller;
use App\Models\Account\AccountCategoryType;
use App\Models\Account\AccountLog;
use App\Models\Order\Order;
use App\Models\Order\OrderPayment;
use App\Models\Product\Brand;
use App\Models\Product\Category;
use App\Models\Product\Product;
use App\Models\User\Customer;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function info() {
        $total_customer = Customer::count();
        $total_expense = AccountLog::where('is_expense', 1)->sum('amount');
        $total_products = Product::where('status', 1)->count();
        $total_ecommerce_order = Order::where('order_type', 'ecommerce')->sum('total_paid');

        $total_categories = Category::where('status', 1)->count();
        $total_Brands = Brand::where('status', 1)->count();
        $total_order = Order::where('status', 1)->count();
        $pending_order = Order::where('order_status', 'pending')->where('status', 1)->count();
        $canceled_order = Order::where('order_status', 'canceled')->where('status', 1)->count();
        $accepted_order = Order::where('order_status', 'accepted')->where('status', 1)->count();  


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
        $income_expense_list = $query->get();
        

        $data = array();
        $data['income_expense_data'] = [
            'total_customer' => $total_customer,
            'total_expense' => $total_expense,
            'total_ecommerce_order' => $total_ecommerce_order,
            'total_products' => $total_products
        ];

        $data['ecommerce_data'] = [
            'total_categories' => $total_categories,
            'total_brands' => $total_Brands,
            'total_order' => $total_order,
            'pending_order' => $pending_order,
            'canceled_order' => $canceled_order,
            'accepted_order' => $accepted_order
        ];

        $data['income_expense_list']=$income_expense_list;

        return response()->json($data, 200);
    }

    public function monthly_infos() {
        $total_customer = Customer::whereBetween('created_at', [request()->from_date, request()->to_date])->count();

        $total_expense = AccountLog::whereBetween('created_at', [request()->from_date, request()->to_date])
        ->where('is_expense', 1)->sum('amount');

        $total_products = Product::whereBetween('created_at', [request()->from_date, request()->to_date])
        ->where('status', 1)->count();

        $total_ecommerce_order = Order::whereBetween('created_at', [request()->from_date, request()->to_date])
        ->where('order_type', 'ecommerce')->sum('total_paid');

        $total_categories = Category::where('status', 1)->whereBetween('created_at', [request()->from_date, request()->to_date])->count();
        $total_Brands = Brand::where('status', 1)->whereBetween('created_at', [request()->from_date, request()->to_date])->count();
        $total_order = Order::where('status', 1)->whereBetween('created_at', [request()->from_date, request()->to_date])->count();
        $pending_order = Order::where('order_status', 'pending')->whereBetween('created_at', [request()->from_date, request()->to_date])->where('status', 1)->count();
        $canceled_order = Order::where('order_status', 'canceled')->whereBetween('created_at', [request()->from_date, request()->to_date])->where('status', 1)->count();
        $accepted_order = Order::where('order_status', 'accepted')->whereBetween('created_at', [request()->from_date, request()->to_date])->where('status', 1)->count();


        // income expense sheet
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
                                $q->select(DB::raw("SUM(amount) as total"))
                                ->whereBetween('created_at', [request()->from_date, request()->to_date]);
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
        $income_expense_list = $query->get();

        $fromDate = Carbon::parse(request()->from_date);
        $toDate = Carbon::parse(request()->to_date);

        $monthNames = [];
        $years = [];
        $currentDate = $fromDate->copy();

        while ($currentDate->lte($toDate)) {
            $monthNames[] = $currentDate->format('F'); // 'F' format gives the full month name
            $currentDate->addMonth(); // Move to the next month
            $years[] = $currentDate->format('Y');
            $currentDate->addYear();
        }

        $data = array();
        $data['income_expense_data'] = [
            'total_customer' => $total_customer,
            'total_expense' => $total_expense,
            'total_ecommerce_order' => $total_ecommerce_order,
            'total_products' => $total_products
        ];

        $data['ecommerce_data'] = [
            'total_categories' => $total_categories,
            'total_brands' => $total_Brands,
            'total_order' => $total_order,
            'pending_order' => $pending_order,
            'canceled_order' => $canceled_order,
            'accepted_order' => $accepted_order
        ];
        $data['income_expense_list']=$income_expense_list;
        $data['month_names'] = $monthNames;
        $data['years'] = $years;

        return response()->json($data, 200);
    }
}
