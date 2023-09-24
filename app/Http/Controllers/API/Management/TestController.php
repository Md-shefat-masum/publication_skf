<?php

namespace App\Http\Controllers\API\Management;

use App\Http\Controllers\Controller;
use App\Models\Test;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;

class TestController extends Controller
{
    public function all() {
        $tests = Test::where('status', 1)->paginate(5);

        return response()->json(["test datas" => $tests, "message" => "data retreived successfully"], 200);
    }

    public function show($id) {

        $test = Test::where('id', $id)->where('status', 1)->first();

        if (!$test) {
            return response()->json([
                'err_message' => 'not found',
                'errors' => ['test' => ['data not found']],
            ], 422);
        }

        return response()->json(['single_test' => $test], 200);
    }

    public function store() {

        $validator = Validator::make(request()->all(), [
            'title' => ['required', 'min:3', 'string'],
            'description' => ['required', 'min:5', 'string'],
            'date' => ['required', 'date'],
        ]);

        if($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        try {
            Log::info('hello');
            $new_test = new Test();
            $new_test->title = request()->title;
            $new_test->description = request()->description;
            $new_test->date = Carbon::parse(request()->date)->toDateString();
            $new_test->status = 1;
            $new_test->save();
        } catch (Exception $e) {
            // Log::channel('postman_test_log')->info($e);
            // \Log::emergency('hello');
            return response()->json(['mesasage' => 'something went wrong!'], 400);
        }
        
        return response()->json(['data' => $new_test, 'mesasage' => 'new test data created successfully!']);
    }

    public function update() {

        $update_data = Test::where('id', request()->id)->first();

        if(!$update_data) {
            return response()->json([
                'err_message' => 'data not found',
                'errors' => ['test' => ['data not found']],
            ], 422);
             
        }

        $validator = Validator::make(request()->all(), [
            'title' => ['required', 'min:3', 'string'],
            'description' => ['required', 'min:5', 'string'],
            'date' => ['required', 'date'],
        ]);

        if($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }


        $update_data->title = request()->title;
        $update_data->description = request()->description;
        $update_data->date = Carbon::parse(request()->date)->toDateString();
        $update_data->status = request()->status;
        $update_data->save();

        return response()->json(['data' => $update_data, 'mesasage' => 'test data updated successfully!']);
    }

    public function delete() {
        $delete_data = Test::where('id', request()->id)->where('status', 1)->first();

        if(!$delete_data) {
            return response()->json([
                'err_message' => 'data not found',
                'errors' => ['test' => ['data not found']],
            ], 422);
             
        }

        $delete_data->delete();
        return response()->json([
            'result' => 'deleted',
        ], 200);
    }
}
