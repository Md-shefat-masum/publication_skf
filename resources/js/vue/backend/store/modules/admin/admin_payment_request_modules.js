import axios from "axios";
import management_router from "../../../router/router";
import StoreModule from "../schema/StoreModule";

let test_module = new StoreModule(
    "admin_payment_request",
    "admin/payment-request",
    "AdminPaymentRequest"
);
const { store_prefix, api_prefix, route_prefix } = test_module;

// state list
const state = {
    ...test_module.states(),
    orderByAsc: false,

    transaction_accounts: [],
};

// get state
const getters = {
    ...test_module.getters(),
    get_transaction_accounts: (state) => state.transaction_accounts,
};

// actions
const actions = {
    ...test_module.actions(),

    [`${store_prefix}_approve`]: async function ({ state }, { id, event }) {
        let url = `/${api_prefix}/approve`;
        let cconfirm = await window.s_confirm("confirm action?.");
        if(cconfirm){
            await axios.post(url,{payment_id: id}).then((res) => {
                window.s_alert(`payment status `+res.data);
            });
        }else{
            event.target.checked = cconfirm
        }
    },

    [`fetch_transaction_accounts`]: async function ({ state }) {
        let url = `/accounts/all`;
        let response = await axios.get(url);
        // console.log(response.data);
        state.transaction_accounts = response.data;
    },

    /** update data */
    [`update_${store_prefix}`]:async function ({ state }, event) {
        let form_data = new FormData(event);
        form_data.append("id", state[store_prefix].id);
        await axios.post(`/${api_prefix}/update`, form_data).then((res) => {
            /** reset loaded user_role after data update */
            // this.commit(`set_${store_prefix}`, null);
            window.s_alert("data updated");
        });
    },

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
};

// mutators
const mutations = {
    ...test_module.mutations(),
};

export default {
    state,
    getters,
    actions,
    mutations,
};
