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

function add_to_cart() {
    window.toaster('success', "Product Added to cart!")
}

function checkout_handling() {
    $("#login_modal").addClass('d-none');
    $('#bkash_btn').change(function () {
        $('#bkash_section').removeClass('d-none');
        $('#bank_section').addClass('d-none');
        $('#bkash_number').attr('required');
        $('#bkash_trx_id').attr('required');
    });
    $('#bank_transfer_btn').change(function () {
        $('#bkash_section').addClass('d-none');
        $('#bank_section').removeClass('d-none');
        $('#bank_ac_no').attr('required');
        $('#bank_trx_no').attr('required');
    });
    $('#cod_btn').change(function () {
        $('#bkash_section').addClass('d-none');
        $('#bank_section').addClass('d-none');
    });
}


document.addEventListener("turbolinks:load", function(event) {
    // if (window.dom_load_count > 1 && !window.dom_load_navigating) {
    //     window.livewire.restart();
    //     console.log("reload", window.dom_load_count);
    // }
    // ReviewFunctions();
    // dynamicCss();
    // setTimeout(() => {
    //     slider_reboot();
    // }, 2000);
    // scrolltotop_reboot();
    // checkout_handling();
    // window.dom_load_count++;
    // let wire_els = [...document.querySelectorAll('div.border.border-danger')]
    // wire_els.forEach(i=>{
    //     i.setAttribute('wire:key',Math.random());
    // })
});

function checkout(event) {
    event.preventDefault();
    let formData = new FormData(event.target);

    fetch("/checkout", {
        method: "POST",
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        body: formData
    }).then(async res => {
        let response = {}
        response.status = res.status
        response.data = await res.json();
        return response;
    }).then(res => {
        if(res.status === 422) {
            error_response(res.data)
        }
        if(res.status === 200) {
            window.toaster('success', "Order submitted successfully!")
            // location.href = "/order-complete/"+res.data.order.id;
        }
    })
}


function error_response(data) {
    let object = data.data;
    window.render_error(object);
    throw data;
}

window.render_error = (object)=>{
    // console.log(data);
    $('.loader_body').removeClass('active');
    $('form button').prop('disabled',false);
    $('#backend_body .main_content').css({overflowY:'scroll'});
    // whatever you want to do with the error
    // console.log(error.response.data.errors);
    $(`label`).siblings(".text-danger").remove();
    $(`select`).siblings(".text-danger").remove();
    $(`input`).siblings(".text-danger").remove();
    $(`textarea`).siblings(".text-danger").remove();
    $('.form_errors').html('');

    let error_html = ``;

    for (const key in object) {
        if (Object.hasOwnProperty.call(object, key)) {
            const element = object[key];
            if (document.getElementById(`${key}`)) {
                $(`#${key}`)
                    .parent("div")
                    .append(`<div class="text-danger">${element[0]}</div>`);
            } else {
                $(`input[name="${key}"]`)
                    .parent("div")
                    .append(`<div class="text-danger">${element[0]}</div>`);

                $(`select[name="${key}"]`)
                    .parent("div")
                    .append(`<div class="text-danger">${element[0]}</div>`);

                $(`input[name="${key}"]`).trigger("focus");

                $(`textarea[name="${key}"]`)
                    .parent("div")
                    .append(`<div class="text-danger">${element[0]}</div>`);

                $(`textarea[name="${key}"]`).trigger("focus");
            }
            // console.log({
            //     [key]: element,
            // });

            error_html += `
                <div class="alert alert_${key} my-1 mx-2 alert-danger pe-5 inverse alert-dismissible fade show" role="alert">
                    <i class="icon-alert txt-dark rounded-0"></i>
                    <div>${element}</div>
                    <button type="button" class="btn-close txt-light" data-bs-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true"></span>
                    </button>
                </div>
            `;
        }
    }

    $('.form_errors').html(error_html);

    if (typeof data === "string") {
        // console.log("error", data);
    } else {
        // console.log(data);
    }

    window.s_alert('error',data.err_message)
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
