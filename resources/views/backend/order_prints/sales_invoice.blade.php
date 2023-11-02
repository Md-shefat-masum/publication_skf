<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
    <style>
        .sales_amoutn_print_content{
            height: 9.5in;
            width: 5.5in;
            border: 1px solid black;
            text-align: center;
            padding: 15px;
            box-sizing: border-box;
        }
        h4{
            font-size: 22px;
            margin-bottom: 10px;
        }
        h5{
            font-size: 18px;
            margin-bottom: 0;
            margin-top: 0;
        }
        .header_bottom{
            text-align: left;
        }
        .header_bottom h3{
            font-size: 15px;
        }
    </style>
</head>

<body>
    <div class="sales_amoutn_print_content">
        <div class="header">
            <div class="left">

            </div>
            <div class="righ">
                <h4>I C S Publication</h4>
                <h5>48/1A, Purana Paltan, Dhaka. PH-9566440</h5>
            </div>
        </div>
        <div class="header_bottom">
            <table>
                <tbody>
                    <tr>
                        <td>
                            <div>
                                Client Name:
                            </div>
                            <div>
                                Address:
                            </div>
                        </td>
                        <td>
                            <h3>Sales Invoice</h3>
                        </td>
                        <td>
                            <div>
                                Bill Date: 15-Oct-2
                            </div>
                            <div>
                                Sales ID:
                            </div>
                            <div>
                                Sales Date:
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="products">
            <table>
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Qty</th>
                        <th>Price</th>
                        <th>Comm</th>
                        <th>Dis. Price</th>
                        <th>Total Price</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($order->details as $item)
                    <tr>
                        <td>{{ $item->product_name }}</td>
                        <td>{{ $item->qty }}</td>
                        <td>{{ $item->product_price }}</td>
                        <td>{{ round((100 * $item->discount_price) / $item->product_price)  }} %</td>
                        <td>{{ $item->sales_price }}</td>
                        <td>{{ $item->qty * $item->sales_price }}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>
