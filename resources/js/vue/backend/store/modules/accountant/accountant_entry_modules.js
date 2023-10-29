import axios from "axios";
import management_router from "../../../router/router";
import StoreModule from "../schema/StoreModule";

let test_module = new StoreModule('accountant_entry', 'accountant/account-entry', 'AcountantAccountEntries');
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

    /** override store */
    [`store_${store_prefix}`]: function ({ state, getters, commit, rootState }) {

        const { form_values, form_inputs, form_data } = window.get_form_data('.create_form');
        // const { get_accountant_category_type_selected: types } = getters;
        // types.forEach(i => form_data.append('type_id', i.id));

        axios.post(`/${api_prefix}/store`, form_data)
            .then(res => {
                $('.create_form').trigger('reset');

                // rootState.accountant_category_type_modules.accountant_category_type_selected = [];

                let file_preview = document.querySelector(".file_preview")
                file_preview && (file_preview.innerHTML = "");
                window.s_alert('new income has been created');

                // management_router.push({ name: `Edit${route_prefix}`, params: { id: res.data.product.id } })
            })
            .catch(error => {

            })
    },

    /** override store */
    [`store_${store_prefix}_expense`]: function ({ state, getters, commit, rootState }) {

        const { form_values, form_inputs, form_data } = window.get_form_data('.create_form');
        // const { get_accountant_category_type_selected: types } = getters;
        // types.forEach(i => form_data.append('type_id', i.id));

        axios.post(`/${api_prefix}/store/expense`, form_data)
            .then(res => {
                $('.create_form').trigger('reset');

                // rootState.accountant_category_type_modules.accountant_category_type_selected = [];

                let file_preview = document.querySelector(".file_preview")
                file_preview && (file_preview.innerHTML = "");
                window.s_alert('new expense has been created');

                // management_router.push({ name: `Edit${route_prefix}`, params: { id: res.data.product.id } })
            })
            .catch(error => {

            })
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
