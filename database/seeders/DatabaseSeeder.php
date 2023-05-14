<?php

namespace Database\Seeders;

use Database\Seeders\Account\AccountCategorySeeder;
use Database\Seeders\Account\AccountCategoryTypeSeeder;
use Database\Seeders\Account\AccountLogSeeder;
use Database\Seeders\Account\AccountSeeder;
use Database\Seeders\Common\AddressSeeder;
use Database\Seeders\Common\BannerSeeder;
use Database\Seeders\Product\BrandSeeder;
use Database\Seeders\Product\PoroductionDesignerSeeder;
use Database\Seeders\Product\ProductCategorySeeder;
use Database\Seeders\Product\ProductSeeder;
use Database\Seeders\Product\PoroductionSeeder;
use Database\Seeders\Product\PoroductTranslatorSeeder;
use Database\Seeders\Product\PoroductWriterSeeder;
use Database\Seeders\Product\SupplierBindingSeeder;
use Database\Seeders\Product\SupplierPaperSeeder;
use Database\Seeders\Product\SupplierPrintSeeder;
use Database\Seeders\Settings\SettingTitleSeeder;
use Database\Seeders\Settings\SettingValueSeeder;
use Database\Seeders\User\UserSeeder;
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
            // ExtraUserSeeder::class,
            ContactMessageSeeder::class,

            AccountSeeder::class,
            AccountCategoryTypeSeeder::class,
            AccountCategorySeeder::class,
            AccountLogSeeder::class,

            BrandSeeder::class,
            PoroductionDesignerSeeder::class,
            PoroductionSeeder::class,
            PoroductTranslatorSeeder::class,
            PoroductWriterSeeder::class,
            ProductCategorySeeder::class,
            SupplierBindingSeeder::class,
            SupplierPaperSeeder::class,
            SupplierPrintSeeder::class,
            ProductSeeder::class,

            SettingTitleSeeder::class,
            SettingValueSeeder::class,

            BannerSeeder::class,

            AddressSeeder::class,

        ]);
    }
}
