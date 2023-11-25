
function checkout_submit2(event) {
    event.preventDefault();

    if (!confirm('complete order')) {
        return 0;
    }

    let formData = new FormData(event.target);
    let city = ``;
    city += 'division: '+window.divisions.find(i=>i.id == $('#divisions').val()).name;
    city += ', district: '+window.districts.find(i=>i.id == $('#districts').val()).name;
    // city += ', upazila: '+window.upazilas.find(i=>i.id == $('#upazilas').val()).name;
    // city += ', union: '+window.unions.find(i=>i.id == $('#unions').val()).name;
    city += ', police station: '+$('#police_stations').val();
    city += ', area: '+$('input[name="address"]').val();
    formData.append('city', city);
    formData.append('shipping_method', $("input[name='shipping_method']:checked").val());
    formData.append('carts', localStorage.getItem('cart'));
    loader.show();
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
        loader.hide();
        if (res.status === 422) {
            error_response(res.data)
        }
        if (res.status === 200) {
            window.toaster("success", "Order submitted successfully!");
            let invoice_id = res.data.order.split("-")[1];
            cart.carts = [];
            cart.save_cart();
            location.href = ('/payment/'+res.data.order);

            // location.href = "/order-complete/" + res.data.order.id;
        }
    })
}

window.divisions = [];
window.districts = [];
window.upazilas = [];
window.unions = [];
window.police_stations = [];

async function load_data(type) {
    var res = await fetch(`/jsons/${type}.json`)
    var data = await res.json();
    if(Array.isArray(data)){
        data = data?.map(i => ({ ...i, text: i.bn_name }))
    }
    window[type] = data;
}

async function init_division() {
    await load_data('divisions');
    await load_data('districts');
    await load_data('upazilas');
    await load_data('unions');
    await load_data('police_stations');
    setTimeout(() => {
        get_divisions();
    }, 200);
}

async function get_divisions() {
    var data = window.divisions;
    $('#divisions').select2({
        data,
    })
        .val([6]).trigger('change')
        .on('select2:select', function (e) {
            let value = e.target.value;
            get_districts(value);
            if (value != 6) {
                $('#home_delivery').prop('checked', false);
                $('#outside_dhaka').prop('checked', true);
                $('#outside_dhaka').trigger('change');
            } else {
                $('#outside_dhaka').prop('checked', false);
                $('#home_delivery').prop('checked', true);
                $('#home_delivery').trigger('change');
            }

        });
    get_districts();
}

async function get_districts(divistion = 6) {
    var data = window.districts.filter(i => i.division_id == divistion);
    data = data.map(i => ({ ...i, text: i.bn_name }));

    $('#districts').html('').select2().select2("destroy");
    $('#districts').select2({
        data,
    })
        .val([data[7]?.id || data[0].id]).trigger('change')
        .on('select2:select', function (e) {
            let value = e.target.value;
            // console.log(value);
            // get_upazilas(value);
            get_police_stations(data.find(i=>i.id==value)?.name || '');

            if (value != 47) {
                $('#home_delivery').prop('checked', false);
                $('#outside_dhaka').prop('checked', true);
                $('#outside_dhaka').trigger('change');
            } else {
                $('#outside_dhaka').prop('checked', false);
                $('#home_delivery').prop('checked', true);
                $('#home_delivery').trigger('change');
            }
        });
    // get_upazilas(data[7]?.id || data[0].id);
    get_police_stations(data[7]?.name || data[0].name);
}

async function get_police_stations(district_name) {
    var data = [];
    for (const key in window.police_stations) {
        if (Object.hasOwnProperty.call(window.police_stations, key)) {
            const stations = window.police_stations[key];
            if(key.includes(district_name)){
                data = stations
            }
        }
    }
    data = data.map(i => ({ id: i, text: i }));
    if(data.length == 0){
        data[0] = {id: "Enter police station name", text: "Enter police station name"}
    }

    $('#police_stations').html('').select2().select2("destroy");
    $('#police_stations').select2({
        data,
        tags: true,
    })
        .val([data[0]?.id]).trigger('change')
        .on('select2:select', function (e) {
            let value = e.target.value;
            console.log(value);
        });
}

async function get_upazilas(district = 1) {
    var data = window.upazilas.filter(i => i.district_id == district);
    data = data.map(i => ({ ...i, text: i.bn_name }))

    $('#upazilas').html('').select2().select2("destroy");
    $('#upazilas').select2({
        data,
    })
        .val([data[0].id]).trigger('change')
        .on('select2:select', function (e) {
            let value = e.target.value;
            get_unions(value);
        });
    get_unions(data[0].id)
}

async function get_unions(upazila = 1) {
    var data = window.unions.filter(i => i.upazilla_id == upazila);
    data = data.map(i => ({ ...i, text: i.bn_name }))

    $('#unions').html('').select2().select2("destroy");
    $('#unions').select2({
        data,
    })
        .val([data[0].id]).trigger('change')
        .on('select2:select', function (e) {
            let value = e.target.value;
        });
}

function set_checkout_info(){
    let checkout_info = JSON.parse(localStorage.getItem('checkout_info') || "{}");
    checkout_info[event.target.name] = event.target.value;
    localStorage.setItem('checkout_info',JSON.stringify(checkout_info));
}

function get_checkout_info(){
    let checkout_info = JSON.parse(localStorage.getItem('checkout_info') || "{}");
    for (const key in checkout_info) {
        if (Object.hasOwnProperty.call(checkout_info, key)) {
            const element = checkout_info[key];
            let el = document.querySelector(`[name="${key}"]`);
            if(el){
                el.value = element
            }
        }
    }
}
