<div>

    <link rel="stylesheet" href="/css/select2.css">
    <script src="/js/select2.js"></script>
    <script src="/js/cart.js"></script>

    <div class="breadcrumbs-area mb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumbs-menu">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#" class="active">checkout</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="entry-header-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="entry-header-title">
						<h2 class="hind-siliguri">ক্রয় চূড়ান্ত করুন</h2>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="checkout-area mb-70">
        <div class="pt-2 section-space shop-checkout-area">
            <div class="container">
                <form class="checkout-content" id="checkout-form" onsubmit="checkout_submit2(event)" method="post">
                    <div class="row">
                        <div class="col-md-4 col-sm-12">
                            <div class="card checkout-section checkout-box h-100">
                                <div class="section-head">
                                    <h2><span>1</span>Customer Information</h2>
                                </div>
                                <div class="address">
                                    @php
                                        $address = (object) [];
                                        // $address = \App\Models\OrderAddress::where('user_id',auth()->user()->id)->orderBy('id','DESC')->first();
                                    @endphp
                                    <div class="multiple-form-group">
                                        <div class="form-group mb-2">
                                            <label class="control-label" for="input-firstname">Full Name <sub class="text-danger h6">*</sub></label>
                                            <input class="form-control" onkeyup="set_checkout_info()" value="{{$address->first_name ?? ''}}" name="full_name" type="text" id="input-firstname" placeholder="Full Name" />
                                        </div>
                                        {{-- <div class="form-group mb-2">
                                            <label class="control-label" for="input-lastname">Last Name</label>
                                            <input type="text"  value="{{$address->last_name ?? ''}}" id="input-lastname" name="last_name" class="form-control" placeholder="Last Name*" />
                                        </div> --}}
                                    </div>


                                    <div class="form-group mb-2">
                                        <label class="control-label" for="input-telephone">Mobile <sub class="text-danger h6">*</sub></label>
                                        <input type="text" onkeyup="set_checkout_info()"  value="{{$address->mobile_number ?? ''}}" id="input-telephone" name="mobile_number" class="form-control" placeholder="Mobile" />
                                    </div>
                                    <div class="form-group mb-2" for="input-email">
                                        <label class="control-label">Email</label>
                                        <input type="email" onkeyup="set_checkout_info()"  value="{{$address->email ?? ''}}" id="input-email" name="email" class="form-control" placeholder="E-Mail" />
                                    </div>
                                    <div class="multiple-form-group">
                                        <div class="form-group mb-2" for="divisions">
                                            <label class="control-label">Division <sub class="text-danger h6">*</sub></label>
                                            <div>
                                                <select id="divisions" name="divisions" class="form-control"></select>
                                            </div>
                                        </div>
                                        <div class="form-group mb-2" for="districts">
                                            <label class="control-label">District <sub class="text-danger h6">*</sub></label>
                                            <div>
                                                <select id="districts" name="districts" class="form-control"></select>
                                            </div>
                                        </div>
                                        <div class="form-group mb-2" for="police_stations">
                                            <label class="control-label">Police Stations <sub class="text-danger h6">*</sub></label>
                                            <div>
                                                <select id="police_stations" name="police_stations" class="form-control"></select>
                                            </div>
                                        </div>
                                        {{-- <div class="form-group mb-2" for="upazilas">
                                            <label class="control-label">Upazila</label>
                                            <div>
                                                <select id="upazilas" name="upazilas" class="form-control"></select>
                                            </div>
                                        </div> --}}
                                        {{-- <div class="form-group mb-2" for="unions">
                                            <label class="control-label">Union</label>
                                            <div>
                                                <select id="unions" name="unions" class="form-control"></select>
                                            </div>
                                        </div> --}}
                                    </div>
                                    <div class="form-group mb-2">
                                        <label class="control-label" for="input-address">
                                            Address
                                            <sub class="text-danger h6">*</sub>
                                            <div>
                                                <sub class="mt-2 d-block">( eg: baily road, 16A, house 34, 4th floor )</sub>
                                            </div>
                                            <br>
                                        </label>
                                        {{-- <input type="text" value="{{$address->address ?? ''}}" id="input-address" name="address" class="form-control" placeholder="Address*" /> --}}
                                        <textarea class="form-control" onkeyup="set_checkout_info()" name="address" placeholder="address" rows="3"></textarea>
                                    </div>
                                    <div class="form-group mb-2">
                                        <label class="control-label">Comment</label>
                                        <textarea class="form-control" name="comment" placeholder="Comment" rows="4"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 col-sm-12">
                            <div class="row row-payment-delivery-order">
                                <div class="col-12 delivery-methods">
                                    <div class="card checkout-section">
                                        <div class="section-head">
                                            <h2><span>3</span>Delivery Method</h2>
                                        </div>
                                        <div class="">
                                            <p>Select a delivery method</p>
                                            <label class="radio-inline">
                                                <input id="home_delivery" data-value="{{$home_delivery_value}}" disabled type="radio" checked onchange="shipping_cost.innerHTML=`{{$home_delivery_value}}`; cart.render_check_out_cart_list()" name="shipping_method" value="home_delivery"/>
                                                Inside Dhaka - <span id="home_delivery_value">{{$home_delivery_value}}</span> ৳
                                            </label>
                                            {{-- <br />
                                            <label class="radio-inline">
                                                <input type="radio" onchange="shipping_cost.innerHTML=0; shipping_cost.innerHTML=`{{$cart_total}}`;" checked name="shipping_method" value="pickup" />
                                                Store Pickup - 0 ৳
                                            </label> --}}
                                            <br />
                                            <label class="radio-inline">
                                                <input id="outside_dhaka" data-value="{{$outside_dhaka_value}}" disabled type="radio" onchange="shipping_cost.innerHTML=`{{$outside_dhaka_value}}`; cart.render_check_out_cart_list()" name="shipping_method" value="outside_dhaka" />
                                                Outside Dhaka - <span id="outside_dhaka_value">{{$outside_dhaka_value}}</span> ৳
                                            </label>
                                            <br />
                                        </div>

                                    </div>
                                </div>

                                <div class="col-md-12 col-sm-12">
                                    <div class="checkout-section card checkout-box voucher-coupon p-1">
                                        <div class="card-body">
                                            <div class="row">
                                                {{-- <div class="col-md-6 col-sm-12" id="gift-voucher">
                                                    <div class="input-group">
                                                        <input type="text" name="voucher" placeholder="Gift Voucher"
                                                            id="input-voucher" class="form-control" />
                                                        <span class="input-group-btn"><button type="button"
                                                                id="button-voucher" data-loading-text="Loading..."
                                                                class="btn st-outline">Apply Voucher</button></span>
                                                    </div>
                                                </div> --}}
                                                <div class="col-md-12" id="discount-coupon">
                                                    <div class="input-group gap-2">
                                                        <div style="flex:1;">
                                                            <input type="text" name="coupon" onchange="apply_coupon()" placeholder="Promo / Coupon Code" id="input_coupon" class="form-control" />
                                                        </div>
                                                        <span class="input-group-btn">
                                                            <button type="button" onclick="apply_coupon()" id="button-coupon" data-loading-text="Loading..." class="btn btn-outline-info">
                                                                Apply Coupon
                                                            </button>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12 details-section-wrap">
                                    <div class="card checkout-section checkout-box">
                                        <div class="section-head">
                                            <h2><span>4</span>Order Overview</h2>
                                        </div>
                                        <div>
                                            <div id="carts"></div>
                                        </div>
                                        <div class="card-body">
                                            <table class="table check_out_cart_list table-bordered bg-white checkout-data">
                                                <thead>
                                                    <tr>
                                                        <td>Product Name</td>
                                                        <td>Price</td>
                                                        <td class="text-right">Total</td>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                </tbody>
                                                <tfoot>
                                                    <tr class="total">
                                                        <td colspan="2" class="text-right">
                                                            <strong>Sub-Total:</strong>
                                                        </td>
                                                        <input type="hidden" name="cart_total" value="" id="cart_total">
                                                        <td class="text-right">
                                                            <span class="amount">
                                                                ৳
                                                                <span class="check_out_cart_list_subtotal solaiman">0</span>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr class="total delivery_cost_row">
                                                        <td colspan="2" class="text-right">
                                                            <strong>Delivery Cost:</strong>
                                                        </td>
                                                        <td class="text-right">
                                                            <span class="amount solaiman">
                                                                ৳ <span data-cost="0" id="shipping_cost">
                                                                    {{ $home_delivery_value }}
                                                                </span>
                                                            </span>
                                                        </td>
                                                    </tr>

                                                    <tr class="total">
                                                        <td colspan="2" class="text-right">
                                                            <strong>Total:</strong>
                                                        </td>
                                                        <input type="hidden" name="order_total" value="" id="order_total">
                                                        <td class="text-right">
                                                            <span class="amount">
                                                                ৳
                                                                <span class="check_out_cart_list_total solaiman">0</span>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="checkout-final-action mt-3">
                        <div class="agree-text" style="margin-bottom: 10px;">
                            <input type="checkbox" name="agree" value="1" checked="checked" />
                            I have read and agree to the
                            <a href="#">
                                <b>Terms and Conditions</b>
                            </a>,
                            <a href="#">
                                <b>Privacy Policy</b>
                            </a> and
                            <a href="#">
                                <b>Refund and Return Policy</b>
                            </a>
                        </div>
                        <button id="button-confirm" class="btn submit-btn pull-right order_btn" type="submit">
                            Confirm Order
                        </button>
                    </div>
                </form>
                <script defer>
                    setTimeout(async () => {
                        cart.render_check_out_cart_list();
                        await init_division();
                        get_checkout_info();
                    }, 600);
                </script>
            </div>
        </div>
	</div>
</div>
