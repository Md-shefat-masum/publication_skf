<div>
    <div class="product-area pt-95 xs-mb">
        <div class="container">

            <div style="display: grid; grid-template-columns: 300px 1fr;" class="">


                <div class="tab-menu mb-40">
                    <ul class="hind-siliguri d-grid" id="category_section">

                    </ul>
                </div>


                <div id="product_section" style="display: grid; grid-template-columns: repeat(5,1fr); gap: 30px; align-content: start;">
                    <!-- single-product-start -->
                </div>
            </div>


            <div class="text-center">
                <button onclick="load_product()" class="btn btn-primary my-5 load-more-btn hind-siliguri">আরো দেখুন</button>
            </div>
            <script>
                let page = 1;
                let category_id = 2;

                function add_to_cart() {
                    window.toaster('success', "Product Added to cart!")
                }

                function load_category() {
                    Pace.restart()
                    fetch(`https://www.prossodprokashon.com/api/get-all-category`)
                        // fetch(`https://www.prossodprokashon.com/api/get-category-product/62/20/${page}/json`)
                        .then(data => {
                            return data.json();
                        })
                        .then(post => {
                            let category_section = document.querySelector('#category_section');
                            post.forEach(element => {
                                console.log(element);
                                category_section.innerHTML += `
                            <li style="margin: 0px; margin-bottom: 10px;"><a href="#" onclick="load_product(${element.id}, 1)">${element.name}</a></li>
                            `;

                            });

                        });
                }

                function load_product(category_id = 2, page = 1) {
                    Pace.restart()
                    // fetch(`https://www.prossodprokashon.com/api/latest-products-json/10?page=${page}`)
                    fetch(`https://www.prossodprokashon.com/api/get-category-product/${category_id}/20/${page}/json`)
                        .then(data => {
                            return data.json();
                        })
                        .then(post => {
                            let product_section = document.querySelector('#product_section');
                            if (post.data.length == 0) {
                                product_section.innerHTML = `
                                <div class="text-center" style="grid-column-start: 1; grid-column-end: 10;">
                                    <h2 class="hind-siliguri">কোন বই পাওয়া যায়নি।</h2>
                                </div>
                            `;

                                return 0;
                            }
                            product_section.innerHTML = '';
                            post.data.forEach(element => {

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
                                    <h4><a href="{{ route('product_details') }}" class="hind-siliguri">${element.name}</a></h4>
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
                                            <li><a href="{{ route('product_details') }}" title="Details"><i
                                                        class="fa fa-external-link"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>`;

                            });
                            page++

                        });
                }

                load_category();
                load_product();
            </script>


        </div>
    </div>
</div>