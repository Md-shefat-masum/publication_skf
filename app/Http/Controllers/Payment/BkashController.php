<?php

namespace App\Http\Controllers\Payment;

use App\Http\Controllers\Controller;
use App\Models\Order\Order;
use App\Models\Order\OrderPayment;
use App\Models\Settings\AppSettingTitle;
use App\Models\User\Address;
use Illuminate\Http\Request;

class BkashController extends Controller
{
    public $p_type = "test";
    // public $p_type = "live";

    public $app_key = "";
    public $app_secret = "";
    public $username = "";
    public $password = "";
    public $endpoint = "";

    public function __construct()
    {
        if ($this->p_type == "test") {
            $this->app_key = "4f6o0cjiki2rfm34kfdadl1eqq";
            $this->app_secret = "2is7hdktrekvrbljjh44ll3d9l1dtjo4pasmjvs5vl5qr3fug4b";
            $this->username = "sandboxTokenizedUser02";
            $this->password = "sandboxTokenizedUser02@12345";
            $this->endpoint = "https://tokenized.sandbox.bka.sh";
        } else {
            $this->app_key = "SoMw023AkXlVpHwtVVKzYaZwtc";
            $this->app_secret = "ud5s4cXgK0Wcx5bAJoTIB7EX8ILC3SJdnxIc7hF3sjBHJLO9wpcT";
            $this->username = "01575781379";
            $this->password = "i,BDR6MFZ}F";
            $this->endpoint = "https://tokenized.pay.bka.sh";
        }
    }
    public function payment($invoice)
    {
        $order = Order::where('invoice_id', $invoice)->first();

        $app_key = $this->app_key;
        $app_secret = $this->app_secret;
        $username = $this->username;
        $password = $this->password;

        if ($order) {
            $request_data = array(
                'app_key' => $app_key,
                'app_secret' => $app_secret
            );
            $url = curl_init($this->endpoint . '/v1.2.0-beta/tokenized/checkout/token/grant');
            $request_data_json = json_encode($request_data);
            $header = array(
                'Content-Type:application/json',
                'username:' . $username,
                'password:' . $password
            );
            curl_setopt($url, CURLOPT_HTTPHEADER, $header);
            curl_setopt($url, CURLOPT_CUSTOMREQUEST, "POST");
            curl_setopt($url, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($url, CURLOPT_POSTFIELDS, $request_data_json);
            curl_setopt($url, CURLOPT_FOLLOWLOCATION, 1);
            curl_setopt($url, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4);

            $data = curl_exec($url);
            $response = json_decode($data, true);
            curl_close($url);

            session()->put('p_token', $response['id_token']);

            // start payment
            $auth = session()->get('p_token');
            $callbackURL = route('payment_status', $order->invoice_id);

            $requestbody = array(
                'mode' => '0011',
                'amount' => $order->total_price,
                'currency' => 'BDT',
                'intent' => 'sale',
                'payerReference' => $this->p_type == "test" ? '01619777282' : 'kk-payment',
                'merchantInvoiceNumber' => $order->invoice_id,
                'callbackURL' => $callbackURL,
            );
            $url = curl_init($this->endpoint . '/v1.2.0-beta/tokenized/checkout/create');
            $requestbodyJson = json_encode($requestbody);

            $header = array(
                'Content-Type:application/json',
                'Authorization:' . $auth,
                'X-APP-Key:' . $app_key
            );

            curl_setopt($url, CURLOPT_HTTPHEADER, $header);
            curl_setopt($url, CURLOPT_CUSTOMREQUEST, "POST");
            curl_setopt($url, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($url, CURLOPT_POSTFIELDS, $requestbodyJson);
            curl_setopt($url, CURLOPT_FOLLOWLOCATION, 1);
            curl_setopt($url, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4);
            $resultdata = curl_exec($url);
            curl_close($url);
            echo $resultdata;

            $obj = json_decode($resultdata);
            return redirect($obj->bkashURL);
        }
    }

    public function status($invoice)
    {
        $order = Order::where('invoice_id', $invoice)->first();
        $check_payment = OrderPayment::where('paymentID', request()->paymentID)->first();

        if (!$order || $check_payment) {
            echo "404";
        }

        $status = request()->status;

        if ($status  == "success") {
            $check = $this->success_payment($order);
            if ($check == "success") {
                return redirect()->route('payment_success', $order->invoice_id);
            }
        }

        if ($status == "failure") {
            $order->payment_status = 'failed';
            $order->save();
        }

        if ($status == "cancel") {
        }

        return redirect()->route('payment_failed', $order->invoice_id);

        dd($invoice, request()->all());
    }

    public function success_payment($order)
    {
        $paymentID = request()->paymentID;
        $auth = session()->get('p_token');
        $app_key = $this->app_key;

        $post_token = array(
            'paymentID' => $paymentID
        );
        $url = curl_init($this->endpoint . '/v1.2.0-beta/tokenized/checkout/execute');
        $posttoken = json_encode($post_token);

        $header = array(
            'Content-Type:application/json',
            'Authorization:' . $auth,
            'X-APP-Key:' . $app_key,
        );
        curl_setopt($url, CURLOPT_HTTPHEADER, $header);
        curl_setopt($url, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($url, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($url, CURLOPT_POSTFIELDS, $posttoken);
        curl_setopt($url, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($url, CURLOPT_IPRESOLVE, CURL_IPRESOLVE_V4);
        $resultdata = curl_exec($url);
        curl_close($url);
        $obj = json_decode($resultdata);

        if ($obj && isset($obj->trxID)) {
            $payment = new OrderPayment();
            $payment->user_id = auth()->check() ? auth()->user()->id : null;
            $payment->order_id = $order->id;

            $payment->payment_method = 'bkash';
            $payment->payment_number = $obj->customerMsisdn;
            $payment->payerReference = $obj->payerReference;
            $payment->customerMsisdn = $obj->customerMsisdn;
            $payment->trx_id = $obj->trxID;
            $payment->amount = $obj->amount;

            $payment->save();

            $order->payment_status = 'paid';
            $order->save();

            return "success";
        }

        if ($obj->statusCode == "2062") {
            return $this->find_payment();
        }
    }

    public function find_payment()
    {
        $paymentID = request()->paymentID;
        $requestbody = array(
            'paymentID' => $paymentID
        );
        $requestbodyJson = json_encode($requestbody);

        $url = curl_init($this->endpoint . '/v1.2.0-beta/tokenized/checkout/payment/status');
        $header = array(
            'Content-Type:application/json',
            'authorization:' . session()->get('p_token'),
            'x-app-key:' . $this->app_key,
        );
        curl_setopt($url, CURLOPT_HTTPHEADER, $header);
        curl_setopt($url, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($url, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($url, CURLOPT_POSTFIELDS, $requestbodyJson);
        curl_setopt($url, CURLOPT_FOLLOWLOCATION, 1);
        $resultdatax = curl_exec($url);
        curl_close($url);
        $obj = json_decode($resultdatax);

        return 'success';
    }

    public function success($invoice_id)
    {
        $company = AppSettingTitle::getValue("invoice_company_name");
        $address1 = AppSettingTitle::getValue("invoice_address_line_1");
        $address2 = AppSettingTitle::getValue("invoice_address_line_2");
        $emails = AppSettingTitle::getValue("email", "values");
        $phones = AppSettingTitle::getValue("phone_number", "values");
        $order = Order::where('invoice_id', "LIKE", "%" . $invoice_id . "%")
            ->with([
                "order_details",
                "order_delivery_info" => function ($q) {
                    return $q->with([
                        "address"
                    ]);
                },
                "payment",
            ])
            ->first();;

        $customer_address = $order->order_delivery_info->address;

        if (!$order->payment) {
            return redirect()->route('payment_failed', $invoice_id);
        }

        return view('payment.bkash.success', [
            'order' => $order,
            'invoice' => $invoice_id,
            'company' => $company,
            'address1' => $address1,
            'address2' => $address2,
            'emails' => $emails,
            'phones' => $phones,
            'customer_address' => $customer_address,
        ]);
    }

    public function failed($invoice_id)
    {
        $company = AppSettingTitle::getValue("invoice_company_name");
        $address1 = AppSettingTitle::getValue("invoice_address_line_1");
        $address2 = AppSettingTitle::getValue("invoice_address_line_2");
        $emails = AppSettingTitle::getValue("email", "values");
        $phones = AppSettingTitle::getValue("phone_number", "values");
        $order = Order::where('invoice_id', "LIKE", "%" . $invoice_id . "%")
            ->with([
                "order_details",
                "order_delivery_info" => function ($q) {
                    return $q->with([
                        "address"
                    ]);
                },
                "payment",
            ])
            ->first();;

        $customer_address = $order->order_delivery_info?
            $order->order_delivery_info->address: new Address();

        return view('payment.bkash.failed', [
            'order' => $order,
            'invoice' => $invoice_id,
            'company' => $company,
            'address1' => $address1,
            'address2' => $address2,
            'emails' => $emails,
            'phones' => $phones,
            'customer_address' => $customer_address,
        ]);
    }
}
