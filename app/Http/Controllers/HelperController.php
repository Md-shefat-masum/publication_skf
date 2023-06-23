<?php

namespace App\Http\Controllers;

use App\Models\Settings\AppSettingTitle;
use Illuminate\Http\Request;

class HelperController extends Controller
{

    public static function delivery_cost()
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
