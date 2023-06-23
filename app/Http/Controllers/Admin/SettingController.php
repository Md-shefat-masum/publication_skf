<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Settings\AppSettingTitle;
use App\Models\Settings\AppSettingValue;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class SettingController extends Controller
{
    public function set($id)
    {
        $setting_value = AppSettingValue::where('id',$id)->first();
        if($setting_value){
            if(request()->hasFile('value')){
                $old_file = public_path($setting_value->setting_value);
                if(file_exists($old_file)){
                    unlink($old_file);
                }
                $file= request()->file('value');
                $name= $setting_value->title.'_'.uniqid().'.'.$file->getClientOriginalExtension();
                $path = Storage::putFileAs('uploads/settings',request()->file('value'),$name);
                $setting_value->setting_value = $path;
            }else{
                $setting_value->setting_value = request()->value;
            }
            $setting_value->save();
        }
        return $setting_value;
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
