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
        <div class="container">
            <div class="section-bg-color">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- My Account Page Start -->
                        <div class="myaccount-page-wrapper">
                            <!-- My Account Tab Menu Start -->
                            <div class="row">
                                <div class="col-lg-3 col-md-4">
                                    <div class="myaccount-tab-menu nav" role="tablist">
                                        <a href="#orders" class="active" data-bs-toggle="tab">
                                            <i class="fa fa-cart-arrow-down"></i>
                                            Orders
                                        </a>
                                        {{-- <a href="#dashboad" class="active" data-bs-toggle="tab">
                                            <i class="fa fa-dashboard"></i>
                                            Dashboard
                                        </a> --}}
                                        {{-- <a href="#download" data-bs-toggle="tab">
                                            <i class="fa fa-cloud-download"></i>
                                            Download
                                        </a> --}}
                                        {{-- <a href="#payment-method" data-bs-toggle="tab">
                                            <i class="fa fa-credit-card"></i>
                                            Payments
                                        </a> --}}
                                        <a href="#address-edit" data-bs-toggle="tab">
                                            <i class="fa fa-map-marker"></i>
                                            address
                                        </a>
                                        <a href="#account-info" data-bs-toggle="tab">
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
                                        {{-- <div class="tab-pane fade show" id="dashboad" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h5>Dashboard</h5>
                                                <div class="welcome">
                                                    <p>
                                                        Hello,
                                                        <strong>{{ auth()->user()->first_name }}</strong>
                                                        <strong>{{ auth()->user()->last_name }}</strong>
                                                    </p>
                                                </div>
                                                <p class="mb-0">From your account dashboard. you can easily check &
                                                    view your recent orders, manage your shipping and billing addresses
                                                    and edit your password and account details.</p>
                                            </div>
                                        </div> --}}
                                        <!-- Single Tab Content End -->

                                        <!-- Single Tab Content Start -->
                                        <div class="tab-pane fade show active" id="orders" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h5>Orders</h5>
                                                <div class="myaccount-table table-responsive text-center">
                                                    <table class="table table-bordered">
                                                        <thead class="thead-light">
                                                            <tr>
                                                                <th>Order</th>
                                                                <th>Date</th>
                                                                <th>Status</th>
                                                                <th>Payment</th>
                                                                <th>Recive method</th>
                                                                <th>Total</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            @foreach ($orders as $item)
                                                                <tr>
                                                                    <td>{{ $item->invoice_id }}</td>
                                                                    <td>{{ Carbon\Carbon::parse($item->invoice_date)->format('M d, Y') }}</td>
                                                                    <td>{{ $item->order_status }}</td>
                                                                    <td>{{ $item->payment_status }}</td>
                                                                    <td>{{ $item->delivery_method }}</td>
                                                                    <td>{{ number_format($item->total_price) }}</td>
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
                                        <div class="tab-pane fade" id="address-edit" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h5>Billing Address</h5>
                                                <div class="account-details-form">
                                                    <form action="">
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="first_name" class="required">First Name</label>
                                                                    <input type="text" id="first_name" placeholder="First Name" />
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="last_name" class="required">Last Name</label>
                                                                    <input type="text" id="last_name" placeholder="Last Name" />
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="mobile_number" class="required">Mobile Number</label>
                                                                    <input type="tel" id="mobile_number" placeholder="Mobile Number" />
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="email" class="required">Email</label>
                                                                    <input type="email" id="email" placeholder="Email" />
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="single-input-item">
                                                                    <label for="address" class="required">Address</label>
                                                                    <textarea type="address" id="address" placeholder="address"></textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="single-input-item">
                                                                    <label for="city" class="required">City</label>
                                                                    <input type="city" id="city" placeholder="city" />
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="single-input-item">
                                                                    <label for="state" class="required">State</label>
                                                                    <input type="state" id="state" placeholder="state" />
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="single-input-item">
                                                                    <label for="zip_code" class="required">zip_code</label>
                                                                    <input type="zip_code" id="zip_code" placeholder="zip_code" />
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="single-input-item">
                                                                    <label for="zone" class="required">zone</label>
                                                                    <input type="zone" id="zone" placeholder="zone" />
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-4">
                                                                <div class="single-input-item">
                                                                    <label for="country" class="required">country</label>
                                                                    <input type="country" id="country" placeholder="country" />
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="lat" class="required">Lattitude</label>
                                                                    <input type="lat" id="lat" placeholder="Lattitude" />
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="lng" class="required">Logntitude</label>
                                                                    <input type="lng" id="lng" placeholder="Logntitude" />
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="single-input-item">
                                                                    <label for="comment" class="required">Other Informations</label>
                                                                    <textarea type="comment" id="comment" placeholder="Other information" ></textarea>
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
                                        <div class="tab-pane fade" id="account-info" role="tabpanel">
                                            <div class="myaccount-content">
                                                <h5>Account Details</h5>
                                                <div class="account-details-form">
                                                    <form action="#">
                                                        <div class="row">
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="first-name" class="required">First Name</label>
                                                                    <input type="text" name="first_name" id="first-name" placeholder="First Name" />
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6">
                                                                <div class="single-input-item">
                                                                    <label for="last-name" class="required">Last Name</label>
                                                                    <input type="text" name="last_name" id="last-name" placeholder="Last Name" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="single-input-item">
                                                            <label for="display-name" class="required">User Name</label>
                                                            <input type="text" name="user_name" id="display-name" placeholder="User Name" />
                                                        </div>
                                                        <div class="single-input-item">
                                                            <label for="email" class="required">Email Addres</label>
                                                            <input type="email" id="email" placeholder="Email Address" />
                                                        </div>
                                                        <fieldset>
                                                            <legend>Password change</legend>
                                                            <div class="single-input-item">
                                                                <label for="current-pwd" class="required">Current Password</label>
                                                                <input type="password" name="old_password" id="current-pwd" placeholder="Current Password" />
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-lg-6">
                                                                    <div class="single-input-item">
                                                                        <label for="new-pwd" class="required">New Password</label>
                                                                        <input type="password" name="password" id="new-pwd" placeholder="New Password" />
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-6">
                                                                    <div class="single-input-item">
                                                                        <label for="confirm-pwd" class="required">Confirm Password</label>
                                                                        <input type="password" name="password_confirmation" id="confirm-pwd" placeholder="Confirm Password" />
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
</section>
