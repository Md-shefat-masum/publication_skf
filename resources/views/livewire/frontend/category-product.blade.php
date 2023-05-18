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
            <div id="product_section" class="product_grid_5">
                @foreach ($products as $item)
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
            <div class="mt-4 text-center category_product_paginate">
                {{ $products->links() }}
            </div>
        </div>
    </div>
</div>
