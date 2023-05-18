<div>
    <div class="breadcrumbs-area mb-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumbs-menu">
                        <ul>
                            <li><a href="/" class="hind-siliguri">হোম</a></li>
                            <li><a href="#" class="hind-siliguri">প্রোডাক্টস</a></li>
                            <li><a href="#" class="active hind-siliguri">{{$product->product_name??''}}</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="product-main-area mb-70">
        <div class="container">
            <div class="row">
                <div class="col-12 order-lg-1 order-1">

                    <div class="product-main-area">
                        <div class="row">
                            <div class="col-lg-4 col-md-6 col-12">
                                <div>
                                    <ul class="slides">
                                        <li>
                                            <img class="w-100" src="/{{ $product->thumb_image }}"
                                                alt="{{$product->product_name}}" />
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-5 col-md-6 col-12">
                                <div class="product-info-main">
                                    <div class="page-title">
                                        <h1 class="hind-siliguri">{{$product->product_name}}</h1>
                                    </div>
                                    <table class="table">
                                        <tbody>
                                            <tr>
                                                <td>Page</td>
                                                <td class="solaiman">&nbsp; {{ enToBn($product->pages) }} </td>
                                            </tr>
                                            <tr>
                                                <td>Writer</td>
                                                <td class="author-link">&nbsp;
                                                    @foreach ($product->writers as $key=>$writer)
                                                    <a href="#">
                                                        {{$writer->name}} {{ $key+1 < $product->
                                                            writers->count()?',':''}}
                                                    </a> &nbsp;
                                                    @endforeach
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Translator</td>
                                                <td class="author-link">&nbsp;
                                                    @foreach ($product->translators as $key=>$translator)
                                                    <a href="#">
                                                        {{$translator->name}} {{ $key+1 < $product->
                                                            translators->count()?',':''}}
                                                    </a> &nbsp;
                                                    @endforeach
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Binding</td>
                                                <td class="hind-siliguri">&nbsp; {{ $product->binding }} </td>
                                            </tr>
                                            <tr>
                                                <td>Categories</td>
                                                <td>
                                                    @foreach ($product->categories as $key=>$category)
                                                    <a href="{{ route('category_product',[$category->id,urlencode($category->name)]) }}"
                                                        class="hind-siliguri">
                                                        &nbsp;
                                                        {{$category->name}} {{ $key+1 < $product->
                                                            categories->count()?',':''}}

                                                    </a>
                                                    @endforeach
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Product Code</td>
                                                <td>&nbsp; {{ $product->sku }} </td>
                                            </tr>
                                            <tr>
                                                <td>ISBN</td>
                                                <td>&nbsp; {{ $product->isbn }} </td>
                                            </tr>
                                            @if ($product->discount_percent)
                                            <tr>
                                                <td>Discount</td>
                                                <td class="solaiman">&nbsp; {{enToBn($product->discount_percent)}}%
                                                </td>
                                            </tr>
                                            @endif
                                            <tr>
                                                <td>Price</td>
                                                <td class="solaiman">
                                                    <div class="product-info-price m-0 p-0">
                                                        <b class="price-final" style="font-size: unset;">
                                                            &nbsp;
                                                            @if ($product->discount_info->discount_price)
                                                            <span class="solaiman font-bold">
                                                                ৳ {{ enTobn($product->discount_info->discount_price)}}
                                                            </span>
                                                            <span class="old-price solaiman font-bold">
                                                                ৳ {{ enToBn($product->sales_price) }}
                                                            </span>
                                                            @else
                                                            <span class="solaiman font-bold">
                                                                ৳ {{ enToBn($product->sales_price)}}
                                                            </span>
                                                            @endif
                                                        </b>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>


                                    <div class="product-add-form">
                                        <form action="#">
                                            {{-- <div class="quality-button">
                                                <input class="qty" type="number" value="1">
                                            </div> --}}
                                            @php
                                            $cart_params = [
                                            "id" => $product->id,
                                            "product_id" => $product->product_id,
                                            "discount_amount" => $product->discount_amount,
                                            "discount_percent" => $product->discount_percent,
                                            "discount_price" => $product->discount_price,
                                            "sales_price" => $product->sales_price,
                                            "product_name" => $product->product_name,
                                            "product_name" => $product->product_name,
                                            "thumb_image" => $product->thumb_image,
                                            ];
                                            @endphp
                                            <a href="javascript:void(0)"
                                                onclick='event.preventDefault();cart.add_to_cart(`{{json_encode($cart_params)}}`)'>
                                                Add to cart
                                            </a>
                                        </form>
                                    </div>
                                    <div class="product-social-links">
                                        <ul class="social_links align-items-center">
                                            <li class="pe-3 hind-siliguri font-large-3"><h5 class="hind-siliguri m-0">শেয়ার: </h5></li>
                                            <li>
                                                <a target="_blank" href="https://www.facebook.com/sharer.php?u=">
                                                    <i class="fa fa-facebook-f"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a target="_blank" href="https://twitter.com/intent/tweet?url=">
                                                    <i class="fa fa-twitter"></i>
                                                </a>
                                            </li>
                                        </ul>
                                        {{-- <div class="product-addto-links">
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                            <a href="#"><i class="fa fa-pie-chart"></i></a>
                                            <a href="#"><i class="fa fa-envelope-o"></i></a>
                                        </div> --}}
                                        {{-- <div class="product-addto-links-text hind-siliguri">
                                            <p>বইটি মূলত ড. ইয়াসির ক্বাদির বিখ্যাত লেকচার সিরিজ ‘মাদার অব দ্য বিলিভার্স’
                                                থেকে সংকলন করা হয়েছে। এই সিরিজের দ্বিতীয় বই আয়িশা বিনতে আবু বকর রাযি.।
                                                এতে আয়িশা রাযি.-এর পূর্ণাঙ্গ জীবনী, এর মাঝে আমাদের শিক্ষা সবিস্তরে
                                                আলোচনা করা হয়েছে। </p>
                                        </div> --}}
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-12 col-12 order-lg-2 order-2">
                                <div class="shop-left">
                                    <div class="left-title mb-20">
                                        <h3 class="hind-siliguri">সংশ্লিষ্ট বইসমূহ</h3>
                                    </div>
                                    <div class="random-area mb-30">
                                        <div class="">
                                            <div class="product-total-2">
                                                @foreach ($related_products as $item)
                                                    <div class="single-most-product bd mb-18">
                                                        <div class="most-product-img">
                                                            <a href="{{ route('product_details',[$item->id, $item->product_name]) }}">
                                                                <img src="/{{$item->thumb_image}}" alt="{{ $item->product_name }}" />
                                                            </a>
                                                        </div>
                                                        <div class="most-product-content">
                                                            {{-- <div class="product-rating">
                                                                <ul>
                                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                                </ul>
                                                            </div> --}}
                                                            <h4>
                                                                <a href="{{ route('product_details',[$item->id, $item->product_name]) }}" class="hind-siliguri">
                                                                    {{ $item->product_name }}
                                                                </a>
                                                            </h4>
                                                            <div class="product-price">
                                                                <ul>
                                                                    @if ($item->discount_info->discount_price)
                                                                        <li class="solaiman">৳ {{ enToBn($item->discount_info->discount_price) }}</li>
                                                                        <li class="old-price solaiman">৳ {{ enToBn($item->sales_price) }}</li>
                                                                    @else
                                                                        <li class="solaiman">৳ {{ enToBn($item->sales_price) }}</li>
                                                                    @endif
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="product-info-area mt-80">
                        <ul class="nav">
                            <li><a class="active hind-siliguri" href="#Details" data-bs-toggle="tab">বিস্তারিত</a></li>
                            <li><a href="#Details2" class="hind-siliguri" data-bs-toggle="tab">কিভাবে কিনবেন?</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="Details">
                                <div class="value">
                                    <p class="solaiman">
                                        {{ $product->description }}
                                    </p>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="Details2">
                                <div class="valu">
                                    <ol class="solaiman">
                                        <li>
                                            এখনই কিনুন এ ক্লিক করুন।
                                        </li>
                                        <li>
                                            চেক আউট পেজে যান। যতো গুলো বই কিনতে চান সবগুলোতেই এখনই কিনুন এ ক্লিক করতে হবে।
                                        </li>
                                        <li>
                                            চেক আউট পেজে শিপিং ইনফরমেশন দিন।
                                        </li>
                                        <li>
                                            এরপর place order করুন।
                                        </li>
                                        <li>
                                            আমরা ফোন করে অর্ডারটি কনফার্ম করব।
                                        </li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="new-book-area mt-60">
                        <div class="section-title text-center mb-30">
                            <h3 class="hind-siliguri">সর্বশেষ প্রকাশিত</h3>
                        </div>
                        <div class="product_grid_5">
                            @foreach ($latest_products as $item)
                                <div class="product__item">
                                    <div class="product__wrapper">
                                        <div class="product__thumb">
                                            <a href="{{ route('product_details',[$item->id,$item->product_name]) }}" class="w-img">
                                                <img src="/{{$item->thumb_image}}" class="product_thumb1 w-100" alt="product-img">
                                                <img class="product__thumb-2 w-100" src="/{{$item->thumb_image}}" alt="product-img">
                                            </a>
                                            <div class="product__action transition-3">
                                                <a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Add to Wishlist">
                                                    <i class="fa fa-heart"></i>
                                                </a>
                                                <a href="#" data-bs-toggle="modal" data-bs-target="#productModalId-4">
                                                    <i class="fa fa-search"></i>
                                                </a>
                                            </div>
                                            @if ($item->discount_info->discount_percent)
                                                <div class="product__sale">
                                                    <span class="new">new</span>
                                                    <span class="percent solaiman false">
                                                        -{{ enToBn($item->discount_info->discount_percent) }}%
                                                    </span>
                                                </div>
                                            @endif
                                        </div>
                                        <div class="product__content p-relative">
                                            <div class="product__content-inner position-relative">
                                                <a href="{{ route('product_details',[$item->id,$item->product_name]) }}" class="hind-siliguri product_name">
                                                    <span> {{ $item->product_name }} </span>
                                                </a>
                                            </div>
                                            <div class="add-cart p-absolute transition-3">
                                                <div class="product__price transition-3">
                                                    @if ($item->discount_info->discount_price)
                                                        <span class="solaiman false">
                                                            ৳ {{ enToBn($item->discount_info->discount_price) }}
                                                        </span>
                                                        <span class="old-price solaiman">
                                                            ৳ {{ enToBn($item->sales_price) }}
                                                        </span>
                                                    @else
                                                        <span class="old-price solaiman">
                                                            ৳ {{ enToBn($item->sales_price) }}
                                                        </span>
                                                    @endif
                                                </div>
                                                <a href="#" onclick="
                                                        event.preventDefault();
                                                        cart.add_to_cart(`{{json_encode($item)}}`)
                                                    " class="hind-siliguri">
                                                    <i class="fa fa-shopping-cart"></i>
                                                    ওর্ডার করুন
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
