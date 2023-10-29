<?php

namespace App\Http\Controllers\Accountant;

use App\Http\Controllers\Controller;
use App\Models\Account\AccountCategory;
use App\Models\Account\AccountLog;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function all_catgories($type_id = 1)
    {
        $categories = AccountCategory::where('status', 1)->where('type_id', $type_id)->orderBy('title', 'ASC')->get();
        return $categories;
    }
    public function ledger()
    {
        $from = Carbon::parse(request()->from);
        $to = Carbon::parse(request()->to);
        $query = AccountLog::whereBetween('date', [$from, $to]);
        $type = 1;
        if (request()->has('is_income')) {
            $query->where('is_income', 1);
            $type = 1;
        }
        if (request()->has('is_expense')) {
            $query->where('is_expense', 1);
            $type = 2;
        }

        $income_categories = $this->all_catgories($type);
        $logs = $query->get();

        foreach ($logs as $log) {
            foreach ($income_categories as $item) {
                $category_id = "cat_" . $item->id;
                $log->$category_id = "";
                if ($log->category_id == $item->id) {
                    $log->$category_id = $log->amount;
                }
            }
        }

        $category_wise_total = $this->category_wise_total($from, $to, $type);
        return response()->json([
            "ledger_data" => $logs,
            "category_wise_total" => $category_wise_total,
        ]);
    }

    public function category_wise_total($from, $to, $type)
    {
        $data = [];

        $query = AccountLog::whereBetween('date', [$from, $to]);
        if ($type == 1) {
            $query->where('is_income', 1);
        }
        if ($type == 2) {
            $query->where('is_expense', 1);
        }
        $data['total'] = $query->sum('amount');

        $income_categories = $this->all_catgories($type);
        foreach ($income_categories as $category) {
            $query = AccountLog::whereBetween('date', [$from, $to]);
            if ($type == 1) {
                $query->where('is_income', 1);
            }
            if ($type == 2) {
                $query->where('is_expense', 1);
            }

            $data["cat_" . $category->id] = $query->where('category_id', $category->id)->sum('amount');
        }

        return $data;
    }

    public function income_in_range()
    {
        $from = Carbon::parse(request()->from);
        $to = Carbon::parse(request()->to);
        $total = AccountLog::whereBetween('date', [$from, $to])->where('is_income', 1)->sum('amount');
        return $total;
    }

    public function expense_in_range()
    {
        $from = Carbon::parse(request()->from);
        $to = Carbon::parse(request()->to);
        $total = AccountLog::whereBetween('date', [$from, $to])->where('is_expense', 1)->sum('amount');
        return $total;
    }

    public function extra_money_before_range()
    {
        $from = Carbon::parse(request()->from);
        $to = Carbon::parse(request()->to);
        $income = AccountLog::where('date', '<', $from)->where('is_income', 1)->sum('amount');
        $expense = AccountLog::where('date', '<', $from)->where('is_expense', 1)->sum('amount');
        return $income - $expense;
    }

    public function income_expense_closing_in_range()
    {
        $income = $this->income_in_range();
        $expense = $this->expense_in_range();
        $extra = $income - $expense;
        $extra_before = $this->extra_money_before_range();
        $preset_extra = $extra + $extra_before;
        return [
            "income" => $income,
            "expense" => $expense,
            "extra" => $extra,
            "extra_before" => $extra_before,
            "preset_extra" => $preset_extra
        ];
    }
}
