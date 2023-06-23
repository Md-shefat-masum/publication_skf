<?php

namespace App\Http\Controllers\Admin\Product;

use App\Http\Controllers\Controller;
use App\Models\ContactMessage;
use App\Models\Product\Product;
use App\Models\Product\ProductDiscount;
use App\Models\Product\ProductImage;
use App\Models\Product\ProductStock;
use App\Models\Product\ProductStockLog;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Intervention\Image\Facades\Image as interImage;
use Throwable;

class ProductController extends Controller
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

        $query = Product::where('status', $status)->orderBy($orderBy, $orderByType);

        if (request()->has('search_key')) {
            $key = request()->search_key;
            $query->where(function ($q) use ($key) {
                return $q->where('id', $key)
                    ->orWhere('product_name', $key)
                    ->orWhere('sales_price', $key)
                    ->orWhere('product_name', 'LIKE', '%' . $key . '%')
                    ->orWhere('sales_price', 'LIKE', '%' . $key . '%');
            });
        }
        $users = $query->paginate($paginate);
        return response()->json($users);
    }

    public function show($id)
    {
        $data = Product::where('id', $id)->with([
            'categories' => function ($q) {
                return $q->select('categories.id', 'categories.parent_id', 'categories.name');
            },
            'writers' => function ($q) {
                return $q->select('product_writers.id', 'product_writers.name');
            },
            'translators' => function ($q) {
                return $q->select('product_translators.id', 'product_translators.name');
            },
        ])
        ->first();

        $stock = ProductStockLog::where('product_id',$data->id)->first();
        if($stock){
            $data->initial_stock = $stock->qty;
        }

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
            'product_name' => ['required','unique:products'],
            'product_name_english' => ['required'],
            'pages' => ['required'],
            'initial_stock' => ['required'],
            'stock_alert_qty' => ['required'],
            'search_keywords' => ['required'],
            'page_title' => ['required'],
            'meta_description' => ['required'],
            'meta_description' => ['required'],
            'category_id' => ['required'],
            'writer_id' => ['required'],
            'thumb_image' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $product_info = request()->except([
            'category_id',
            'writer_id',
            'translator_id',
            'thumb_image',
            "initial_stock",
        ]);

        $product = Product::create($product_info);

        if (request()->has('initial_stock')){
            ProductStockLog::create([
                "product_id" => $product->id,
                "qty" => request()->initial_stock,
                "type" => "initial stock",
            ]);
        }

        if (request()->has('category_id'))
            $product->categories()->attach(request()->category_id);
        if (request()->has('writer_id'))
            $product->writers()->attach(request()->writer_id);
        if (request()->has('translator_id'))
            $product->translators()->attach(request()->translator_id);

        if (request()->hasFile('thumb_image')) {
            try {
                $product->thumb_image = $this->store_product_file(request()->file('thumb_image'));
                $product->save();
            } catch (\Throwable $e) {
                return response()->json([
                    "product"=>$product,"status"=>"failed",
                    "message"=>"product created without image",
                    "error"=>$e->getMessage(),
                ]);
            }
        }

        return response()->json(["product"=>$product,"status"=>"success"]);
    }

    public function product_stock_set($supplier_id = null, $product_id, $purchase_date, $qty)
    {
        ProductStockLog::create([
            'supplier_id' => $supplier_id,
            'product_id' => $product_id,
            'purchase_date' => $purchase_date,
            'qty' => $qty,
        ]);
    }

    public function product_stock_log_set($product_id, $qty, $type)
    {
        ProductStockLog::create([
            'product_id' => $product_id,
            'qty' => $qty,
            'type' => $type,
            'creator' => auth()->user()->id,
        ]);
    }

    public function store_product_file($image)
    {
        // $path = Storage::put('uploads/file_manager',$request->file('fm_file'));
        $file = $image;
        $extension = $file->getClientOriginalExtension();
        $temp_name  = uniqid(10) . time();
        $image = interImage::make($file);

        // main image
        // $path = 'uploads/product/product_' . $temp_name . '.' . $extension;
        // $image->save($path);
        // $this->image_save_to_db($path);

        // rectangle
        // $image->fit(848, 438, function ($constraint) {
        //     $constraint->aspectRatio();
        // });
        // $path = 'uploads/file_manager/fm_image_848x438_' . $temp_name . '.' . $extension;
        // $image->save($path);
        // $this->image_save_to_db($path);

        $width = 192 + 400;
        $height = 254 + 400;
        $canvas = interImage::canvas($width, $height);
        $image->fit($width, $height, function ($constraint) {
            $constraint->aspectRatio();
        });
        $canvas->insert($image);
        // $canvas->insert(interImage::make(public_path('ilogo.png')), 'bottom-right');

        $path = 'uploads/products/product_' . $temp_name . '.' . $extension;
        $canvas->save($path);

        return $path;
    }

    public function canvas_store()
    {
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

        $data = new ContactMessage();
        $data->full_name = request()->full_name;
        $data->email = request()->email;
        $data->subject = request()->subject;
        $data->message = request()->message;
        $data->save();

        return response()->json($data, 200);
    }

    public function update()
    {
        $validator = Validator::make(request()->all(), [
            'id' => ['required',"exists:products"],
            'product_name' => ['required'],
            'product_name_english' => ['required'],
            'pages' => ['required'],
            'initial_stock' => ['required'],
            'stock_alert_qty' => ['required'],
            'search_keywords' => ['required'],
            'page_title' => ['required'],
            'meta_description' => ['required'],
            'meta_description' => ['required'],
            'category_id' => ['required'],
            'writer_id' => ['required'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $product_info = request()->except([
            'category_id',
            'writer_id',
            'translator_id',
            'thumb_image',
            "initial_stock",
        ]);

        $product = Product::find(request()->id);
        $product->fill($product_info);
        $product->save();

        if (request()->has('initial_stock')){
            ProductStockLog::where('product_id',$product->id)->update([
                "qty" => request()->initial_stock,
                "type" => "initial stock",
            ]);
        }

        if (request()->has('category_id'))
            $product->categories()->sync(request()->category_id);
        if (request()->has('writer_id'))
            $product->writers()->sync(request()->writer_id);
        if (request()->has('translator_id'))
            $product->translators()->sync(request()->translator_id);

        if (request()->hasFile('thumb_image')) {
            try {
                if(file_exists(public_path($product->thumb_image))){
                    unlink(public_path($product->thumb_image));
                }
                $product->thumb_image = $this->store_product_file(request()->file('thumb_image'));
                $product->save();
            } catch (\Throwable $e) {
                return response()->json([
                    "product"=>$product,"status"=>"failed",
                    "message"=>"product updated without image",
                    "error"=>$e->getMessage(),
                ]);
            }
        }

        return response()->json(["product"=>$product,"status"=>"success"]);
    }

    public function add_to_top_product()
    {
        $data = Product::find(request()->id);
        if (!$data) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => ['name' => ['data not found by given id ' . (request()->id ? request()->id : 'null')]],
            ], 422);
        }

        $data->is_top_product = $data->is_top_product ? 0 : 1;
        $data->save();

        return response()->json($data->is_top_product);
    }

    public function delete_related_image()
    {
        $id = request()->id;
        $related_image = ProductImage::find($id);
        if ($related_image) {
            if (file_exists(public_path($related_image->image))) {
                unlink(public_path($related_image->image));
            }
            $related_image->delete();
        }
        return response()->json('file deleted');
    }

    public function save_image($path)
    {
        return ProductImage::create([
            // 'product_id' => $product->id,
            'product_id' => 0,
            'image' => $path,
            'creator' => Auth::user()->id,
            'created_at' => Carbon::now()->toDateTimeString(),
        ]);
    }

    public function canvas_update()
    {
        $data = Product::find(request()->id);
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
            'id' => ['required', 'exists:products,id'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = Product::find(request()->id);
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
            'id' => ['required', 'exists:products,id'],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $data = Product::find(request()->id);
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
            $check = Product::where('id', $item->id)->first();
            if (!$check) {
                try {
                    Product::create((array) $item);
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

    public function store_discount()
    {
        $validator = Validator::make(request()->all(), [
            'product_id' => ['required','numeric','exists:products,id'],
            'main_price' => ['required'],
            'expire_date' => ['required'],
            'discount_amount' => ['required','numeric','min:1'],
        ],[
            'discount_amount.required' => ["discount not set"],
            'discount_amount.min' => ["numeric"=>"discount not set"],
            'product_id.required' => ["no product is selected"],
        ]);

        if ($validator->fails()) {
            return response()->json([
                'err_message' => 'validation error',
                'errors' => $validator->errors(),
            ], 422);
        }

        $product = Product::find(request()->product_id);
        $discount = ProductDiscount::create([
            'product_id' => $product->id,
            'main_price' => $product->sales_price,
            'parcent_discount' => request()->percent_discount > 0 ?  request()->percent_discount : null,
            'flat_discount' => request()->flat_discount > 0 ?  request()->flat_discount : null,
            'expire_date' => Carbon::parse($product->expire_date)->toDateTimeString(),
        ]);

        return response()->json(request()->all(), 200);
    }
}
