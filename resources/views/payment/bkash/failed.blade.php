@extends('layouts.app',[
    'meta' => [
        "title" =>  "Invoice",
        "image" => "",
        "og_image" => "",
        "twitter_image" => "",
        "description" => "invoice",
        "keywords" => "invoice"
    ],
])
@section('content')
<div>
    <div class="container">
        <h3 class='page_title h4 mt-4 text-center hind-siliguri'>
            <span class="text-danger">দুঃখিত!</span>
            আপনার অর্ডারটি সম্পন্ন হয়নি। পুনরায় পেমেন্ট করুন।
        </h3>
        <div class="text-center">
            <a class="btn btn-warning hind-siliguri" data-turbolinks="false" href="{{ route('payment',$order->invoice_id) }}">
                পেমেন্ট করুন
            </a>
        </div>
        <div class="col-12 padding mx-auto">
            @if ($order)
                <div class="card mt-5 print_body">
                    <div class="card-header p-4">
                        <div class="float-right">
                            <h3 class="mb-0">Invoice #{{$order->invoice_id}}</h3>
                            Date: {{Carbon\Carbon::parse($order->invoice_date)->format("d M, Y")}}
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row mb-4">
                            <div class="col-sm-6">
                                <h5 class="mb-3">From:</h5>
                                <h3 class="text-dark mb-1">{{ $company }}</h3>
                                <div>{{ $address1 }}</div>
                                <div>{{ $address2 }}</div>
                                <div>
                                    Email:
                                    @foreach ($emails as $key=>$email)
                                        {{ $email->setting_value }} {{ $key+1<count($emails)?",":""}}
                                    @endforeach
                                </div>
                                <div>
                                    Phone:
                                    @foreach ($phones as $key=>$phone)
                                        {{ $phone->setting_value }} {{ $key+1<count($phones)?",":""}}
                                    @endforeach
                                </div>
                            </div>
                            <div class="col-sm-6 text-end">
                                <h5 class="mb-3">To:</h5>
                                <h3 class="text-dark mb-1">
                                    {{ $customer_address->first_name }}
                                    {{ $customer_address->last_name }}
                                </h3>
                                <div>
                                    {{ $customer_address->address }}

                                    {{ $customer_address->city?",":'' }}
                                    {{ $customer_address->city }}

                                    {{ $customer_address->state?",":'' }}
                                    {{ $customer_address->state }}
                                </div>
                                <div>
                                    {{ $customer_address->zip_code }}
                                    {{ $customer_address->zip_code?",":'' }}

                                    {{ $customer_address->zone }}

                                    {{ $customer_address->country?",":'' }}
                                    {{ $customer_address->country }}
                                </div>
                                <div>Email: {{ $customer_address->email }}</div>
                                <div>Phone: {{ $customer_address->mobile_number }}</div>
                            </div>
                        </div>
                        <div class="table-responsive-sm">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th class="center">#</th>
                                        <th>Item</th>
                                        <th class="text-right">Price</th>
                                        <th class="text-center">Qty</th>
                                        <th class="text-end">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($order->order_details as $key=>$item)
                                        <tr>
                                            <td class="center solaiman">{{ enToBn($key+1) }}</td>
                                            <td class="left strong hind-siliguri">{{ $item->product_name }}</td>
                                            <td class="text-right solaiman">
                                                ৳ {{ enToBn( $item->sales_price ) }}
                                            </td>
                                            <td class="text-center solaiman"> {{ enToBn($item->qty) }} </td>
                                            <td class="text-end solaiman">৳ {{ enToBn($item->qty * $item->sales_price) }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-lg-7 col-sm-7">
                            </div>
                            <div class="col-lg-5 col-sm-5 ml-auto">
                                <table class="table table-clear">
                                    <tbody>
                                        <tr>
                                            <td class="left text-end">
                                                <strong class="text-dark">Subtotal</strong>
                                            </td>
                                            <td class="text-end solaiman">৳ {{ enToBn(number_format($order->sub_total)) }}</td>
                                        </tr>
                                        <tr>
                                            <td class="left text-end">
                                                <strong class="text-dark">Delivery Charge</strong>
                                            </td>
                                            <td class="text-end solaiman">৳ {{ enToBn($order->delivery_charge) }}</td>
                                        </tr>

                                        @if ($order->coupon_discount)
                                        <tr>
                                            <td class="left text-end">
                                                <strong class="text-dark">Coupon Discount </strong>
                                            </td>
                                            <td class="text-end solaiman">৳ -{{ enToBn($order->coupon_discount) }}</td>
                                        </tr>
                                        @endif

                                        <tr>
                                            <td class="left text-end">
                                                <strong class="text-dark ">Total</strong>
                                            </td>
                                            <td class="right text-end">
                                                <strong class="text-dark solaiman">৳ {{ enToBn(number_format($order->total_price)) }}</strong>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer bg-white">
                        <p class="mb-0">
                            {{url('')}},
                            {{$company}},
                            {{$address1}},
                            {{$address2}}
                        </p>
                    </div>
                </div>
            @else
                <h1>There is no order placed according to your invoice.</h1>
            @endif
            <div class="text-end mt-3 print_btn">
                <button onclick="window.print()" type="button" class="btn btn-secondary">
                    <i class="fa fa-print"></i> print
                </button>
            </div>
        </div>
    </div>
</div>
@endsection
