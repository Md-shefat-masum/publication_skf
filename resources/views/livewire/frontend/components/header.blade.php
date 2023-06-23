<div>
    <div class="header-mid-area py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-12">
                    <div class="logo-area text-left logo-xs-mrg">
                        <a href="/">
                            <img src="https://htmldemo.net/boighor/boighor/images/logo/logo.png"
                                alt="logo" />
                        </a>
                    </div>
                </div>
                <div style="flex: 1;">
                    <div class="header-search">
                        <form action="#">
                            <input wire:model.debounce.500ms="search_query"  type="text"
                                placeholder="Search entire store here..." />
                            <button type="button" class="border-0"><i class="fa fa-search"></i></button>
                        </form>
                        @if (count($search_products))
                        <div class="search_pop_result custom_scroll">
                            <div class="product-total-2">
                                @forelse ($search_products as $item)
                                <div class="single-most-product bd mb-18">
                                    <div class="most-product-img">
                                        <a href="{{ route('product_details',[$item->id, $item->product_name]) }}">
                                            <img src="/{{$item->thumb_image}}" alt="{{ $item->product_name }}" />
                                        </a>
                                    </div>
                                    <div class="most-product-content">
                                        {{--
                                        <div class="product-rating">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            </ul>
                                        </div>
                                        --}}
                                        <h4>
                                            <a href="{{ route('product_details',[$item->id, $item->product_name]) }}"
                                                class="hind-siliguri">
                                                {{ $item->product_name }}
                                            </a>
                                        </h4>
                                        <div class="product-price">
                                            <ul>
                                                @if ($item->discount_info->discount_price)
                                                <li class="solaiman">৳ {{ enToBn($item->discount_info->discount_price)
                                                    }}</li>
                                                <li class="old-price solaiman">৳ {{ enToBn($item->sales_price) }}</li>
                                                @else
                                                <li class="solaiman">৳ {{ enToBn($item->sales_price) }}</li>
                                                @endif
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                @empty
                                <span class="text-danger">
                                    no data been found
                                </span>
                                @endforelse
                            </div>
                        </div>
                        @endif
                    </div>
                </div>
                <div class="col-md-4 col-12">
                    <div class="my-cart">
                        <ul class="d-flex flex-wrap gap-4 justify-content-end align-items-center">
                            <li>
                                <a href="{{auth()->check()?"/profile":"/login"}}">
                                    <i class="fa fa-user"></i>
                                    <div class="d-inline-block">
                                        @if (auth()->check())
                                            প্রোফাইল
                                        @else
                                            লগইন/রেজিস্টার
                                        @endif
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa fa-shopping-cart"></i>
                                    <div class="d-inline-block">
                                        ক্রয় তালিকা
                                    </div>
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
