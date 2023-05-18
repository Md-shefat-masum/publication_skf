<div>
    <div class="product-area xs-mb">
        <div class="container">
            <div class="breadcrumbs-area mb-70">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="breadcrumbs-menu">
                                <ul>
                                    <li><a href="/" class="hind-siliguri">হোম</a></li>
                                    <li><a href="#" class="hind-siliguri">ক্যাটেগরী</a></li>
                                    <li><a href="/category-product/{{$category->id}}" class="active hind-siliguri">{{$category->name}}</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="product_section" style="display: grid; grid-template-columns: repeat(5,1fr); gap: 30px; align-content: start;">
                @foreach ($products as $item)
                    <div class="product__item">
                        <div class="product__wrapper">
                            <div class="product__thumb">
                                <a href="#" class="w-img">
                                    <img src="/{{$item->thumb_image}}" class="product_thumb1" alt="product-img">
                                    <img class="product__thumb-2" src="/{{$item->thumb_image}}" alt="product-img">
                                </a>
                                <div class="product__action transition-3">
                                    <a href="#" data-bs-toggle="tooltip" data-bs-placement="top" title="Add to Wishlist">
                                        <i class="fa fa-heart"></i>
                                    </a>
                                    <a href="#" data-bs-toggle="modal" data-bs-target="#productModalId-4">
                                        <i class="fa fa-search"></i>
                                    </a>
                                </div>
                                <div class="product__sale">
                                    <span class="new">new</span>
                                    <span class="percent solaiman false">
                                        -১৪%
                                    </span>
                                </div>
                            </div>
                            <div class="product__content p-relative">
                                <div class="product__content-inner position-relative">
                                    <a href="/product-details/12" class="hind-siliguri product_name">
                                        <span> পাবলিক ম্যাটারস </span>
                                    </a>
                                </div>
                                <div class="add-cart p-absolute transition-3">
                                    <div class="product__price transition-3">
                                        <span class="solaiman false">
                                            ৪৪৬ ৳
                                        </span>
                                        <span class="old-price solaiman">
                                            ৫১৯ ৳
                                        </span>
                                    </div>
                                    <a href="#" onclick="
                                            event.preventDefault();
                                            cart.add_to_cart(`{&quot;id&quot;:12,&quot;category_id&quot;:3,&quot;product_id&quot;:12,&quot;product_name&quot;:&quot;পাবলিক ম্যাটারস&quot;,&quot;product_url&quot;:&quot;public-matters&quot;,&quot;sales_price&quot;:519,&quot;thumb_image&quot;:&quot;books_demo/12.webp&quot;,&quot;status&quot;:1,&quot;slug&quot;:&quot;public-matters&quot;,&quot;discount_amount&quot;:73,&quot;discount_percent&quot;:14,&quot;discount_price&quot;:446}`)
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
            <div class="mt-4 text-center category_product_paginate">
                {{ $products->links() }}
            </div>
        </div>
    </div>
</div>
