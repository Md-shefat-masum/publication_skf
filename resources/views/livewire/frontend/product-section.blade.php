<div>
    <div class="product-area pt-95 xs-mb">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- tab-menu-start -->
                    <div class="tab-menu top_category_names mb-40 text-center">
                        <ul class="nav justify-content-center hind-siliguri">
                            <li>
                                <a onclick="event.preventDefault(); top_products.load_category_product()"
                                    href="/category/all">
                                    সকল বই
                                </a>
                            </li>
                            @foreach ($top_categories as $item)
                            <li>
                                <a onclick="top_products.load_category_product(`category={{$item->id}}`)"
                                    href="/category/{{ $item->name }}">
                                    {{ $item->name }}
                                </a>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                    <!-- tab-menu-end -->
                </div>
            </div>
            <!-- tab-area-start -->


            <div id="product_section" style="display:grid; grid-template-columns: repeat(5,1fr); gap: 30px;">
                <!-- single-product-start -->
            </div>

            <div class="text-center">
                <button onclick="top_products.load_product()" class="btn btn-primary my-5 load-more-btn hind-siliguri">
                    আরো দেখুন
                </button>
            </div>
            <script data-turbolinks-eval="false">
                top_products.page = 1;
                top_products.load_product();
            </script>

            <!-- tab-area-end -->
        </div>
    </div>
</div>
