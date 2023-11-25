<section class="profile__area pt-120 pb-120">
    <!-- header-area-end -->
    <!-- breadcrumbs-area-start -->
    <div class="breadcrumbs-area mb-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs-menu ">
                        <ul>
                            <li><a class="hind-siliguri" href="/">হোম</a></li>
                            <li><a class="hind-siliguri" href="#" class="active">পোফাইল</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumbs-area-end -->
    <!-- entry-header-area-start -->
    <div class="entry-header-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="entry-header-title">
                        <h2>My-Account</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- entry-header-area-end -->
    <!-- my account wrapper start -->
    <div class="my-account-wrapper mb-70">
        <div class="container-fluid">
            <div class="section-bg-color">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- My Account Page Start -->
                        <div class="myaccount-page-wrapper">
                            <!-- My Account Tab Menu Start -->
                            <div class="row">
                                <div class="col-lg-3 col-md-4">
                                    <div class="profile_pic mb-3">
                                        <div class="img mb-3 text-center">
                                            <img src="/{{ auth()->user()->photo ?? 'avatar.jpg' }}" id="p_image_view" class="rounded rounded-circle" alt="profile">
                                            <label class="change_pic" for="p_image">
                                                Change
                                                <input onchange="update_profile_pic()" type="file" id="p_image" accept=".jpg,.png" name="image">
                                            </label>
                                        </div>
                                        <h5 class="text-capitalize text-center">
                                            {{ auth()->user()->first_name }}
                                            {{ auth()->user()->last_name }}
                                        </h5>
                                    </div>
                                    <div class="myaccount-tab-menu nav" role="tablist">
                                        <a href="#orders" wire:click="change_tab('orders')" class="{{ $active_tab=="orders"?"active":'' }}" data-bs-toggle="tab">
                                            <i class="fa fa-cart-arrow-down"></i>
                                            Orders
                                        </a>
                                        {{-- <a href="#address-edit" wire:click="change_tab('address')" class="{{ $active_tab=="address"?"active":'' }}" data-bs-toggle="tab">
                                            <i class="fa fa-map-marker"></i>
                                            address
                                        </a> --}}
                                        <a href="#account-info" wire:click="change_tab('account')" class="{{ $active_tab=="account"?"active":'' }}" data-bs-toggle="tab">
                                            <i class="fa fa-user"></i>
                                            Account Details
                                        </a>
                                        <a href="#" onclick="return confirm(`logout`)" wire:click="logout">
                                            <i class="fa fa-sign-out"></i>
                                            Logout
                                        </a>
                                    </div>
                                </div>
                                <!-- My Account Tab Menu End -->

                                <!-- My Account Tab Content Start -->
                                <div class="col-lg-9 col-md-8">
                                    <div class="tab-content" id="myaccountContent">
                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade {{ $active_tab=="orders"?"show active":'' }}" id="orders" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h5>Orders</h5>
                                                <div class="myaccount-table table-responsive text-center">
                                                    <table class="table table-bordered text-center" style="white-space: nowrap;">
                                                        <thead class="thead-light">
                                                            <tr>
                                                                <th>Order</th>
                                                                <th>Date</th>
                                                                <th>Order Status</th>
                                                                <th>Total</th>
                                                                <th>Payment status</th>
                                                                <th>Payment method</th>
                                                                <th>TRX ID</th>
                                                                <th>Recive method</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            @foreach ($orders as $item)
                                                                <tr>
                                                                    <td>{{ $item->invoice_id }}</td>
                                                                    <td>{{ Carbon\Carbon::parse($item->invoice_date)->format('M d, Y') }}</td>
                                                                    <td>{{ $item->order_status }}</td>
                                                                    <td>{{ number_format($item->total_price) }}</td>
                                                                    <td>
                                                                        @if ($item->ecom_order_payment)
                                                                            {{ $item->payment_status }}
                                                                        @else
                                                                            <span class="text-warning badge bg-secondary">not paid</span> <br>
                                                                            <a href="/payment/{{$item->invoice_id}}" data-turbolinks="false" data-amount="{{ $item->total_price }}"
                                                                                data-order="{{ $item->invoice_id }}"
                                                                                class="d-inline-block mt-2">
                                                                                <i class="fa fa-money"></i> Pay Now
                                                                            </a>
                                                                        @endif
                                                                    </td>
                                                                    <td>
                                                                        @if ($item->ecom_order_payment)
                                                                            {{ $item->ecom_order_payment->payment_method }}
                                                                        @endif
                                                                    </td>
                                                                    <td>{{ $item->ecom_order_payment->trx_id ?? ''  }}</td>
                                                                    <td>{{ $item->delivery_method }}</td>
                                                                    <td>
                                                                        <a href="/invoice/{{$item->invoice_id}}" class="btn px-1 btn-sm btn-sqr">View</a>
                                                                    </td>
                                                                </tr>
                                                            @endforeach

                                                        </tbody>
                                                    </table>
                                                    {{ $orders->links() }}
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade {{ $active_tab=="address"?"show active":'' }}" id="address-edit" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h5>Billing Address</h5>
                                                <div class="account-details-form">
                                                    <form onsubmit="update_profile_address()">
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="first_name" class="required">Full Name</label>
                                                                    <input type="text" wire:model="first_name" name="first_name" id="first_name" placeholder="First Name" />
                                                                    @error('first_name') <div class="text-danger">{{ $message }}</div> @enderror
                                                                </div>
                                                            </div>
                                                            {{-- <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="last_name" class="required">Last Name</label>
                                                                    <input type="text" wire:model="last_name" name="last_name" id="last_name" placeholder="Last Name" />
                                                                    @error('last_name') <div class="text-danger">{{ $message }}</div> @enderror
                                                                </div>
                                                            </div> --}}
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="mobile_number" class="required">Mobile Number</label>
                                                                    <input type="tel" wire:model="mobile_number" name="mobile_number" id="mobile_number" placeholder="Mobile Number" />
                                                                    @error('mobile_number') <div class="text-danger">{{ $message }}</div> @enderror
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="email" class="required">Email</label>
                                                                    <input type="email" wire:model="email" name="email" id="email" placeholder="Email" />
                                                                    @error('email') <div class="text-danger">{{ $message }}</div> @enderror
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="single-input-item">
                                                                    <label for="address" class="required">Address</label>
                                                                    <textarea wire:model="address" name="address" id="address" placeholder="address"></textarea>
                                                                    @error('address') <div class="text-danger">{{ $message }}</div> @enderror
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="single-input-item">
                                                                    <label for="city" class="required">City</label>
                                                                    <input type="text" wire:model="city" name="city" id="city" placeholder="city" />
                                                                    @error('city') <div class="text-danger">{{ $message }}</div> @enderror
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="single-input-item">
                                                                    <label for="state" class="required">State</label>
                                                                    <input type="text" wire:model="state" name="state" id="state" placeholder="state" />
                                                                    @error('state') <div class="text-danger">{{ $message }}</div> @enderror
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="single-input-item">
                                                                    <label for="zip_code" class="required">zip_code</label>
                                                                    <input type="text" wire:model="zip_code" name="zip_code" id="zip_code" placeholder="zip_code" />
                                                                    @error('zip_code') <div class="text-danger">{{ $message }}</div> @enderror
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="single-input-item">
                                                                    <label for="zone" class="required">zone</label>
                                                                    <select id="zone" wire:model="zone" name="zone" class="form-control">
                                                                        <option value="Dhaka City"> Dhaka City</option>
                                                                        <option value="Khulna City"> Khulna City</option>
                                                                        <option value="Rangpur City"> Rangpur City</option>
                                                                        <option value="Chittagong City">Chittagong City</option>
                                                                        <option value="Gazipur City">Gazipur City</option>
                                                                        <option value="Others">Others</option>
                                                                    </select>
                                                                    @error('zone') <div class="text-danger">{{ $message }}</div> @enderror
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="single-input-item">
                                                                    <label for="country" class="required">country</label>
                                                                    <input type="text" wire:model="country" name="country" id="country" placeholder="country" />
                                                                    @error('country') <div class="text-danger">{{ $message }}</div> @enderror
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="lat" class="required">Lattitude</label>
                                                                    <input type="text" wire:model="lat" name="lat" id="lat" placeholder="Lattitude" />
                                                                    @error('lat') <div class="text-danger">{{ $message }}</div> @enderror
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="lng" class="required">Logntitude</label>
                                                                    <input type="text"  wire:model="lng" name="lng" id="lng" placeholder="Logntitude" />
                                                                    @error('lng') <div class="text-danger">{{ $message }}</div> @enderror
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="single-input-item">
                                                                    <label for="comment" class="required">Other Informations</label>
                                                                    <textarea  wire:model="comment" name="comment" id="comment" placeholder="Other information" ></textarea>
                                                                    @error('comment') <div class="text-danger">{{ $message }}</div> @enderror
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="single-input-item">
                                                            <button class="btn btn-sqr">Save Changes</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade {{ $active_tab=="account"?"show active":'' }}" id="account-info" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h5>Account Details</h5>
                                                <div class="account-details-form">
                                                    <form action="#" id="account_details_form" onsubmit="update_profile()">
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="first_name" class="required">First Name</label>
                                                                    <input type="text" value="{{ auth()->user()->first_name }}" name="first_name" id="first_name" placeholder="First Name" />
                                                                </div>
                                                            </div>
                                                            {{-- <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="last_name" class="required">Last Name</label>
                                                                    <input type="text" value="{{ auth()->user()->last_name }}" name="last_name" id="last_name" placeholder="Last Name" />
                                                                </div>
                                                            </div> --}}
                                                            {{-- <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="user_name" class="required">User Name</label>
                                                                    <input type="text" name="user_name" value="{{ auth()->user()->user_name }}" id="user_name" placeholder="User Name" />
                                                                </div>
                                                            </div> --}}
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="mobile_number" class="required">Mobile Number</label>
                                                                    <input type="text" name="mobile_number" value="{{ auth()->user()->mobile_number }}" id="mobile_number" placeholder="Mobile Number" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="single-input-item">
                                                            <label for="email" class="required">Email Addres</label>
                                                            <input type="email" name="email" id="email" value="{{ auth()->user()->email }}" placeholder="Email Address" />
                                                        </div>
                                                        <fieldset>
                                                            <legend>Password change</legend>
                                                            <div class="single-input-item">
                                                                <label for="old_password" class="required">Current Password</label>
                                                                <input type="password" value=" " name="old_password" id="old_password" placeholder="Current Password" />
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-6">
                                                                    <div class="single-input-item">
                                                                        <label for="password" class="required">New Password</label>
                                                                        <input type="password" name="password" id="password" placeholder="New Password" />
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <div class="single-input-item">
                                                                        <label for="password_confirmation" class="required">Confirm Password</label>
                                                                        <input type="password" name="password_confirmation" id="password_confirmation" placeholder="Confirm Password" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </fieldset>
                                                        <div class="single-input-item">
                                                            <button class="btn btn-sqr">Save Changes</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div> <!-- Single Tab Content End -->
                                    </div>
                                </div> <!-- My Account Tab Content End -->
                            </div>
                        </div> <!-- My Account Page End -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    {{-- <div class="modal fade" id="paymentModal" aria-hidden="true" aria-labelledby="paymentModalLabel" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="paymentModalLabel">Payment</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="/checkout/pay-due" onsubmit="pay_due_payment()" method="POST">
                    @csrf
                    <input type="hidden" id="invoice_id" name="invoice_id">
                    <div class="modal-body">
                        <div class="form-group">
                            <h5>Payment Method</h5> <br>
                            <label for="bkash" class="me-2">
                                <input type="radio" checked name="payment_method" onchange="toggle_payment_method()" id="bkash" value="bkash"> বিকাশ <br>
                            </label>
                            <label for="nagad" class="me-2">
                                <input type="radio" name="payment_method" onchange="toggle_payment_method()" id="nagad" value="nagad"> নগদ <br>
                            </label>
                            <label for="rocket" class="me-2">
                                <input type="radio" name="payment_method" onchange="toggle_payment_method()" id="rocket" value="rocket"> রকেট <br>
                            </label>
                            <label for="bank_account" class="me-2">
                                <input type="radio" name="payment_method" onchange="toggle_payment_method()" id="bank_account" value="bank_account"> ব্যাংক একাউন্ট <br>
                            </label>
                        </div>
                        <div class="mt-3">
                            <div id="vbkash" class="d-block">
                                @foreach (\App\Models\Settings\AppSettingTitle::getValue('bkash','values') as $item)
                                    <label for="{{$item->setting_value}}" class="me-2">
                                        <input type="radio" name="number" id="{{$item->setting_value}}" value="{{$item->setting_value}}"> {{$item->setting_value}}<br>
                                    </label>
                                @endforeach
                            </div>
                            <div id="vnagad" class="d-none">
                                @foreach (\App\Models\Settings\AppSettingTitle::getValue('nagad','values') as $item)
                                    <label for="{{$item->setting_value}}" class="me-2">
                                        <input type="radio" name="number" id="{{$item->setting_value}}" value="{{$item->setting_value}}"> {{$item->setting_value}}<br>
                                    </label>
                                @endforeach
                            </div>
                            <div id="vrocket" class="d-none">
                                @foreach (\App\Models\Settings\AppSettingTitle::getValue('rocket','values') as $item)
                                    <label for="{{$item->setting_value}}" class="me-2">
                                        <input type="radio" name="number" id="{{$item->setting_value}}" value="{{$item->setting_value}}"> {{$item->setting_value}}<br>
                                    </label>
                                @endforeach
                            </div>
                            <div id="vbank_account" class="d-none">
                                @foreach (\App\Models\Settings\AppSettingTitle::getValue('bank_account','values') as $item)
                                    <label for="{{$item->setting_value}}" class="me-2">
                                        <input type="radio" name="number" id="{{$item->setting_value}}" value="{{$item->setting_value}}"> {{$item->setting_value}}<br>
                                    </label>
                                @endforeach
                            </div>
                        </div>
                        <div class="mt-3">
                            <h5>Transaction ID</h5>
                            <input type="text" class="form-control" value="" id="trx_id" name="trx_id">
                        </div>
                        <div class="mt-3">
                            <h5>Amount</h5>
                            <input type="text" class="form-control" style="cursor:not-allowed;" readonly value="" id="payment_amount" name="amount">
                        </div>
                        <div class="error_log mt-3"></div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary px-4 rounded rounded-pill">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div> --}}
    <script>
        var mypayment_modal = new bootstrap.Modal('#paymentModal', {});
        var show_modal = () => {
            document.querySelector('#invoice_id').value = event.target.dataset.order;
            document.querySelector('#payment_amount').value = event.target.dataset.amount;
            mypayment_modal.show();
        };
        var toggle_payment_method = () => {
            [...document.querySelectorAll('input[name="payment_method"]')].forEach(el=>{
                document.querySelector(`div[id="v${el.id}"]`).classList.remove('d-block');
                document.querySelector(`div[id="v${el.id}"]`).classList.add('d-none');
            })
            document.querySelector(`div[id="v${event.target.id}"]`).classList.remove('d-none');
            document.querySelector(`div[id="v${event.target.id}"]`).classList.add('d-block');
        }
        var pay_due_payment = () =>{
            event.preventDefault();
            let target = event.target;
            loader.show();
            fetch(target.action, {
                method: "POST",
                headers: {
                    "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr("content"),
                },
                body: new FormData(target),
            })
                .then(async (res) => {
                    let response = {};
                    response.status = res.status;
                    response.data = await res.json();
                    return response;
                })
                .then((res) => {
                    loader.hide();
                    let error_log = document.querySelector('.error_log');
                    error_log.innerHTML = '';
                    if (res.status === 422) {
                        for (const key in res.data.data) {
                            if (Object.hasOwnProperty.call(res.data.data, key)) {
                                const element = res.data.data[key];
                                console.log(element);
                                error_log.innerHTML += `<div class="text-danger">${element[0]}</div>`
                            }
                        }
                        // error_response(res.data);
                    }
                    if (res.status === 200) {
                        window.toaster("success", "payment submitted successfully!");
                        target.reset();
                        setTimeout(() => {
                            window.location.reload();
                        }, 300);
                        console.log(res);
                    }
                })
        }
    </script>
</section>
