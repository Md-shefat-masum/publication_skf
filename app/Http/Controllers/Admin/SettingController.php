<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Settings\AppSettingTitle;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    public function set($key)
    {
        dd(request()->all());
    }

    public function get($key)
    {
        dd(request()->all());
    }

    public function get_by_keys()
    {
        $app_setting_titles = AppSettingTitle::whereIn('title',request()->keys)->with('values')->get();
        $app_settigns = [];
        foreach ($app_setting_titles as $key => $value) {
            $app_settigns[$value->title] = $value->values;
        }
        return $app_settigns;
    }
}
