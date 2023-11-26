<?php

namespace App\Http\Controllers\Task;

use App\Http\Controllers\Controller;
use App\Models\Task\Task;
use Illuminate\Http\Request;

class TaskController extends Controller
{
    public function super_admin_get_all()
    {
        $tasks = Task::orderBy('id','DESC')->with(['variants'])->paginate(20);
        return $tasks;
    }
}
