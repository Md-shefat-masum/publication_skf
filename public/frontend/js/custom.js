function slider_reboot() {
    $(".slider-active")
        .off()
        .owlCarousel({
            smartSpeed: 1000,
            margin: 0,
            autoplay: false,
            nav: true,
            dots: true,
            loop: true,
            navText: [
                '<i class="fa fa-angle-left"></i>',
                '<i class="fa fa-angle-right"></i>',
            ],
            responsive: {
                0: {
                    items: 1,
                },
                768: {
                    items: 1,
                },
                1000: {
                    items: 1,
                },
            },
        });
}

window.finalEnlishToBanglaNumber = {
    0: "০",
    1: "১",
    2: "২",
    3: "৩",
    4: "৪",
    5: "৫",
    6: "৬",
    7: "৭",
    8: "৮",
    9: "৯",
};

String.prototype.getDigitBanglaFromEnglish = function () {
    var retStr = this;
    for (var x in finalEnlishToBanglaNumber) {
        retStr = retStr.replace(
            new RegExp(x, "g"),
            finalEnlishToBanglaNumber[x]
        );
    }
    return retStr;
};

let top_products = {
    page: 1,
    replace: 0,

    load_product(extra_query = "") {
        Pace.restart();
        fetch(`/json/products?paginate=10&page=${this.page}&${extra_query}`)
            .then((data) => {
                return data.json();
            })
            .then((post) => {
                let product_section =
                    document.querySelector("#product_section");
                post.data.forEach((element) => {
                    let html = `
                    <div class="product__item">
                        <div class="product__wrapper">
                            <div class="product__thumb">
                                <a href="#" class="w-img">
                                    <img src="/${
                                        element.thumb_image
                                    }" class="product_thumb1" alt="product-img">
                                    <img class="product__thumb-2" src="/${
                                        element.thumb_image
                                    }" alt="product-img">
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
                                    <span class="percent solaiman ${
                                        !element.discount_percent && "d-none"
                                    }">-${element.discount_percent
                        ?.toString()
                        .getDigitBanglaFromEnglish()}%</span>
                                </div>
                            </div>
                            <div class="product__content p-relative">
                                <div class="product__content-inner position-relative">
                                    <a href="/product-details/${
                                        element.id
                                    }" class="hind-siliguri product_name">
                                        <span> ${element.product_name} </span>
                                    </a>
                                </div>
                                <div class="add-cart p-absolute transition-3">
                                    <div class="product__price transition-3">
                                        <span class="solaiman ${
                                            !element.discount_percent &&
                                            "d-none"
                                        }">
                                        ${element.discount_amount
                                            ?.toString()
                                            .getDigitBanglaFromEnglish()} ৳
                                        </span>
                                        <span class="${
                                            element.discount_percent &&
                                            "old-price"
                                        } solaiman">
                                        ${element.sales_price
                                            ?.toString()
                                            .getDigitBanglaFromEnglish()} ৳
                                        </span>
                                    </div>
                                    <a href="#" onclick='event.preventDefault();cart.add_to_cart(\`${JSON.stringify(
                                        element
                                    )}\`)' class="hind-siliguri">
                                        <i class="fa fa-shopping-cart"></i>
                                        ওর্ডার করুন
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    `;
                    if (this.replace === 1) {
                        product_section.innerHTML = html;
                        this.replace = 0;
                    } else {
                        product_section.innerHTML += html;
                    }
                });
                this.page++;
                if (post.last_page === post.current_page) {
                    document
                        .querySelector(".load-more-btn")
                        .classList.add("d-none");
                }
                if (post.last_page > post.current_page) {
                    document
                        .querySelector(".load-more-btn")
                        .classList.remove("d-none");
                }
            });
    },

    load_category_product(query) {
        event.preventDefault();
        this.page = 1;
        this.replace = 1;
        this.load_product(query);
    },
};

