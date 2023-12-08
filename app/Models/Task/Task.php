<?php

namespace App\Models\Task;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use HasFactory;
    protected $guarded = [];
    protected $appends = [
        'formated_date',
        'formated_time',
    ];

    public function variants()
    {
        return $this->belongsToMany(TaskVariantValue::class);
    }

    public function users()
    {
        return $this->belongsToMany(User::class,'task_users');
    }

    public function auth_user()
    {
        return $this->hasOne(TaskUser::class,'task_id')->where('user_id',auth()->user()->id);
    }

    public function given_user()
    {
        return $this->hasOne(TaskUser::class,'task_id');
    }

    public function getFormatedDateAttribute()
    {
        return Carbon::parse($this->target_date)->format('d M, Y');
    }
    public function getFormatedTimeAttribute()
    {
        return Carbon::parse($this->target_time)->format('h:i a');
    }
}
