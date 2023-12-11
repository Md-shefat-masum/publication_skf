<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            outline: 0;
            box-sizing: border-box;
        }

        .sales_amoutn_print_content {
            /* width: 4.5in; */
            text-align: center;
            padding: 10px;
            box-sizing: border-box;
            /* border: 1px solid rgba(0, 0, 0, 0.397); */
        }

        h4 {
            font-size: 22px;
            margin: 0px;
            margin-bottom: 5px;
        }

        h5 {
            font-size: 18px;
            margin-bottom: 0;
            margin-top: 0;
        }

        .header_bottom {
            text-align: left;
            font-size: 14px;
        }

        h3 {
            font-size: 15px;
            margin: 0;
        }

        .products {
            /* display: flex; */
            flex-wrap: wrap;
        }

        .products .list {
            /* width:  */
        }

        .products table {
            font-size: 12px;
            width: 100%;
        }

        .products table td,
        .products table th {
            padding: 5px;
            border: .5px solid black;
        }

        .products table td:not(:last-child),
        .products table th:not(:last-child) {
            border-right: 0;
        }

        .products table tr:not(:last-child) td,
        .products table tr th {
            border-bottom: 0;
        }

        .products table td:nth-child(1),
        .products table th:nth-child(1) {
            text-align: left;
        }

        .footer_text {
            margin: 0;
            font-size: 12px;
            text-align: center;
        }

        .wrapper {
            padding: 4px;
            box-sizing: border-box;
            width: 11in;
            /* border: 1px solid var(--border,red); */
        }

        .products table .header_infos td {
            border: 0;
        }

        .products table tfoot td {
            border: 0;
            border-top: .5px solid black;
        }

        .text-right {
            text-align: right;
        }
        .list_products{
            display: flex;
            flex-wrap: wrap;
            grid-template-columns: 5in 5in;
            column-gap: 1in;
            justify-content: flex-end;
        }
        .list_products .item{
            /* page-break-after: always; */
            min-width: 4.5in;
            max-width: 4.7in;
        }
        .list_products .item:nth-child(1),
        .list_products .item:nth-child(3),
        .list_products .item:nth-child(6),
        .list_products .item:nth-child(8){
            margin-right: 20px;
        }

    </style>
    <style>
        @media print{
            @page {
                size: Letter landscape;
                margin: 0px;
            }

            body {
                /* border: 1px solid red; */
            }

            body * {
                color: rgba(0, 0, 0, 1);
            }

            .break_after{
                page-break-after: always;
            }
        }

    </style>
    {{-- <style type="text/css" media="print">
        @page {
            size: landscape;
            margin: 0px;
        }
    </style> --}}
</head>

<body>
    @php
        set_time_limit(6000);
        ini_set("memory_limit", -1);
        $chunk = $order->details->chunk(22);
        $total_chunk = count($chunk);
    @endphp

    <div class="wrapper">
        <div class="sales_amoutn_print_content">

            <div class="products">
                <div class="list">
                    <div class="list_products">
                        @for ($k = 0; $k < $total_chunk; $k++)
                            <div class="item {{count($chunk[$k])>20?'break_after':''}}">
                                @if ($k == 0)
                                    <div class="header">
                                        <div class="left">
                                        </div>
                                        <div class="righ">
                                            <h4>I C S Publication</h4>
                                            <h5>48/1A, Purana Paltan, Dhaka. PH-9566440</h5>
                                        </div>
                                    </div>
                                @endif
                                <table cellspacing="0" class="">
                                    <thead>
                                        <tr class="header_infos">
                                            <td>
                                                <b> Client Name: </b>
                                                <span> {{ $order->user->user_name }} </span>
                                                <br>

                                                <b>Address:</b>
                                                <span>{{ $order->user->first_name }}</span>
                                            </td>
                                            <td colspan="3" style="vertical-align: top;">
                                                <h3>Sales Invoice</h3>
                                            </td>
                                            <td colspan="2" style="text-align: right;">
                                                <b>Bill Date:</b>
                                                <span>
                                                    {{ $order->invoice_date->format('d-M-y')}}
                                                </span>
                                                <br>

                                                <b>Sales ID:</b>
                                                <span>{{$order->sales_id}}</span>
                                                <br>

                                                <b>Sales Date:</b>
                                                <span>
                                                    {{ \Carbon\Carbon::now()->format('d-M-y')}}
                                                </span>
                                                <br>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Product Name</th>
                                            <th>Qty</th>
                                            <th>Price</th>
                                            <th>Comm</th>
                                            <th style="width: 53px;">Dis. Price</th>
                                            <th style="width: 70px;">Total Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($chunk[$k] as $item)
                                        <tr>
                                            <td>
                                                {{ $item->product->product_name_english }}
                                            </td>
                                            <td>{{ $item->qty }}</td>
                                            <td>{{ $item->product_price }}</td>
                                            <td>
                                                @if ($item->discount_price != 0 && $item->product_price != 0)
                                                    {{ round((100 * $item->discount_price) / $item->product_price) }} %
                                                @endif
                                            </td>
                                            <td>{{ $item->sales_price }}</td>
                                            <td>{{ $item->qty * $item->sales_price }}</td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td colspan="6"></td>
                                        </tr>
                                    </tfoot>
                                </table>

                            @if (count($chunk[$k])>19)
                            </div>
                            @endif

                            @if ($k == $total_chunk-1)
                            <div class="{{count($chunk[$k])>19?'item':''}}" style="margin-right: 0;" >
                                <div class="text-right">
                                    <b>Grand Total: &nbsp;&nbsp;&nbsp;</b>
                                    <b>TK {{ number_format($order->sub_total + $order->delivery_charge) }}</b>
                                </div>
                                <div style="display: flex; gap: 5px;">
                                    <table cellspacing="0" width="50%">
                                        <tr>
                                            <td>Deduction</td>
                                            <td>{{ number_format($order->discount) }}</td>
                                        </tr>
                                        <tr>
                                            <td>After Deduction</td>
                                            <td>{{ number_format($order->total_price) }}</td>
                                        </tr>
                                    </table>
                                    <table cellspacing="0" width="50%">
                                        <tr>
                                            <td>Paid Amount</td>
                                            <td>Due Amount</td>
                                        </tr>
                                        <tr>
                                            <td>{{ number_format($order->paid) }}</td>
                                            <td>{{ number_format($order->total_price - $order->paid) }}</td>
                                        </tr>
                                    </table>
                                </div>
                                <footer>
                                    <br>
                                    <p class="footer_text">বিক্রিত মাল কোন অবস্থাতেই ফেরৎ নেয়া হয়না।</p>
                                </footer>
                            </div>
                            @endif

                            @if (count($chunk[$k])<19)
                            </div>
                            @endif
                        @endfor
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="item break_after"></div>
</body>

</html>
