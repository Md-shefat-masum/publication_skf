<?php

namespace Database\Seeders\Product;

use App\Models\Product\Brand;
use Illuminate\Database\Seeder;

class BrandSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Brand::truncate();
        $data = [
            [
                'name' => 'Apple',
                'logo' => 'https://example.com/apple_logo.png'
            ],
            [
                'name' => 'Nike',
                'logo' => 'https://example.com/nike_logo.png'
            ],
            [
                'name' => 'Google',
                'logo' => 'https://example.com/google_logo.png'
            ],
            [
                'name' => 'Amazon',
                'logo' => 'https://example.com/amazon_logo.png'
            ],
            [
                'name' => 'Samsung',
                'logo' => 'https://example.com/samsung_logo.png'
            ],
            [
                'name' => 'Microsoft',
                'logo' => 'https://example.com/microsoft_logo.png'
            ],
            [
                'name' => 'Coca-Cola',
                'logo' => 'https://example.com/coca_cola_logo.png'
            ],
            [
                'name' => 'Toyota',
                'logo' => 'https://example.com/toyota_logo.png'
            ],
            [
                'name' => 'McDonald\'s',
                'logo' => 'https://example.com/mcdonalds_logo.png'
            ],
            [
                'name' => 'Facebook',
                'logo' => 'https://example.com/facebook_logo.png'
            ],
            [
                'name' => 'Disney',
                'logo' => 'https://example.com/disney_logo.png'
            ],
            [
                'name' => 'Adidas',
                'logo' => 'https://example.com/adidas_logo.png'
            ],
            [
                'name' => 'BMW',
                'logo' => 'https://example.com/bmw_logo.png'
            ],
            [
                'name' => 'Pepsi',
                'logo' => 'https://example.com/pepsi_logo.png'
            ],
            [
                'name' => 'Netflix',
                'logo' => 'https://example.com/netflix_logo.png'
            ],
            [
                'name' => 'Honda',
                'logo' => 'https://example.com/honda_logo.png'
            ],
            [
                'name' => 'Sony',
                'logo' => 'https://example.com/sony_logo.png'
            ],
            [
                'name' => 'Uber',
                'logo' => 'https://example.com/uber_logo.png'
            ],
            [
                'name' => 'Intel',
                'logo' => 'https://example.com/intel_logo.png'
            ],
            [
                'name' => 'Spotify',
                'logo' => 'https://example.com/spotify_logo.png'
            ],
        ];

        foreach ($data as $item) {
            Brand::create([
                'name' => $item["name"],
            ]);
        }
    }
}
