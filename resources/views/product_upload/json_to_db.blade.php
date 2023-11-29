<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="{{ asset('frontend') }}/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <table class="table">
                            <tr>
                                <td>english_name</td>
                                <td>bangla_name</td>
                                <td>price</td>
                                <td>discount</td>
                                <td>is_public</td>
                                <td>is_branch</td>
                            </tr>
                            @php
                                \App\Models\Product\ProductDiscount::truncate();
                                foreach ($data as $key=>$item) {
                                    $data[$key]->mode_name = \Str::slug($item->name);
                                }
                            @endphp
                            @foreach ($data2 as $key=>$item)
                                <tr class="mb-3">
                                    <td>
                                        @php
                                            $english_name = $item->english_name;
                                            $englis_name_main = "";
                                            // $english_name = ucwords(str_replace('-',' ',$english_name));
                                            $bangla_name = $item->bangla_name;
                                            $price = 0;
                                            $discount = 0;
                                            $is_branch = 0;
                                            $is_branch = $item->is_branch =="TRUE"?1:0;

                                            $old_price = $data->where('mode_name',$english_name)->first();


                                            $product = \App\Models\Product\Product::where('product_name', $bangla_name)->first();
                                            if($old_price){
                                                $price = $old_price->price;
                                                $discount = $old_price->discount;
                                                $englis_name_main =$old_price->name;
                                            }else{
                                            }

                                            if($product){

                                                $product->product_name_english = $englis_name_main;
                                                $product->product_url = \Str::slug($english_name);
                                                $product->is_branch = $is_branch;
                                                $product->sales_price = $price;
                                                $product->save();

                                                if($discount){
                                                    $flat_discount = $price * $discount / 100;
                                                    \App\Models\Product\ProductDiscount::create([
                                                        'product_id' => $product->id,
                                                        'main_price' => $price,
                                                        'parcent_discount' => $discount,
                                                        'flat_discount' => $flat_discount,
                                                        'expire_date' => \Carbon\Carbon::now()->addDays(765)->toDateString(),
                                                    ]);
                                                }
                                            }else{
                                                // dd($product, $item, $old_price);
                                            }
                                        @endphp
                                        {{ $englis_name_main }}
                                    </td>
                                    <td>
                                        {{$bangla_name }}
                                    </td>
                                    <td>
                                        {{ $price }}
                                    </td>
                                    <td>
                                        {{ $discount }}
                                    </td>
                                    <td>
                                        @if ($product)
                                        {{ $product->is_public }}
                                        @else
                                        0
                                        @endif

                                    </td>
                                    <td>
                                        @if ($product)
                                        {{ $product->is_branch }}
                                        @else
                                        0
                                        @endif
                                    </td>
                                </tr>
                            @endforeach

                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
</body>
</html>
