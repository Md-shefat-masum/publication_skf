<div>
<div class="breadcrumbs-area mb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="breadcrumbs-menu">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#" class="active">cart</a></li>
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
						<h2>Cart</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="cart-main-area mb-70">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<form action="#">
						<div class="table-content table-responsive mb-15 border-1">
							<table>
								<thead>
									<tr>
										<th class="product-thumbnail">Image</th>
										<th class="product-name">Product</th>
										<th class="product-price">Price</th>
										<th class="product-quantity">Quantity</th>
										<th class="product-subtotal">Total</th>
										<th class="product-remove">Remove</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="product-thumbnail"><a href="#"><img src="https://www.prossodprokashon.com/uploads/file_manager/fm_image_350x500_10616e680c89e4a1634625548.jpg"
													alt="man" /></a></td>
										<td class="product-name"><a href="#" class="hind-siliguri">কারফিউড নাইট</a></td>
										<td class="product-price"><span class="amount solaiman">৳ ২৬৬</span></td>
										<td class="product-quantity"><input type="number" value="1"></td>
										<td class="product-subtotal solaiman">৳ ২৬৬</td>
										<td class="product-remove"><a href="#"><i class="fa fa-times"></i></a></td>
									</tr>
									<tr>
										<td class="product-thumbnail"><a href="#"><img src="https://www.prossodprokashon.com/uploads/file_manager/fm_image_350x500_10630202c613b031661076166.jpg"
													alt="man" /></a></td>
										<td class="product-name"><a href="#">কুরআনের সান্নিধ্যে</a></td>
										<td class="product-price"><span class="amount solaiman">৳ ৭০</span></td>
										<td class="product-quantity"><input type="number" value="1"></td>
										<td class="product-subtotal solaiman">৳ ৭০</td>
										<td class="product-remove"><a href="#"><i class="fa fa-times"></i></a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 col-md-6 col-12">
					<div class="buttons-cart mb-30">
						<ul>
							<li><a href="#">Update Cart</a></li>
							<li><a href="{{ route('checkout') }}">Continue Shopping</a></li>
						</ul>
					</div>
					<div class="coupon">
						<h3>Coupon</h3>
						<p>Enter your coupon code if you have one.</p>
						<form action="#">
							<input type="text" placeholder="Coupon code">
							<a href="#">Apply Coupon</a>
						</form>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-12">
					<div class="cart_totals">
						<h2>Cart Totals</h2>
						<table>
							<tbody>
								<tr class="cart-subtotal">
									<th>Subtotal</th>
									<td>
										<span class="amount solaiman">৳ ৩৩৬</span>
									</td>
								</tr>
								<tr class="shipping">
									<th>Shipping</th>
									<td>
										<ul id="shipping_method">
											<li>
												<input type="radio">
												<label>
													Flat Rate:
													<span class="amount solaiman">৳ ৪০</span>
												</label>
											</li>
											<li>
												<input type="radio">
												<label> Free Shipping </label>
											</li>
										</ul>
										<a href="#">Calculate Shipping</a>
									</td>
								</tr>
								<tr class="order-total">
									<th>Total</th>
									<td>
										<strong>
											<span class="amount solaiman">৳ ৩৭৬</span>
										</strong>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="wc-proceed-to-checkout">
							<a href="{{ route('checkout') }}" class="solaiman">Proceed to Checkout</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
