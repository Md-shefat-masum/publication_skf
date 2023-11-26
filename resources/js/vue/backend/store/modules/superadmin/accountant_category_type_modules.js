import axios from "axios";
import management_router from "../../../router/router";
import StoreModule from "../schema/StoreModule";

let test_module = new StoreModule('accountant_category_type', 'accountant/account-category-type', 'AcountantAccountCategoryTypes');
const { store_prefix, api_prefix, route_prefix } = test_module;

// state list
const state = {
    ...test_module.states(),
    orderByAsc: false,
};

// get state
const getters = {
    ...test_module.getters(),
};

// actions
const actions = {
    ...test_module.actions(),

    // [`load_category_product`]: async function({state, rootState}, page=1){
    //     console.log(state, rootState);
    //     let id = state.branch_product_category;
    //     let res = await axios.get(`/category/${id}/products?page=${page}`)
    //     console.log(res.data);
    // },

    [`fetch_${store_prefix}_income_expense`]: async function ({ commit, dispatch, getters, rootGetters, rootState, state }) {
        let url = `/${api_prefix}/income-expese`;
        await axios.get(url).then((res) => {
            // this.commit(`set_${store_prefix}s`, res.data);
            state.accountant_all_income_expense = res.data;
        });
    },

    [`fetch_${store_prefix}`]: async function ({ state }, { id, render_to_form }) {
        let url = `/${api_prefix}/${id}`;
        await axios.get(url).then((res) => {
            // console.log(res.data);
            this.commit(`set_${store_prefix}`, res.data);
        });

        if (render_to_form) {
            window.set_form_data(".admin_form", data);
        }
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
