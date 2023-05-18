<div>
    <div class="header-mid-area py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-12">
                    <div class="logo-area text-left logo-xs-mrg">
                        <a href="/"><img src="https://htmldemo.net/boighor/boighor/images/logo/logo.png"
                                alt="logo" /></a>
                    </div>
                </div>
                <div style="flex: 1;">
                    <div class="header-search">
                        <form action="#">
                            <input type="text" placeholder="Search entire store here..." />
                            <button type="button" class="border-0"><i class="fa fa-search"></i></button>
                        </form>
                        <div class="search_pop_result custom_scroll">
                            @for ($i = 0; $i < 10; $i++)
                                <div class="product-total-2">
                                    <div class="single-most-product bd mb-18">
                                        <div class="most-product-img">
                                            <a
                                                href="">
                                                <img src="/books_demo/11.webp" alt="মানুষ গড়ার নববি শিল্প">
                                            </a>
                                        </div>
                                        <div class="most-product-content">
                                            <h4>
                                                <a href=""
                                                    class="hind-siliguri">
                                                    মানুষ গড়ার নববি শিল্প
                                                </a>
                                            </h4>
                                            <div class="product-price">
                                                <ul>
                                                    <li class="solaiman">৳ ৫৫৮</li>
                                                    <li class="old-price solaiman">৳ ৬৩৯</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endfor
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-12">
                    <div class="my-cart">
                        <ul>
                            <li>
                                <a href="#">
                                    <i class="fa fa-shopping-cart"></i>
                                    ক্রয় তালিকা
                                    <span id="cart_total_qty">0</span>
                                </a>
                                <div class="mini-cart-sub">
                                    <div class="cart-product">

                                    </div>
                                    <div class="cart-totals">
                                        <h5>
                                            সর্বমোট: &nbsp;&nbsp; ৳
                                            <span class="d-inline-block pl-4 solaiman float-none"
                                                id="cart_total_price">0</span>
                                        </h5>
                                    </div>
                                    <div class="cart-bottom">
                                        <a class="view-cart solaiman font-15" href="{{ route('cart') }}">ক্রয় তালিকা
                                            দেখুন</a>
                                        <a class="solaiman font-15" href="{{ route('checkout') }}">এখনই কিনুন</a>
                                    </div>
                                    <script>
                                        cart.render_cart_list();
                                    </script>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>
