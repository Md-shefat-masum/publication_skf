<?php

namespace Database\Seeders;

use Database\Seeders\Account\AccountCategorySeeder;
use Database\Seeders\Account\AccountCategoryTypeSeeder;
use Database\Seeders\Account\AccountLogSeeder;
use Database\Seeders\Product\ProductCategorySeeder;
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

            AccountCategoryTypeSeeder::class,
            AccountCategorySeeder::class,
            AccountLogSeeder::class,

            ProductCategorySeeder::class,
        ]);
    }
}
