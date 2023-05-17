<?php

namespace App\Http\Controllers;

use App\Models\Settings\AppSettingTitle;
use Illuminate\Http\Request;

class HelperController extends Controller
{
    public function enToBn($NRS)
    {
        $englDTN = array(
            '1', '2', '3', '4', '5', '6', '7', '8', '9', '0',
            'Saturday', 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday',
            'Sat', 'Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri',
            'am', 'pm', 'at', 'st', 'nd', 'rd', 'th',
            'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December',
            'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
        );
        $bangDTN = array(
            '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯', '০',
            'শনিবার', 'রবিবার', 'সোমবার', 'মঙ্গলবার', 'বুধবার', 'বৃহস্পতিবার', 'শুক্রবার',
            'শনি', 'রবি', 'সোম', 'মঙ্গল', 'বুধ', 'বৃহঃ', 'শুক্র',
            'পূর্বাহ্ণ', 'অপরাহ্ণ', '', '', '', '', '',
            'জানুয়ারি', 'ফেব্রুয়ারি', 'মার্চ', 'এপ্রিল', 'মে', 'জুন', 'জুলাই', 'আগস্ট', 'সেপ্টেম্বর', 'অক্টোবর', 'নভেম্বর', 'ডিসেম্বর',
            'জানু', 'ফেব্রু', 'মার্চ', 'এপ্রি', 'মে', 'জুন', 'জুলা', 'আগ', 'সেপ্টে', 'অক্টো', 'নভে', 'ডিসে'
        );
        $converted = str_replace($englDTN, $bangDTN, $NRS);
        return $converted;
    }

    public function delivery_cost()
    {
        $home_delivery_cost = AppSettingTitle::select([
            'app_setting_titles.id',
            'app_setting_titles.title',
            'app_setting_values.setting_id',
            'app_setting_values.setting_value',
        ])
            ->rightJoin('app_setting_values', 'app_setting_values.setting_id', '=', 'app_setting_titles.id')
            ->where('app_setting_titles.title', 'home_delivery_cost')
            ->first();

        $out_dhaka_home_delivery_cost = AppSettingTitle::select([
            'app_setting_titles.id',
            'app_setting_titles.title',
            'app_setting_values.setting_id',
            'app_setting_values.setting_value',
        ])
            ->rightJoin('app_setting_values', 'app_setting_values.setting_id', '=', 'app_setting_titles.id')
            ->where('app_setting_titles.title', 'out_dhaka_home_delivery_cost')
            ->first();

        return (object) [
            'home_delivery_cost' => (int) $home_delivery_cost->setting_value,
            'out_dhaka_home_delivery_cost' => (int) $out_dhaka_home_delivery_cost->setting_value,
        ];
    }

    static function __callStatic($method, $args)
    {
        $helper = new HelperController();
        $helper->$method(...$args);
    }
}
