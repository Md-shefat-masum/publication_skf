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
        body{
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            outline: 0;
            box-sizing: border-box;
        }
        .sales_amoutn_print_content{
            width: 5in;
            text-align: center;
            padding: 5px;
            box-sizing: border-box;
        }
        h4{
            font-size: 22px;
            margin: 0px;
            margin-bottom: 5px;
        }
        h5{
            font-size: 18px;
            margin-bottom: 0;
            margin-top: 0;
        }
        .header_bottom{
            text-align: left;
            font-size: 14px;
        }
        h3{
            font-size: 15px;
            margin: 0;
        }

        .products{
            display: flex;
            flex-wrap: wrap;
        }

        .products .list{

        }

        .products table{
            font-size: 12px;
        }
        .products table td,
        .products table th{
            padding: 5px;
            border: .5px solid black;
        }
        .products table td:not(:last-child),
        .products table th:not(:last-child){
            border-right: 0;
        }
        .products table tr:not(:last-child) td,
        .products table tr th{
            border-bottom: 0;
        }
        .products table td:nth-child(1),
        .products table th:nth-child(1){
            text-align: left;
        }
        .footer_text{
            margin: 0;
            font-size: 12px;
            text-align: center;
        }

        .wrapper{
            padding: 4px;
            box-sizing: border-box;
        }
        .products table .header_infos td{
            border: 0;
        }
        .products table tfoot td{
            border: 0;
            border-top: .5px solid black;
        }
        .text-right{
            text-align: right;
        }
    </style>
    <style>
        @media print{
            @page {
                size: landscape;
                margin: 0px;
            }
        }
    </style>
</head>

<body>
    <div class="wrapper">
        <div class="sales_amoutn_print_content">
            <div class="header">
                <div class="left">

                </div>
                <div class="righ">
                    <h4>I C S Publication</h4>
                    <h5>48/1A, Purana Paltan, Dhaka. PH-9566440</h5>
                </div>
            </div>
            <div class="products">
                <div class="list">
                    <table cellspacing="0">
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
                            @foreach ($order->details as $item)
                                <tr>
                                    <td>
                                        {{ $item->id }}
                                        {{ $item->product_id }}
                                        {{ $item->product_name }}
                                    </td>
                                    <td>{{ $item->qty }}</td>
                                    <td>{{ $item->product_price }}</td>
                                    <td>{{ round((100 * $item->discount_price) / $item->product_price)  }} %</td>
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
                    <div class="text-right">
                        <b>Grand Total: &nbsp;&nbsp;&nbsp;</b>
                        <b>TK {{ number_format($order->total_price) }}</b>
                    </div>
                    <div style="display: flex; gap: 5px;">
                        <table  cellspacing="0" width="50%">
                            <tr>
                                <td>Deduction</td>
                                <td>0</td>
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
                                <td>{{ number_format($order->total_price) }}</td>
                                <td>0</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <footer>
                <br>
                <br>
                <p class="footer_text">বিক্রিত মাল কোন অবস্থাতেই ফেরৎ নেয়া হয়না।</p>
            </footer>
        </div>
    </div>
</body>

</html>
