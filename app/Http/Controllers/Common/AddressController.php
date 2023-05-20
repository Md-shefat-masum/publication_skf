<?php

namespace App\Http\Controllers\Common;

use App\Http\Controllers\Controller;
use App\Models\User\Address;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AddressController extends Controller
{
    public function all()
    {
        $paginate = (int) request()->paginate;
        $orderBy = request()->orderBy;
        $orderByType = request()->orderByType;

        $status = 1;
        if (request()->has('status')) {
            $status = request()->status;
        }

        $query = Address::where('status', $status)->orderBy($orderBy, $orderByType);

        if (request()->has('search_key')) {
            $key = request()->search_key;
            $query->where(function ($q) use ($key) {
                return $q->where('id', $key)
                    ->orWhere('first_name', $key)
                    ->orWhere('last_name', $key)
                    ->orWhere('email', $key)
                    ->orWhere('mobile_number', $key)
                    ->orWhere('address_type', $key)
                    ->orWhere('address', 'LIKE', '%' . $key . '%')
                    ->orWhere('city', 'LIKE', '%' . $key . '%')
                    ->orWhere('state', 'LIKE', '%' . $key . '%')
                    ->orWhere('zip_code', 'LIKE', '%' . $key . '%')
                    ->orWhere('zone', 'LIKE', '%' . $key . '%')
                    ->orWhere('country', 'LIKE', '%' . $key . '%')
                    ->orWhere('lat', 'LIKE', '%' . $key . '%')
                    ->orWhere('lng', 'LIKE', '%' . $key . '%')
                    ->orWhere('created_at', 'LIKE', '%' . $key . '%')
                    ->orWhere('updated_at', 'LIKE', '%' . $key . '%')
                    ->orWhere('status', 'LIKE', '%' . $key . '%');
            });
        }

        $data = $query->paginate($paginate);
        return response()->json($data);
    }

    public function show($id)
    {
        $data = Address::where('id', $id)->first();
        if (!$data) {
            return response()->json([
                'err_message' => 'not found',
                'errors' => ['role' => ['data not found']],
            ], 422);
        }
        return response()->json($data, 200);
    }

    public function store()
    {
        $validator = Validator::make(request()->all(), [
            'first_name' => ["required", "min:3"],
            'mobile_number' => ["required", "min:11"],
            "address" => ["required", "min:5"],
            "city" => ["required", "min:4"],
            "country" => ["required", "min:4"],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = new Address();
        $data->full_name = request()->full_name;
        $data->email = request()->email;
        $data->subject = request()->subject;
        $data->message = request()->message;
        $data->save();

        return response()->json($data, 200);
    }

    public function canvas_store()
    {
        $validator = Validator::make(request()->all(), [
            'first_name' => ["required", "min:3"],
            'mobile_number' => ["required", "min:11"],
            "address" => ["required", "min:5"],
            "city" => ["required", "min:4"],
            "country" => ["required", "min:4"],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = new Address();
        $data->full_name = request()->full_name;
        $data->email = request()->email;
        $data->subject = request()->subject;
        $data->message = request()->message;
        $data->save();

        return response()->json($data, 200);
    }

    public function update()
    {
        $data = Address::find(request()->id);
        if (!$data) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['name' => ['data not found by given id ' . (request()->id ? request()->id : 'null')]],
            ], 422);
        }

        $validator = Validator::make(request()->all(), [
            'first_name' => ["required", "min:3"],
            'mobile_number' => ["required", "min:11"],
            "address" => ["required", "min:5"],
            "city" => ["required", "min:4"],
            "country" => ["required", "min:4"],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        dd($validator);

        $data->full_name = request()->full_name;
        $data->email = request()->email;
        $data->subject = request()->subject;
        $data->message = request()->message;
        $data->save();

        return response()->json($data, 200);
    }

    public function update_from_frontend()
    {
        $data = Address::where('table_name','users')->where('table_id',auth()->user()->id)->latest()->first();
        // if (!$data) {
        //     return response()->json([
        //         'err_message' => 'validation error',
        //         'errors' => ['name' => ['data not found by given id ' . (request()->id ? request()->id : 'null')]],
        //     ], 422);
        // }

        $validator = Validator::make(request()->all(), [
            'first_name' => ["required", "min:3"],
            'mobile_number' => ["required", "min:11"],
            "address" => ["required", "min:5"],
            "city" => ["required", "min:4"],
            "country" => ["required", "min:4"],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        // dd($validator->validated());
        if($data){
            $data->fill(request()->all())->save();
        }else{
            $data = Address::create(request()->all());
            $data->table_name = "users";
            $data->table_id = auth()->user()->id;
            $data->save();
        }

        return response()->json($data, 200);
    }

    public function canvas_update()
    {
        $data = Address::find(request()->id);
        if (!$data) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['name' => ['user_role not found by given id ' . (request()->id ? request()->id : 'null')]],
            ], 422);
        }

        $validator = Validator::make(request()->all(), [
            'full_name' => ['required'],
            'email' => ['required'],
            'subject' => ['required'],
            'message' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data->full_name = request()->full_name;
        $data->email = request()->email;
        $data->subject = request()->subject;
        $data->message = request()->message;
        $data->save();

        return response()->json($data, 200);
    }

    public function soft_delete()
    {
        $validator = Validator::make(request()->all(), [
            'id' => ['required', 'exists:contact_messages,id'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = Address::find(request()->id);
        $data->status = 0;
        $data->save();

        return response()->json([
            'result' => 'deactivated',
        ], 200);
    }

    public function destroy()
    {
    }

    public function restore()
    {
        $validator = Validator::make(request()->all(), [
            'id' => ['required', 'exists:contact_messages,id'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = Address::find(request()->id);
        $data->status = 1;
        $data->save();

        return response()->json([
            'result' => 'activated',
        ], 200);
    }

    public function bulk_import()
    {
        $validator = Validator::make(request()->all(), [
            'data' => ['required', 'array'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        foreach (request()->data as $item) {
            $item['created_at'] = $item['created_at'] ? Carbon::parse($item['created_at']) : Carbon::now()->toDateTimeString();
            $item['updated_at'] = $item['updated_at'] ? Carbon::parse($item['updated_at']) : Carbon::now()->toDateTimeString();
            $item = (object) $item;
            $check = Address::where('id', $item->id)->first();
            if (!$check) {
                try {
                    Address::create((array) $item);
                } catch (\Throwable $th) {
                    return response()->json([
                        'err_message' => 'validation error',
                        'errors' => $th->getMessage(),
                    ], 400);
                }
            }
        }

        return response()->json('success', 200);
    }
}
