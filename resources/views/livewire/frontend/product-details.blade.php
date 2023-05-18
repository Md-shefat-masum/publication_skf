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
                <div class="col-lg-9 col-md-12 col-12 order-lg-1 order-1">

                    <div class="product-main-area">
                        <div class="row">
                            <div class="col-lg-5 col-md-6 col-12">
                                <div>
                                    <ul class="slides">
                                        <li>
                                            <img class="w-100" src="/{{ $product->thumb_image }}"
                                                alt="{{$product->product_name}}" />
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-7 col-md-6 col-12">
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
                                                            @if ($product->discount_price)
                                                            <span class="solaiman font-bold">
                                                                ৳ {{ enTobn($product->discount_price)}}
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
                                        <div class="product-addto-links-text hind-siliguri">
                                            <p>বইটি মূলত ড. ইয়াসির ক্বাদির বিখ্যাত লেকচার সিরিজ ‘মাদার অব দ্য বিলিভার্স’
                                                থেকে সংকলন করা হয়েছে। এই সিরিজের দ্বিতীয় বই আয়িশা বিনতে আবু বকর রাযি.।
                                                এতে আয়িশা রাযি.-এর পূর্ণাঙ্গ জীবনী, এর মাঝে আমাদের শিক্ষা সবিস্তরে
                                                আলোচনা করা হয়েছে। </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="product-info-area mt-80">
                        <ul class="nav">
                            <li><a class="active" href="#Details" data-bs-toggle="tab">Details</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade show active" id="Details">
                                <div class="valu">
                                    <p class="solaiman">
                                        Book Name - আয়িশা বিনতে আবু বকর রা. <br>
                                        Page - 136 <br>
                                        Author - ড. ইয়াসির ক্বাদি <br>
                                        Translator - আলী আহমাদ মাবরুর <br>
                                        Binding - হার্ডকভার<br>
                                        Categories - আত্মজীবনী<br>
                                        Product Code - mon0010<br>
                                    </p>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="new-book-area mt-60">
                        <div class="section-title text-center mb-30">
                            <h3 class="hind-siliguri">সংশ্লিষ্ট বইসমূহ</h3>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="product-wrapper">
                                    <div class="product-img">
                                        <a href="#">
                                            <img src="https://www.prossodprokashon.com/uploads/file_manager/fm_image_350x500_10616e655bf00c61634624859.jpg"
                                                alt="book" class="primary" />
                                        </a>

                                        <div class="product-flag">
                                            <ul>
                                                <li><span class="sale">new</span></li>
                                                <li><span class="discount-percentage">-5%</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-details text-center">
                                        <div class="product-rating">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            </ul>
                                        </div>
                                        <h4><a href="#" class="hind-siliguri">খাদিজা বিনতে খুয়াইলিদ রাযি.
                                                (হার্ডকভার)</a>
                                        </h4>
                                        <div class="product-price">
                                            <ul>
                                                <li class="solaiman">৳ ১০৫</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-link">
                                        <div class="product-button">
                                            <a href="javascript:void(0)" onclick="add_to_cart()" class="hind-siliguri"
                                                title="ওর্ডার করুন"><i class="fa fa-shopping-cart"></i>ওর্ডার করুন</a>
                                        </div>
                                        <div class="add-to-link">
                                            <ul>
                                                <li><a href="{{ route('product_details',[1,'']) }}" title="Details"><i
                                                            class="fa fa-external-link"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="product-wrapper">
                                    <div class="product-img">
                                        <a href="#">
                                            <img src="https://www.prossodprokashon.com/uploads/file_manager/fm_image_350x500_10619b43137a9d81637565203.jpg"
                                                alt="book" class="primary" />
                                        </a>

                                        <div class="product-flag">
                                            <ul>
                                                <li><span class="sale">new</span></li>
                                                <li><span class="discount-percentage">-5%</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-details text-center">
                                        <div class="product-rating">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            </ul>
                                        </div>
                                        <h4><a href="#" class="hind-siliguri">কারবালা ইমাম মাহদি দাজ্জাল গজওয়ায়ে
                                                হিন্দ</a>
                                        </h4>
                                        <div class="product-price">
                                            <ul>
                                                <li class="solaiman">৳ ১৮৯</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-link">
                                        <div class="product-button">
                                            <a href="javascript:void(0)" onclick="add_to_cart()" class="hind-siliguri"
                                                title="ওর্ডার করুন"><i class="fa fa-shopping-cart"></i>ওর্ডার করুন</a>
                                        </div>
                                        <div class="add-to-link">
                                            <ul>
                                                <li><a href="{{ route('product_details',[1,'']) }}" title="Details"><i
                                                            class="fa fa-external-link"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="product-wrapper">
                                    <div class="product-img">
                                        <a href="#">
                                            <img src="https://www.prossodprokashon.com/uploads/file_manager/fm_image_350x500_10616bcce7a25661634454759.jpg"
                                                alt="book" class="primary" />
                                        </a>

                                        <div class="product-flag">
                                            <ul>
                                                <li><span class="sale">new</span></li>
                                                <li><span class="discount-percentage">-5%</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-details text-center">
                                        <div class="product-rating">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            </ul>
                                        </div>
                                        <h4><a href="#" class="hind-siliguri">সেনাপতি খালিদ বিন ওয়ালিদ (রা)</a></h4>
                                        <div class="product-price">
                                            <ul>
                                                <li class="solaiman">৳ ১০৫</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-link">
                                        <div class="product-button">
                                            <a href="javascript:void(0)" onclick="add_to_cart()" class="hind-siliguri"
                                                title="ওর্ডার করুন"><i class="fa fa-shopping-cart"></i>ওর্ডার করুন</a>
                                        </div>
                                        <div class="add-to-link">
                                            <ul>
                                                <li><a href="{{ route('product_details',[1,'']) }}" title="Details"><i
                                                            class="fa fa-external-link"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="product-wrapper">
                                    <div class="product-img">
                                        <a href="#">
                                            <img src="https://www.prossodprokashon.com/uploads/file_manager/fm_image_350x500_10619b3b02581661637563138.jpg"
                                                alt="book" class="primary" />
                                        </a>

                                        <div class="product-flag">
                                            <ul>
                                                <li><span class="sale">new</span></li>
                                                <li><span class="discount-percentage">-5%</span></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-details text-center">
                                        <div class="product-rating">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                <li><a href="#"><i class="fa fa-star"></i></a></li>
                                            </ul>
                                        </div>
                                        <h4><a href="#" class="hind-siliguri">এইম ফর দ্যা স্টারস</a></h4>
                                        <div class="product-price">
                                            <ul>
                                                <li class="solaiman">৳ ১৮২</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-link">
                                        <div class="product-button">
                                            <a href="javascript:void(0)" onclick="add_to_cart()" class="hind-siliguri"
                                                title="ওর্ডার করুন"><i class="fa fa-shopping-cart"></i>ওর্ডার করুন</a>
                                        </div>
                                        <div class="add-to-link">
                                            <ul>
                                                <li><a href="{{ route('product_details',[1,'sdf']) }}"
                                                        title="Details"><i class="fa fa-external-link"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-12 col-12 order-lg-2 order-2">
                    <div class="shop-left">
                        <div class="left-title mb-20">
                            <h4>Related Products</h4>
                        </div>
                        <div class="random-area mb-30">
                            <div class="">
                                <div class="product-total-2">
                                    <div class="single-most-product bd mb-18">
                                        <div class="most-product-img">
                                            <a href="#"><img
                                                    src="https://www.prossodprokashon.com/uploads/file_manager/fm_image_350x500_10616e680c89e4a1634625548.jpg"
                                                    alt="book" /></a>
                                        </div>
                                        <div class="most-product-content">
                                            <div class="product-rating">
                                                <ul>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <h4><a href="#" class="hind-siliguri">কারফিউড নাইট</a></h4>
                                            <div class="product-price">
                                                <ul>
                                                    <li class="solaiman">৳ ২৬৬</li>
                                                    <li class="old-price solaiman">৳ ৩৮০</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-most-product bd mb-18">
                                        <div class="most-product-img">
                                            <a href="#"><img
                                                    src="https://www.prossodprokashon.com/uploads/file_manager/fm_image_350x500_10616e6f6b4ac811634627435.jpg"
                                                    alt="book" /></a>
                                        </div>
                                        <div class="most-product-content">
                                            <div class="product-rating">
                                                <ul>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <h4><a href="#">ইসলামের ব্যাপকতা</a></h4>
                                            <div class="product-price">
                                                <ul>
                                                    <li class="solaiman">৳ ১৬৮</li>
                                                    <li class="old-price solaiman">৳ ২৪০</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-most-product">
                                        <div class="most-product-img">
                                            <a href="#"><img
                                                    src="https://www.prossodprokashon.com/uploads/file_manager/fm_image_350x500_10616e6f6b4ac811634627435.jpg"
                                                    alt="book" /></a>
                                        </div>
                                        <div class="most-product-content">
                                            <div class="product-rating">
                                                <ul>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <h4><a href="#">কুরআনের সান্নিধ্যে</a></h4>
                                            <div class="product-price">
                                                <ul>
                                                    <li class="solaiman">৳ ৭০</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