let cart = {
    carts: [],
    cart_name: "cart",
    init: function () {
        let items = localStorage.getItem(this.cart_name);
        if (items) {
            this.carts = JSON.parse(items);
        }
    },
    find_product: function (product) {
        return this.carts.find((i) => i.id == (product.id || product));
    },
    save_cart: function () {
        localStorage.setItem(this.cart_name, JSON.stringify(this.carts));
    },
    update_qty: function(product_id){
        let product = this.find_product(product_id);
        let qty = event.target.value;
        if(qty < 1){
            product.qty = 1;
        }else{
            product.qty = qty;
        }
        this.update_cart_dom();
        window.toaster("success", "Product quantity updted.");
    },
    add_to_cart(product, qty = 1) {
        product = JSON.parse(product);
        let item = this.find_product(product);
        if (item) {
            item.qty++;
            if (qty > 1) {
                item.qty = qty;
            }
        } else {
            product.qty = 1;
            this.carts.push(product);
        }
        this.update_cart_dom();
        window.toaster("success", "Product Added to cart!");
    },
    remove_from_cart: function (product_id) {
        this.carts = this.carts.filter((i) => i.id != product_id);
        this.update_cart_dom();
        window.toaster("success", "Product removed from cart!");
    },
    render_cart_list: function () {
        let html = this.carts
            .map((i) => {
                let price = i.discount_amount ? i.discount_amount : i.sales_price;
                return `
                <div class="single-cart">
                    <div class="cart-img">
                        <a href="#"><img src="/${
                            i.thumb_image
                        }" alt="book" /></a>
                    </div>
                    <div class="cart-info">
                        <h5><a href="#" class="hind-siliguri">${
                            i.product_name
                        }</a></h5>
                        <p class="solaiman">
                            ${i.qty} x  ${ price.toString().getDigitBanglaFromEnglish() }
                        </p>
                    </div>
                    <div class="cart-icon">
                        <a href="#" onclick=" event.preventDefault(); cart.remove_from_cart(${i.id}) ">
                            <i class="fa fa-remove"></i>
                        </a>
                    </div>
                </div>
            `;
            })
            .join("");
        document.querySelector(".cart-product").innerHTML = html;
        document.querySelector("#cart_total_price").innerHTML = this.calc_cart_total().toString().getDigitBanglaFromEnglish();
        document.querySelector("#cart_total_qty").innerHTML = this.calc_cart_qty();
    },

    render_cart_page_list: function () {
        let html = this.carts
            .map((i) => {
                let price = i.discount_amount ? i.discount_amount : i.sales_price;
                return `
                <tr>
                    <td class="product-thumbnail">
                        <a href="#">
                            <img src="/${i.thumb_image}" style="max-width: unset; height:60px;" alt="${i.name_english}" />
                        </a>
                        <a href="#" class="text-danger" onclick="event.preventDefault();cart.remove_from_cart(${i.id})" >
                            <i class="fa fa-cross"></i>
                            remove
                        </a>
                    </td>
                    <td class="product-name">
                        <a href="#" class="hind-siliguri">${i.product_name}</a>
                    </td>
                    <td class="product-price">
                        <span class="amount solaiman">
                            ৳ ${price.toString().getDigitBanglaFromEnglish()}
                        </span>
                    </td>
                    <td class="product-quantity"><input type="number" onchange="cart.update_qty(${i.id})" value="${i.qty}"></td>
                    <td class="product-subtotal solaiman">৳ ${(i.qty * price).toString().getDigitBanglaFromEnglish()}</td>
                </tr>
            `;
            })
            .join("");
        document.querySelector(".cart_contents tbody").innerHTML = html;
        document.querySelector(".cart_page_subtotal").innerHTML = this.calc_cart_total().toString().getDigitBanglaFromEnglish();
    },
    update_cart_dom: function(){
        this.save_cart();
        this.render_cart_list();
        if(document.querySelector('.cart_contents')){
            this.render_cart_page_list();
        }
    },
    calc_cart_qty: function(){
        return this.carts.length;
    },
    calc_cart_total: function(){
        return this.carts.reduce((t,i)=>{
            let price = i.discount_amount?i.discount_amount:i.sales_price;
            return  t += price*i.qty;
        },0);
    }
};
cart.init();
