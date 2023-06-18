<?php

namespace Database\Seeders\Settings;

use App\Models\Settings\AppSettingTitle;
use App\Models\Settings\AppSettingValue;
use Illuminate\Database\Seeder;

class SettingValueSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        AppSettingValue::truncate();
        $titles = [
            "title" => "book publication",
            "logo" => "uploads/logo.png",
            "fabicon" => "uploads/logo.png",
            "phone_number" => [
                "+880 125468745",
                "+880 125369746",
                "+880 125478747",
            ],
            "address" => [
                "Head Office: House 310, Road 21 Mohakhali DOHS, Dhaka-1206",
                "Sub Office: House 100, Road 01 Mirpur DOHS, Dhaka-1208",
            ],
            "company_name" => "best publication",
            "city" => "dhaka",
            "state" => "bangladesh",
            "post_code" => "1204",
            "country" => "bangladesh",
            "email" => "support@pub.com",
            "map" => '<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d5237.592579713879!2d90.41791440863823!3d23.802949706508837!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1spaltan!5e0!3m2!1sen!2sbd!4v1684041615790!5m2!1sen!2sbd" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>',

            "bkash" => [
                '+880 169874523',
                '+880 169874524',
                '+880 169874525',
            ],
            "nagad" => [
                '+880 169874526',
                '+880 169874527',
                '+880 169874528',
            ],
            "rocket" => [
                '+880 169874529',
                '+880 169874530',
                '+880 169874531',
            ],
            "bank_account" => [
                'Islami bank 874523',
                'Agrani bank 874524',
                'City bank 874525',
            ],

            "home_delivery_cost" => 60,
            "out_dhaka_home_delivery_cost" => 120,

            "company_start_time" => "09:00",
            "company_end_time" => "05:00",

            "time_zone" => "Asia/Dhaka",

            // "about_us",
            // "privacy_policy",
            // "terms_and_conditions",
            // "refund_policy",

            "header_title" => "welcome to best publication",
            "copy_right" => "2023 best publication",

            "seo_title" => "best publication",
            "seo_description" => "Bookstore is a leading book shop in Bangladesh. We offer thousands of islamic, general and academic books at a discounted price. We provide good packaging with low shipping cost all over the Bangladesh.",
            "seo_keywords" => "publications, book, prokashona",
            "seo_banner" => "uploads/logo.png",

            "social_facebook" => "https://www.facebook.com",
            "social_twitter" => "https://www.twitter.com",
            "social_instagram" => "https://www.instagram.com",
            "social_linkedin" => "https://www.linkedin.com",
            "social_youtube" => "https://www.youtube.com",

            "invoice_prefix" => "PUB",
            "invoice_company_name" => "best publication",
            "invoice_address_line_1" => "1212, rampura",
            "invoice_address_line_2" => "dhaka, bangladesh",

            "telegram_bot_api" => "5599292546:AAFukGO7qtKIVuINcZJo-9XbqtllVxSwgmY",

            "mail_mailer" => "smtp",
            "mail_host" => "mail.pub.com",
            "mail_port" => "587",
            "mail_user_name" => "support@pub.com",
            "mail_password" => "UJ02pC,O)?L0",
            "mail_from_address" => "support@pub.com",
            "mail_from_name" => "book publication",

            "shut_down_website" => "false",
        ];

        foreach ($titles as $key => $item) {
            echo $key."\n";
            if(is_array($item)){
                foreach ($item as $value) {
                    AppSettingValue::create([
                        "setting_id" => AppSettingTitle::select('id')->where('title',$key)->first()->id,
                        "title" => $key,
                        'setting_value' => $value,
                    ]);
                }
            }else{
                AppSettingValue::create([
                    "setting_id" => AppSettingTitle::select('id')->where('title',$key)->first()->id,
                    "title" => $key,
                    'setting_value' => $item,
                ]);
            }
        }
    }
}
