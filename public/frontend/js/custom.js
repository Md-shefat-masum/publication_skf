function slider_reboot() {
    $('.slider-active').off().owlCarousel({
        smartSpeed: 1000,
        margin: 0,
        autoplay: false,
        nav: true,
        dots: true,
        loop: true,
        navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
        responsive: {
            0: {
                items: 1
            },
            768: {
                items: 1
            },
            1000: {
                items: 1
            }
        }
    })
}

let top_products = {
    page: 1,
    replace: 0,

    add_to_cart() {
        window.toaster('success', "Product Added to cart!")
    },

    load_product(extra_query='') {
        Pace.restart()
        fetch(`/json/products?paginate=10&page=${this.page}&${extra_query}`)
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
                    if(this.replace === 1){
                        product_section.innerHTML = html;
                        this.replace = 0;
                    }else{
                        product_section.innerHTML += html;
                    }
                });
                this.page++;
                if(post.last_page === post.current_page){
                    document.querySelector('.load-more-btn').classList.add('d-none');
                }
                if(post.last_page > post.current_page){
                    document.querySelector('.load-more-btn').classList.remove('d-none');
                }
            });
    },

    load_category_product(query){
        event.preventDefault();
        this.page = 1;
        this.replace = 1;
        this.load_product(query);
    }
}
