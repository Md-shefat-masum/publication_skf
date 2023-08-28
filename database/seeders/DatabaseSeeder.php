<?php

namespace Database\Seeders;

use App\Models\User\Customer;
use Database\Seeders\Account\AccountCategorySeeder;
use Database\Seeders\Account\AccountCategoryTypeSeeder;
use Database\Seeders\Account\AccountLogSeeder;
use Database\Seeders\Account\AccountSeeder;
use Database\Seeders\Common\AddressSeeder;
use Database\Seeders\Common\BannerSeeder;
use Database\Seeders\Common\MobileNumberSeeder;
use Database\Seeders\Order\CouponSeeder as OrderCouponSeeder;
use Database\Seeders\Order\OrderSeeder;
use Database\Seeders\Order\ProductCartSeeder;
use Database\Seeders\Product\BrandSeeder;
use Database\Seeders\Product\ProductionDesignerSeeder;
use Database\Seeders\Product\ProductCategorySeeder;
use Database\Seeders\Product\ProductImageSeeder;
use Database\Seeders\Product\ProductSeeder;
use Database\Seeders\Product\ProductionSeeder;
use Database\Seeders\Product\ProductTranslatorSeeder;
use Database\Seeders\Product\ProductWriterSeeder;
use Database\Seeders\Product\ProductReturnSeeder;
use Database\Seeders\Product\ProductReviewSeeder;
use Database\Seeders\Product\SupplierBindingSeeder;
use Database\Seeders\Product\SupplierPaperSeeder;
use Database\Seeders\Product\SupplierPaperStockSeeder;
use Database\Seeders\Product\SupplierPrintSeeder;
use Database\Seeders\Settings\SettingTitleSeeder;
use Database\Seeders\Settings\SettingValueSeeder;
use Database\Seeders\User\CustomerSeeder;
use Database\Seeders\User\UserSeeder;
use Database\Seeders\Website\AboutSeeder;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     * php artisan db:seed --class="Database\Seeders\Account\AccountCategoryTypeSeeder"
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        $this->call([
            UserSeeder::class,
            CustomerSeeder::class,
            // ExtraUserSeeder::class,
            ContactMessageSeeder::class,
            MobileNumberSeeder::class,

            AccountSeeder::class,
            AccountCategoryTypeSeeder::class,
            AccountCategorySeeder::class,
            AccountLogSeeder::class,

            BrandSeeder::class,
            ProductCategorySeeder::class,
            ProductTranslatorSeeder::class,
            ProductWriterSeeder::class,

            ProductSeeder::class,
            ProductReviewSeeder::class,
            ProductImageSeeder::class,

            SupplierBindingSeeder::class,
            SupplierPaperSeeder::class,
            SupplierPaperStockSeeder::class,
            SupplierPrintSeeder::class,

            ProductionDesignerSeeder::class,
            ProductionSeeder::class,

            OrderCouponSeeder::class,
            OrderSeeder::class,
            ProductCartSeeder::class,
            ProductReturnSeeder::class,

            SettingTitleSeeder::class,
            SettingValueSeeder::class,

            BannerSeeder::class,
            AboutSeeder::class,
            AddressSeeder::class,
        ]);
    }
}
