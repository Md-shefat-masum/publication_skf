import axios from "axios";
import management_router from "../../../router/router";
import StoreModule from "../schema/StoreModule";

let test_module = new StoreModule('accountant_category', 'accountant/account-category', 'AcountantAccountCategories');
const { store_prefix, api_prefix, route_prefix } = test_module;

// state list
const state = {
    ...test_module.states(),
    orderByAsc: false,

    accountant_all_income_expense: [],
    income_categories: [],
    expense_categories: [],
    previous_extra_money: 0,
};

// get state
const getters = {
    ...test_module.getters(),
    get_accountant_all_income_expense: (state) => state.accountant_all_income_expense,
    get_income_categories: (state) => state.income_categories,
    get_expense_categories: (state) => state.expense_categories,
    get_previous_extra_money: (state) => state.previous_extra_money,
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

    [`fetch_${store_prefix}_income_expense`]: async function ({ commit, dispatch, getters, rootGetters, rootState, state }, params) {
        let url = `/${api_prefix}/income-expese?`;
        url += `from=${params.from}`;
        url += `&to=${params.to}`;
        await axios.get(url).then((res) => {
            // this.commit(`set_${store_prefix}s`, res.data);
            state.accountant_all_income_expense = res.data.data;
        });
    },

    [`fetch_${store_prefix}_previous_extra_money`]: async function ({ commit, dispatch, getters, rootGetters, rootState, state }, params) {
        let url = `/${api_prefix}/previous-extra-money?`;
        url += `from=${params.from}`;
        url += `&to=${params.to}`;
        await axios.get(url).then((res) => {
            // this.commit(`set_${store_prefix}s`, res.data);
            state.previous_extra_money = res.data;
        });
    },

    [`fetch_${store_prefix}_income_categories`]: async function ({ commit, dispatch, getters, rootGetters, rootState, state }) {
        let url = `/${api_prefix}/all-income-categories`;
        await axios.get(url).then((res) => {
            // this.commit(`set_${store_prefix}s`, res.data);
            state.income_categories = res.data;
        });
    },

    [`fetch_${store_prefix}_expense_categories`]: async function ({ commit, dispatch, getters, rootGetters, rootState, state }) {
        let url = `/${api_prefix}/all-expense-categories`;
        await axios.get(url).then((res) => {
            // this.commit(`set_${store_prefix}s`, res.data);
            state.expense_categories = res.data;
        });
    },

    [`fetch_${store_prefix}`]: async function ({ state, rootState }, { id, render_to_form }) {
        let url = `/${api_prefix}/${id}`;
        await axios.get(url).then((res) => {
            this.commit(`set_${store_prefix}`, res.data);
            rootState.accountant_category_type_modules.accountant_category_type_selected = [];
            rootState.accountant_category_type_modules.accountant_category_type_selected.push(res.data.type);
            if (render_to_form) {
                window.set_form_data(".admin_form", res.data);
            }
        });

    },

    /** override store */
    [`store_${store_prefix}`]: function ({ state, getters, commit, rootState }) {

        const { form_values, form_inputs, form_data } = window.get_form_data('.create_form');
        const { get_accountant_category_type_selected: types } = getters;

        types.forEach(i => form_data.append('type_id', i.id));

        axios.post(`/${api_prefix}/store`, form_data)
            .then(res => {
                $('.create_form input').val('');

                rootState.accountant_category_type_modules.accountant_category_type_selected = [];

                if (res.data.status == 'success') {
                    window.s_alert('new category has been created');
                } else {
                    window.s_alert(res.data.message, 'error');
                    console.log(res.data.error);
                }
                // management_router.push({ name: `Edit${route_prefix}`, params: { id: res.data.product.id } })
            })
            .catch(error => {

            })
    },

    /** override update */
    [`update_${store_prefix}`]: function({state, getters, commit}){
        const { form_values, form_inputs, form_data } = window.get_form_data('.create_form');
        const { get_accountant_category_type_selected: types } = getters;

        types.forEach(i => form_data.append('type_id', i.id));
        form_data.append('id',state[store_prefix].id);
        axios.post(`/${api_prefix}/update`,form_data)
            .then(({data})=>{
                this.commit(`set_${store_prefix}`, data);
                window.s_alert('data has been updated');
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
