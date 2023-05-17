<?php

namespace Database\Seeders\Settings;

use App\Models\Settings\AppSettingTitle;
use Illuminate\Database\Seeder;

class SettingTitleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        AppSettingTitle::truncate();
        $titles = [
            "title",
            "logo",
            "fabicon",
            "phone_number",
            "address",
            "company_name",
            "city",
            "state",
            "post_code",
            "country",
            "email",
            "map",

            "bkash_marchant_numbers",
            "nagad_marchant_numbers",
            "rocket_marchants_numbers",

            "home_delivery_cost",
            "out_dhaka_home_delivery_cost",

            "company_start_time",
            "company_end_time",

            "time_zone",

            // "about_us",
            // "privacy_policy",
            // "terms_and_conditions",
            // "refund_policy",

            "header_title",
            "copy_right",

            "seo_title",
            "seo_description",
            "seo_keywords",
            "seo_banner",

            "social_facebook",
            "social_twitter",
            "social_instagram",
            "social_linkedin",
            "social_youtube",

            "invoice_prefix",
            "invoice_company_name",
            "invoice_address_line_1",
            "invoice_address_line_2",

            "telegram_bot_api",

            "mail_mailer",
            "mail_host",
            "mail_port",
            "mail_user_name",
            "mail_password",
            "mail_from_address",
            "mail_from_name",
            "mail_from_address",
            "mail_from_address",

            "shut_down_website",
        ];

        foreach ($titles as $item) {
            AppSettingTitle::create([
                'title' => $item,
            ]);
        }
    }
}
