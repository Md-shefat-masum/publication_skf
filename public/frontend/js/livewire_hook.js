document.addEventListener("DOMContentLoaded", () => {
    Livewire.hook("component.initialized", component => {
        // console.log('component.initialized');
    });
    Livewire.hook("element.initialized", (el, component) => {
        // console.log('element.initialized');
    });
    Livewire.hook("element.updating", (fromEl, toEl, component) => {
        // console.log('element.updating');
        if (window.dom_load_navigating) {
            // console.log('element.updated');
            let old_el = component.el.firstElementChild.id;
            old_el = document.getElementById(old_el);
            let parent = old_el.parentNode;
            let updated_el = component.el.innerHTML;

            // old_el.remove();

            // document.getElementById(old_el).parentNode.innerHTML =
            //     component.el.innerHTML;
            // console.log(old_el, component.el.innerHTML, component);
            console.log(old_el);
            console.log(parent.innerHTML);
            console.log(updated_el);
        }
    });
    Livewire.hook("element.updated", (el, component) => {

    });
    Livewire.hook("element.removed", (el, component) => {});
    Livewire.hook("message.sent", (message, component) => {});
    Livewire.hook("message.failed", (message, component) => {});
    Livewire.hook("message.received", (message, component) => {
        find_event_status(message);
    });
    Livewire.hook("message.processed", (message, component) => {});
    Livewire.on("cartAdded", () => {
        document.querySelector(".modal-backdrop")?.classList.add("d-none");
        window.s_alert("success", "Product Added to cart successfully.");
    });
    Livewire.on("test", () => {
        window.s_alert("success", "test");
    });
    Livewire.on("cartRemoved", () => {
        window.s_alert("success", "Product Removed from cart.");
    });
    Livewire.on("cartUpdated", () => {
        window.s_alert("success", "Cart Updated.");
    });
});

function showModal(product) {
    Livewire.emit("viewProduct", product);

    setTimeout(() => {
        document.querySelector("body").classList.add("modal-open");
        document.querySelector("body").style.overflow = "hidden";
        document.querySelector("body").style.paddingRight = "17px";
        document.querySelector("#action-QuickViewModal").classList.add("show");
        document
            .querySelector("#action-QuickViewModal")
            .classList.add("d-block");
        document.querySelector(".modal-backdrop").classList.remove("d-none");
        // document.querySelector('#closeModalbutton').addEventListener('click', closeModal);
    }, 500);
}

function showQuickView(product) {
    fetch("/product_quickview/" + product, {
        method: "get"
    })
        .then(res => {
            return res.text();
        })
        .then(res => {
            document.getElementById("quick_view_product_modal").innerHTML = res;
        });
}

function closeModal() {
    Livewire.emit("CloseViewProduct");

    setTimeout(() => {
        document.querySelector("body").classList.remove("modal-open");
        document.querySelector("body").style.overflow = "";
        document.querySelector("body").style.paddingRight = "";
        // document.querySelector('#action-QuickViewModal').classList.remove('show');
        // document.querySelector('#action-QuickViewModal').classList.remove('d-block');
        document.querySelector(".modal-backdrop").classList.add("d-none");
    }, 500);
}

window.dom_load_count = 1;
window.dom_load_navigating = false;
window.onpopstate = function(event) {
    console.log("location: " + document.location);
    window.location.href = document.location
    window.dom_load_navigating = true;
    // document
    //     .querySelectorAll(".page-link")
    //     .forEach(i =>
    //         i.addEventListener(
    //             "click",
    //             () => (window.dom_load_navigating = false)
    //         )
    //     );
};

function slider_reboot() {
    $('.slider-active').owlCarousel({
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

document.addEventListener("turbolinks:load", function(event) {
    if (window.dom_load_count > 1 && !window.dom_load_navigating) {
        window.livewire.restart();
        console.log("reload", window.dom_load_count);
    }
    // ReviewFunctions();
    // dynamicCss();
    setTimeout(() => {
        slider_reboot();
    }, 2000);
    // scrolltotop_reboot();
    // checkout_handling();
    window.dom_load_count++;
    // let wire_els = [...document.querySelectorAll('div.border.border-danger')]
    // wire_els.forEach(i=>{
    //     i.setAttribute('wire:key',Math.random());
    // })
});

var find_event_status = message => {
    // console.log(message);
    let data = message.response.serverMemo.data;
    let status = message.response.serverMemo.data?.status_message;
    console.log(data.message);
    if(data.message === 'cart_added') {
        window.s_alert("success", "Product added to cart.");
    }
    if (status === "cartRemoved") {
        update_cart_count_html(data.cart_amount);
    }
};
var update_cart_count_html = cart_amount => {
    document.querySelector(".cart-count").innerHTML = cart_amount;
};