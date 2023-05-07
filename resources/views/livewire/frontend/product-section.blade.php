<div>
    <div class="product-area pt-95 xs-mb">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!-- tab-menu-start -->
                    <div class="tab-menu mb-40 text-center">
                        <ul class="nav justify-content-center hind-siliguri">
                            <li><a href="category-page.html">আদব, আখলাক </a></li>
                            <li><a href="category-page.html">আল হাদিস</a></li>
                            <li><a href="category-page.html">ইসলামি আদর্শ ও মতবাদ</a></li>
                            <li><a href="category-page.html">ইসলামি দর্শন</a></li>
                            <li><a href="category-page.html">জীবনী গ্রন্থ</a></li>
                            <li><a href="category-page.html">ঈমান ও আকীদা</a></li>
                            <li><a href="category-page.html">নবী-রাসূলদের জীবনী</a></li>
                        </ul>
                    </div>
                    <!-- tab-menu-end -->
                </div>
            </div>
            <!-- tab-area-start -->

            <div id="product_section" style="display: grid; grid-template-columns: repeat(5,1fr); gap: 30px;">
                <!-- single-product-start -->
            </div>
            <div class="text-center">
                <button onclick="load_product()" class="btn btn-primary my-5 load-more-btn hind-siliguri">আরো দেখুন</button>
            </div>
            <script>
                let page = 1;

                function add_to_cart() {
                    window.toaster('success', "Product Added to cart!")
                }

                function load_product() {
                    Pace.restart()
                    fetch(`https://www.prossodprokashon.com/api/latest-products-json/10?page=${page}`)
                        .then(data => {
                            return data.json();
                        })
                        .then(post => {
                            let product_section = document.querySelector('#product_section');
                            post.data.forEach(element => {
                                console.log(element);
                                product_section.innerHTML += `
                            <div id="prdocut_card" class="product-wrapper">
                                <div class="product-img">
                                    <a href="#">
                                        <img src="https://www.prossodprokashon.com/${element.thumb_image}" alt="book" class="primary ps-3" />
                                    </a>
                                    <div class="product-flag">
                                        <ul>
                                            <li><span class="sale">new</span></li>
                                            <li><span class="discount-percentage">-${element.discount}%</span></li>
                                        </ul>
                                    </div>
                                    <div class="quick-view d-none">
                                        <a class="action-view" href="#" data-bs-target="#productModal"
                                            data-bs-toggle="modal" title="Quick View">
                                            <i class="fa fa-search-plus"></i>
                                        </a>
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
                                    <h4><a href="product-details.html" class="hind-siliguri">${element.name}</a></h4>
                                    <div class="product-price">
                                        <ul>
                                            <li class="solaiman">${element.discount_price.toString().getDigitBanglaFromEnglish()}</li>
                                            <li class="old-price solaiman">${element.price.toString().getDigitBanglaFromEnglish()}</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-link">
                                    <div class="product-button">
                                        <a href="javascript:void(0)" onclick="add_to_cart()" class="hind-siliguri" title="ওর্ডার করুন"><i class="fa fa-shopping-cart"></i>ওর্ডার করুন</a>
                                    </div>
                                    <div class="add-to-link">
                                        <ul>
                                            <li><a href="product-details.html" title="Details"><i
                                                        class="fa fa-external-link"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>`;

                            });
                            page++

                        });
                }

                load_product();
            </script>

            <!-- tab-area-end -->
        </div>
    </div>
</div>