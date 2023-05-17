<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Validator;

class WebsiteController extends Controller
{
    public function home()
    {
        return view('frontend.index');
    }

    public function pos()
    {
        return view('pos');
    }
}
