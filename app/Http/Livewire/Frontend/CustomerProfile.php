<?php

namespace App\Http\Livewire\Frontend;

use App\Models\Order\Order;
use App\Models\User\Address;
use Livewire\Component;
use Livewire\WithPagination;

class CustomerProfile extends Component
{
    use WithPagination;
    protected $all_orders;
    protected $paginationTheme = 'bootstrap';
    public $active_tab = "orders";

    public $first_name;
    public $last_name;
    public $mobile_number;
    public $email;
    public $address;
    public $city;
    public $state;
    public $zip_code;
    public $zone;
    public $country;
    public $lat;
    public $lng;
    public $comment;

    protected $rules = [
        'first_name' => ["required","min:3"],
        'mobile_number' => ["required","min:11"],
        "address" => ["required","min:5"],
        "city" => ["required","min:4"],
        "country" => ["required","min:4"],
    ];

    public function updated($propertyName)
    {
        $this->validateOnly($propertyName);
    }

    public function load_address()
    {
        $address = Address::where('table_name','users')->where('table_id',auth()->user()->id)->latest()->first();
        if($address){
            foreach ($address->toArray() as $key=>$value) {
                $this->$key = $value;
            }
        }
    }

    // public function save_address()
    // {
    //     $validatedData = $this->validate();
    //     $address = Address::where('table_name','users')->where('table_id',auth()->user()->id)->latest()->first();
    //     if($address){
    //         $address->fill($validatedData);
    //     }else{
    //         Address::create($validatedData);
    //     }
    // }

    public function mount()
    {
        if(!auth()->check()){
            // return header("Location:profile");
            return redirect('/login');
        }
        $this->load_address();
    }

    public function get_products()
    {
        $this->all_orders = Order::where('user_id', auth()->user()->id)
        ->select([
            'id',
            'user_id',
            'invoice_id',
            'invoice_date',
            'order_status',
            'sub_total',
            'discount',
            'coupon_discount',
            'delivery_charge',
            'variant_price',
            'total_price',
            'payment_status',
            'delivery_method',
        ])
        ->orderBy('id','DESC')
        ->paginate(5);
    }

    public function change_tab($tab)
    {
        $this->active_tab = $tab;
    }


    public function logout()
    {
        auth()->logout();
        return redirect("/");
    }

    public function render()
    {
        $this->get_products();
        // dd($this->all_orders, auth()->user()->id);
        return view('livewire.frontend.customer-profile',[
                'orders' => $this->all_orders,
            ])
            ->extends('layouts.app', [
                'meta' => [
                    "title" =>  "Profile",
                    "image" => "",
                    "og_image" => "",
                    "twitter_image" => "",
                    "description" => "",
                    "price" => "",
                    "keywords" => ""
                ],
            ]);
    }
}
