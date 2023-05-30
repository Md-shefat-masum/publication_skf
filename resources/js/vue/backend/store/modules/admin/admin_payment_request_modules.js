import axios from "axios";
import management_router from "../../../router/router";
import StoreModule from "../schema/StoreModule";

let test_module = new StoreModule('admin_payment_request','admin/payment-request','AdminPaymentRequest');
const {store_prefix, api_prefix, route_prefix} = test_module;

// state list
const state = {
    ...test_module.states(),
    orderByAsc: true,
    order_type: 'invoice',

    admin_product_for_order: {},
    admin_p_search_key: '',
    admin_oder_cart: [],
};

// get state
const getters = {
    ...test_module.getters(),

    get_admin_product_for_order: (state) => state.admin_product_for_order,
    get_admin_p_search_key: (state) => state.admin_p_search_key,
    get_admin_oder_cart: (state) => state.admin_oder_cart,
    get_admin_oder_cart_total: (state) => state.admin_oder_cart.reduce((t,i)=>t+=i.total_price,0),
};

// actions
const actions = {
    ...test_module.actions(),

    // [`fetch_${store_prefix}s`]: async function ({ state }) {
    //     let url = `/${api_prefix}/all?page=${state[`${store_prefix}_page`]}&order_type=${state.order_type}&status=${state[`${store_prefix}_show_active_data`]}&paginate=${state[`${store_prefix}_paginate`]}`;
    //     url += `&orderBy=${state.orderByCol}`;
    //     if (state.orderByAsc) {
    //         url += `&orderByType=ASC`;
    //     } else {
    //         url += `&orderByType=DESC`;
    //     }
    //     if (state[`${store_prefix}_search_key`]) {
    //         url += `&search_key=${state[`${store_prefix}_search_key`]}`;
    //     }
    //     await axios.get(url).then((res) => {
    //         this.commit(`set_${store_prefix}s`, res.data);
    //     });
    // },

    // [`fetch_admin_product_for_order`]: async ({commit,dispatch,getters,rootGetters,rootState,state},page=1) => {
    //     let s_keys = state.admin_p_search_key.length ? `&search_key=${state.admin_p_search_key}`:'';
    //     let products = await axios.get('/all-products?page='+page+s_keys);
    //     commit('set_get_admin_product_for_order', products.data);
    // },

    // [`fetch_${store_prefix}`]: async function ({ state }, { id, render_to_form }) {
    //     let url = `/${api_prefix}/${id}`;
    //     await axios.get(url).then((res) => {
    //         // console.log(res.data);
    //         res.data.order_details.forEach(el => {
    //             el.total_price = el.sales_price * el.qty;
    //             el.current_price = el.product_price;
    //         });
    //         state.admin_oder_cart = res.data.order_details;
    //         state.admin_order = res.data;
    //     });

    //     if (render_to_form) {
    //         window.set_form_data(".admin_form", data);
    //     }
    // },

}

// mutators
const mutations = {
    ...test_module.mutations(),
    set_get_admin_product_for_order: (state, data) => {
        state.admin_product_for_order = data;
    },
    set_admin_p_search_key: (state, data) => {
        state.admin_p_search_key = data;
    },
    set_order_type: (state,order_type) => state.order_type = order_type,
};

export default {
    state,
    getters,
    actions,
    mutations,
};
