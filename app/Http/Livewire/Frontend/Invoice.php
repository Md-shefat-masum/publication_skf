<?php

namespace App\Http\Livewire\Frontend;

use App\Models\Order\Order;
use App\Models\Settings\AppSettingTitle;
use Livewire\Component;

class Invoice extends Component
{
    public $invoice = "";
    public $order;
    public $company;
    public $address1;
    public $address2;
    public $emails;
    public $phones;
    public $customer_address;

    public function mount($invoice)
    {
        $this->invoice = $invoice;
        $this->get_order();
        $this->company = AppSettingTitle::getValue("invoice_company_name");
        $this->address1 = AppSettingTitle::getValue("invoice_address_line_1");
        $this->address2 = AppSettingTitle::getValue("invoice_address_line_2");
        $this->emails = AppSettingTitle::getValue("email", "values");
        $this->phones = AppSettingTitle::getValue("phone_number", "values");
        $this->customer_address = $this->order->order_delivery_info?->address;
    }

    public function get_order()
    {
        $this->order = Order::where('invoice_id', "LIKE", "%" . $this->invoice . "%")
            ->with([
                "order_details",
                "order_delivery_info" => function ($q) {
                    return $q->with([
                        "address"
                    ]);
                },
                "order_payments",
            ])
            ->first();
        // dump($this->order->toArray());
    }

    public function render()
    {
        return view('livewire.frontend.invoice')
            ->extends('layouts.app', [
                'meta' => [
                    "title" =>  "Invoice",
                    "image" => "",
                    "og_image" => "",
                    "twitter_image" => "",
                    "description" => "invoice",
                    "keywords" => "invoice"
                ],
            ]);
    }
}
