<?php

namespace Database\Seeders\Common;

use App\Models\Website\Banner;
use Illuminate\Database\Seeder;

class BannerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Banner::truncate();
        foreach ([1,2] as $item) {
            Banner::create([
                "title" => "banner $item",
                "image" => "uploads/banners/$item.jpg",
                "serial" => $item,
                "show" => 1,
            ]);
        }
    }
}
