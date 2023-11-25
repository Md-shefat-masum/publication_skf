<?php

namespace Database\Seeders\Account;

use App\Models\Account\Account;
use App\Models\Account\AccountCategory;
use App\Models\Account\AccountLog;
use App\Models\Account\AccountSupplierLog;
use App\Models\Production\SupplierBinding;
use App\Models\Production\SupplierPaper;
use App\Models\Production\SupplierPrint;
use Carbon\Carbon;
use Faker\Factory;
use Illuminate\Database\Seeder;

class AccountSupplierLogSeeder extends Seeder
{
    /**
     * Run the database seeds.
        php artisan db:seed --class="Database\Seeders\Account\AccountLogSeeder"
        php artisan db:seed --class="Database\Seeders\Account\AccountSupplierLogSeeder"
     * @return void
     */
    public function run()
    {
        AccountSupplierLog::truncate();

        echo "supplier paper log running \n";
        $category = AccountCategory::where('title', 'কাগজ ক্রয়')->first();
        AccountLog::where('category_id',$category->id)->delete();
        $this->supplier_entry(SupplierPaper::class, $category, 'paper');

        echo "supplier binding log running \n";
        $category = AccountCategory::where('title', 'বাইন্ডিং')->first();
        AccountLog::where('category_id',$category->id)->delete();
        $this->supplier_entry(SupplierBinding::class, $category, 'binding');

        echo "supplier print log running \n";
        $category = AccountCategory::where('title', 'প্রিন্টিং ও ছাপা বিল')->first();
        AccountLog::where('category_id',$category->id)->delete();
        $this->supplier_entry(SupplierPrint::class, $category, 'print');
    }

    public function supplier_entry($supplier, $category, $supplier_type)
    {
        $paper_supplier = $supplier::get();
        foreach ($paper_supplier as $supplier) {
            $amount = rand(5000, 10000);

            AccountSupplierLog::create([
                'account_log_id' => null,
                'supplier_id' => $supplier->id,
                'name' => $supplier->supplier_name ?? $supplier->company_name,
                'supplier_type' => $supplier_type,
                'payment_type' => 'opening',
                'amount' => $amount,
            ]);

            for ($i = 0; $i < 5; $i++) {
                $amount = rand(100, 1000);
                AccountSupplierLog::create([
                    'account_log_id' => null,
                    'supplier_id' => $supplier->id,
                    'name' => $supplier->supplier_name ?? $supplier->company_name,
                    'supplier_type' => $supplier_type,
                    'payment_type' => 'bill',
                    'amount' => $amount,
                ]);
            }

            for ($i = 0; $i < 5; $i++) {
                $amount = rand(100, 1000);
                // $account = Account::where('id', rand(2, 5))->first();
                // $account_number = $account->numbers()->get()->random();
                $account = Account::where('id', 2)->first();
                $account_number = $account->numbers()->get()->random();
                $ac_log = AccountLog::create([
                    "date" => Carbon::parse('2023-' . rand(1, 12) . '-' . rand(1, 25)),
                    'category_id' => $category->id,
                    "is_expense" => 1,
                    "is_income" => 0,
                    "amount" => $amount,
                    "description" => "accountant supplier entry",
                    "account_id" => $account->id,
                    "account_number_id" => $account_number->id,
                    'trx_id' => uniqid('',true),
                    "name" => $supplier->supplier_name ?? $supplier->company_name,
                    "receipt_no" => rand(1000000,9999999)
                ]);

                AccountSupplierLog::create([
                    'account_log_id' => $ac_log->id,
                    'supplier_id' => $supplier->id,
                    'name' => $supplier->supplier_name ?? $supplier->company_name,
                    'supplier_type' => $supplier_type,
                    'payment_type' => 'payment',
                    'amount' => $amount,
                ]);
            }
        }
    }
}
