<?php

namespace App\Models\Settings;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AppSettingTitle extends Model
{
    use HasFactory;
    protected $guarded = [];

    public static function boot()
    {
        parent::boot();

        static::creating(function ($data) {
            if (isset($data->name)) {
                $data->slug = \Illuminate\Support\Str::slug($data->name);
            } else if (isset($data->title)) {
                $data->slug = \Illuminate\Support\Str::slug($data->title);
            } else {
                $data->slug = $data->id . uniqid();
            }
            if (auth()->check()) {
                $data->creator = auth()->user()->id;
            }
        });
    }

    public function values()
    {
        return $this->hasMany(AppSettingValue::class, 'setting_id');
    }
    public function value()
    {
        return $this->hasOne(AppSettingValue::class, 'setting_id');
    }

    /**
     *
     ```php
        AppSettingValue::getValue("address","value"):returns single value;
        AppSettingValue::getValue("address","values"):returns array;
     ```
     */
    public static function getValue($title, $with = "value")
    {
        if ($with == "value") {
            return AppSettingTitle::where('title', $title)
                ->with(["value" => function ($q) {
                    return $q->select(["id", "setting_id", "setting_value"]);
                }])
                ->first()
                ->value->setting_value;
        } else {
            return AppSettingTitle::where('title', $title)
                ->with(["values" => function ($q) {
                    return $q->select(["id", "setting_id", "setting_value"]);
                }])
                ->first()->values;
        }
    }
}
