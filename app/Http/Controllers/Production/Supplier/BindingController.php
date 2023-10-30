<?php

namespace App\Http\Controllers\Production\Supplier;

use App\Http\Controllers\Controller;
use App\Models\Production\SupplierBinding;
use App\Models\Production\SupplierPaper;
use App\Models\Production\SupplierPrint;
use App\Models\User\PhoneNumber;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class BindingController extends Controller
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

        $query = SupplierBinding::where('status', $status)->orderBy($orderBy, $orderByType);

        if (request()->has('search_key')) {
            $key = request()->search_key;
            $query->where(function ($q) use ($key) {
                return $q->where('id', $key)
                    ->orWhere('company_name', $key)
                    ->orWhere('company_name', 'LIKE', '%' . $key . '%');
            });
        }

        $data = $query->paginate($paginate);
        foreach ($data->items() as $item) {
            $item->opening = $item->logs()->where('supplier_id',$item->id)->where('supplier_type','binding')->where('payment_type', 'opening')->sum('amount');
            $item->bill = $item->logs()->where('supplier_id',$item->id)->where('supplier_type','binding')->where('payment_type', 'bill')->sum('amount');
            $item->payment = $item->logs()->where('supplier_id',$item->id)->where('supplier_type','binding')->where('payment_type', 'payment')->sum('amount');
            $item->balance = $item->opening + $item->bill - $item->payment;
        }

        return response()->json($data);
    }

    public function show($id)
    {
        $data = SupplierBinding::where('id',$id)->first();
        if(!$data){
            return response()->json([
                'err_message' => 'not found',
                'errors' => ['supplier_name'=>['data not found']],
            ], 422);
        }
        $mobile_number = PhoneNumber::where('table_id',$data->id)->where('table_name','supplier_bindings')->get();
        foreach ($mobile_number as $key=>$number) {
            $data->{"mobile_number_".($key+1)} = $number->mobile_number;
        }
        return response()->json($data,200);
    }

    public function store(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'company_name' => ['required'],
            'binding_cost' => ['required'],
            'contact_date' => ['required'],
            'address' => ['required'],
            'total_book' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = SupplierBinding::create(request()->except('mobile_number'));
        $data->creator = Auth::user()->id;
        $data->save();

        if(request()->has('mobile_number') && count(request()->mobile_number)){
            foreach (request()->mobile_number as $mobile_number) {
                PhoneNumber::create([
                    'table_id' => $data->id,
                    'table_name' => 'supplier_bindings',
                    'mobile_number' => $mobile_number,
                ]);
            }
        }

        return response()->json($data, 200);
    }

    public function canvas_store(Request $request)
    {
        $validator = Validator::make(request()->all(), [
            'supplier_name' => ['required', 'unique:product_writers']
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = new SupplierBinding();
        $data->supplier_name = $request->supplier_name;
        $data->designation = $request->designation;
        $data->address = $request->address;
        $data->description = $request->description;
        $data->creator = Auth::user()->id;
        $data->save();

        if(request()->has('image')){
            $data->image = Storage::put('uploads/writers',request()->file('image'));
        }
        $data->save();

        return response()->json($data, 200);
    }

    public function update()
    {
        $data = SupplierBinding::find(request()->id);
        if(!$data){
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['supplier_name'=>['data not found by given id '.(request()->id?request()->id:'null')]],
            ], 422);
        }

        $validator = Validator::make(request()->all(), [
            'company_name' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data->fill(request()->except('mobile_number'));
        $data->save();

        if(request()->has('mobile_number') && count(request()->mobile_number)){
            PhoneNumber::where('table_id',$data->id)->where('table_name','supplier_bindings')->delete();
            foreach (request()->mobile_number as $mobile_number) {
                if($mobile_number)
                PhoneNumber::create([
                    'table_id' => $data->id,
                    'table_name' => 'supplier_bindings',
                    'mobile_number' => $mobile_number,
                ]);
            }
        }

        return response()->json($data, 200);
    }

    public function canvas_update()
    {
        $data = SupplierBinding::find(request()->id);
        if(!$data){
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['supplier_name'=>['data not found by given id '.(request()->id?request()->id:'null')]],
            ], 422);
        }

        $validator = Validator::make(request()->all(), [
            'supplier_name' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data->supplier_name = request()->supplier_name;
        $data->designation = request()->designation;
        $data->address = request()->address;
        $data->description = request()->description;
        $data->creator = Auth::user()->id;
        $data->save();

        if(request()->has('image')){
            $data->image = Storage::put('uploads/writers',request()->file('image'));
        }
        $data->save();
        $data->update();

        return response()->json($data, 200);
    }

    public function soft_delete()
    {
        $validator = Validator::make(request()->all(), [
            'id' => ['required','exists:product_writers,id'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = SupplierBinding::find(request()->id);
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
            'id' => ['required','exists:product_writers,id'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = SupplierBinding::find(request()->id);
        $data->status = 1;
        $data->save();

        return response()->json([
                'result' => 'activated',
        ], 200);
    }

    public function bulk_import()
    {
        $validator = Validator::make(request()->all(), [
            'data' => ['required','array'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        foreach (request()->data as $item) {
            $item['created_at'] = $item['created_at'] ? Carbon::parse($item['created_at']): Carbon::now()->toDateTimeString();
            $item['updated_at'] = $item['updated_at'] ? Carbon::parse($item['updated_at']): Carbon::now()->toDateTimeString();
            $item = (object) $item;
            $check = SupplierBinding::where('id',$item->id)->first();
            if(!$check){
                try {
                    SupplierBinding::create((array) $item);
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
