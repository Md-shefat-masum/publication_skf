<?php

namespace App\Models\Task;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function variants()
    {
        return $this->belongsToMany(TaskVariantValue::class);
    }

    public function users()
    {
        return $this->belongsToMany(User::class,'task_users');
    }
}
