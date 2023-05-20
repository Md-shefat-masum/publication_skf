<?php

namespace App\Http\Livewire\Frontend;

use App\Models\Order\Order;
use Livewire\Component;
use Livewire\WithPagination;

class CustomerProfile extends Component
{
    use WithPagination;
    protected $all_orders;
    protected $paginationTheme = 'bootstrap';

    public function mount()
    {
        if(!auth()->check()){
            // return header("Location:profile");
            return redirect('/login');
        }
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
            ]);;
    }
}
