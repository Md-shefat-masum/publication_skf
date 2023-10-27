<?php

namespace Database\Seeders\Account;

use App\Models\Account\AccountCategory;
use App\Models\Account\AccountLog;
use App\Models\Account\AccountSupplierLog;
use App\Models\Production\SupplierBinding;
use App\Models\Production\SupplierPaper;
use App\Models\Production\SupplierPrint;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class AccountSupplierLogSeeder extends Seeder
{
    /**
     * Run the database seeds.
     * php artisan db:seed --class="Database\Seeders\Account\AccountSupplierLogSeeder"
     * @return void
     */
    public function run()
    {
        $category = AccountCategory::where('title', 'অফিস স্টেশনারী')->first();
        AccountSupplierLog::truncate();
        AccountLog::where('category_id',$category->id)->delete();

        echo "supplier paper log running \n";
        $this->supplier_entry(SupplierPaper::class, $category);

        echo "supplier binding log running \n";
        $this->supplier_entry(SupplierBinding::class, $category);

        echo "supplier print log running \n";
        $this->supplier_entry(SupplierPrint::class, $category);
    }

    public function supplier_entry($supplier, $category)
    {
        $paper_supplier = $supplier::get();
        foreach ($paper_supplier as $supplier) {
            $amount = rand(5000, 10000);

            AccountSupplierLog::create([
                'account_log_id' => null,
                'supplier_id' => $supplier->id,
                'name' => $supplier->supplier_name ?? $supplier->company_name,
                'supplier_type' => 'paper',
                'payment_type' => 'opening',
                'amount' => $amount,
            ]);

            for ($i = 0; $i < 5; $i++) {
                $amount = rand(100, 1000);
                AccountSupplierLog::create([
                    'account_log_id' => null,
                    'supplier_id' => $supplier->id,
                    'name' => $supplier->supplier_name ?? $supplier->company_name,
                    'supplier_type' => 'paper',
                    'payment_type' => 'bill',
                    'amount' => $amount,
                ]);
            }

            for ($i = 0; $i < 5; $i++) {
                $amount = rand(100, 1000);
                $ac_log = AccountLog::create([
                    "date" => Carbon::parse('2023-' . rand(1, 12) . '-' . rand(1, 25)),
                    'category_id' => $category->id,
                    "is_expense" => 1,
                    "is_income" => 0,
                    "amount" => $amount,
                    "description" => "accountant supplier entry",
                    "account_id" => rand(2, 5),
                ]);

                AccountSupplierLog::create([
                    'account_log_id' => $ac_log->id,
                    'supplier_id' => $supplier->id,
                    'name' => $supplier->supplier_name ?? $supplier->company_name,
                    'supplier_type' => 'paper',
                    'payment_type' => 'payment',
                    'amount' => $amount,
                ]);
            }
        }
    }
}
