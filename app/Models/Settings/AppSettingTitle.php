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
        return $this->hasMany(AppSettingValue::class,'setting_id');
    }
    public function value()
    {
        return $this->hasOne(AppSettingValue::class,'setting_id');
    }


}
