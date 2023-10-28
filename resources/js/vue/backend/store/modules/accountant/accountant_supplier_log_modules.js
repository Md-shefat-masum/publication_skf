import axios from "axios";
import management_router from "../../../router/router";
import StoreModule from "../schema/StoreModule";

let test_module = new StoreModule('accountant_supplier_log', 'accountant/supplier-log', 'AcountantAccountEntries');
const { store_prefix, api_prefix, route_prefix } = test_module;

// state list
const state = {
    ...test_module.states(),
    orderByAsc: false,
    supplier_total_amount: 0,
};

// get state
const getters = {
    ...test_module.getters(),
    get_supplier_total_amount: (state) => state.supplier_total_amount,
};

// actions
const actions = {
    ...test_module.actions(),

    /** overrride fetch all data using data filters */
    [`fetch_${store_prefix}s`]: async function ({ state }) {
        let main_location = new URLSearchParams(window.location.hash.split('?')[1]);

        let url = `/${api_prefix}/all?page=${state[`${store_prefix}_page`]}&status=${state[`${store_prefix}_show_active_data`]}&paginate=${state[`${store_prefix}_paginate`]}`;
        url += `&orderBy=${state.orderByCol}`;
        url += `&payment_type=${main_location.get('payment_type')}`;
        url += `&supplier_id=${main_location.get('supplier_id')}`;
        url += `&supplier_type=${main_location.get('supplier_type')}`;

        if (state.orderByAsc) {
            url += `&orderByType=ASC`;
        } else {
            url += `&orderByType=DESC`;
        }
        if (state[`${store_prefix}_search_key`]) {
            url += `&search_key=${state[`${store_prefix}_search_key`]}`;
        }
        await axios.get(url).then((res) => {
            this.commit(`set_${store_prefix}s`, res.data.data);
            state.supplier_total_amount = res.data.total_amount;
        });
    },

    /** store data */
    [`store_${store_prefix}`]: async function ({ state, dispatch }, event) {
        let form_data = new FormData(event);
        let main_location = new URLSearchParams(window.location.hash.split('?')[1]);

        form_data.append('supplier_id', main_location.get('supplier_id'));
        form_data.append('name', main_location.get('supplier_name'));
        form_data.append('supplier_type', main_location.get('supplier_type'));
        form_data.append('payment_type', main_location.get('payment_type'));

        await axios.post(`/${api_prefix}/store`, form_data).then((res) => {
            event.reset();

            let file_preview = document.querySelector(".file_preview")
            file_preview && (file_preview.innerHTML = "");
            window.s_alert("new data been created");

            dispatch(`fetch_${store_prefix}s`);
        });
    },

}

// mutators
const mutations = {
    ...test_module.mutations(),
    set_get_branch_product_for_order: (state, data) => {
        state.branch_product_for_order = data;
    },
    set_branch_p_search_key: (state, data) => {
        state.branch_p_search_key = data;
    },
    set_branch_product_category: function (state, data) {
        state.branch_product_category = data;
        this.dispatch('fetch_branch_product_for_order', 1);
    },
};

export default {
    state,
    getters,
    actions,
    mutations,
};
