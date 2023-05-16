<div>
    <div class="product-area pt-95 xs-mb">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- tab-menu-start -->
                    <div class="tab-menu top_category_names mb-40 text-center">
                        <ul class="nav justify-content-center hind-siliguri">
                            <li><a onclick="event.preventDefault(); load_category_product()" href="/category/all"> সকল
                                    বই </a></li>
                            @foreach ($top_categories as $item)
                            <li>
                                <a onclick="load_category_product(`category={{$item->id}}`)"
                                    href="/category/{{ $item->name }}"> {{ $item->name }} </a>
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
                <button onclick="load_product()" class="btn btn-primary my-5 load-more-btn hind-siliguri">
                    আরো দেখুন
                </button>
            </div>
            <script>
                let page = 1;
                let replace = 0;

                function add_to_cart() {
                    window.toaster('success', "Product Added to cart!")
                }

                function load_product(extra_query='') {
                    Pace.restart()
                    fetch(`/json/products?paginate=10&page=${page}&${extra_query}`)
                        .then(data => {
                            return data.json();
                        })
                        .then(post => {
                            let product_section = document.querySelector('#product_section');
                            post.data.forEach(element => {
                                let html = `
                                <div class="product__item">
                                    <div class="product__wrapper">
                                        <div class="product__thumb">
                                            <a href="#" class="w-img">
                                                <img src="/${element.thumb_image}" class="product_thumb1" alt="product-img">
                                                <img class="product__thumb-2" src="/${element.thumb_image}" alt="product-img">
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
                                                <span class="percent">-8%</span>
                                            </div>
                                        </div>
                                        <div class="product__content p-relative">
                                            <div class="product__content-inner position-relative">
                                                <a href="/product-details/4" class="hind-siliguri product_name">
                                                    <span> ${element.product_name} </span>
                                                </a>
                                            </div>
                                            <div class="add-cart p-absolute transition-3">
                                                <div class="product__price transition-3">
                                                    <span class="solaiman">${element.sales_price.toString().getDigitBanglaFromEnglish()} ৳ </span>
                                                    <span class="old-price solaiman">${element.sales_price.toString().getDigitBanglaFromEnglish()} ৳ </span>
                                                </div>
                                                <a href="#" class="hind-siliguri">
                                                    <i class="fa fa-shopping-cart"></i>
                                                    ওর্ডার করুন
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                `;
                                if(replace === 1){
                                    product_section.innerHTML = html;
                                    replace = 0;
                                }else{
                                    product_section.innerHTML += html;
                                }
                            });
                            page++;
                            if(post.last_page === post.current_page){
                                document.querySelector('.load-more-btn').classList.add('d-none');
                            }
                            if(post.last_page > post.current_page){
                                document.querySelector('.load-more-btn').classList.remove('d-none');
                            }
                        });
                }

                function load_category_product(query){
                    event.preventDefault();
                    page = 1;
                    replace = 1;
                    load_product(query);
                }

                load_product();
            </script>

            <!-- tab-area-end -->
        </div>
    </div>
</div>
