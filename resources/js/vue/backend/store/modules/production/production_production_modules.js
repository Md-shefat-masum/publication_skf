import axios from "axios";
import management_router from "../../../router/router";
import StoreModule from "../schema/StoreModule";

let test_module = new StoreModule(
    "production_production",
    "production/production",
    "ProductionProduction"
);
const { store_prefix, api_prefix, route_prefix } = test_module;

// state list
const state = {
    ...test_module.states(),
};

// get state
const getters = {
    ...test_module.getters(),
};

// actions
const actions = {
    ...test_module.actions(),

    /** fetch all data using data filters */
    [`fetch_all_productions`]: async function ({ state }) {
        let url = `/${api_prefix}/all?page=${state[`${store_prefix}_page`]}&status=${state[`${store_prefix}_show_active_data`]}&paginate=${state[`${store_prefix}_paginate`]}`;
        url += `&orderBy=${state.orderByCol}`;
        if (state.orderByAsc) {
            url += `&orderByType=ASC`;
        } else {
            url += `&orderByType=DESC`;
        }
        if (state[`${store_prefix}_search_key`]) {
            url += `&search_key=${state[`${store_prefix}_search_key`]}`;
        }
        await axios.get(url).then((res) => {
            this.commit(`set_${store_prefix}s`, res.data);
        });
    },

    [`fetch_production`]: async function ({ state, rootState }, { id, render_to_form }) {
        let url = `/${api_prefix}/${id}`;
        let res = await axios.get(url);
        let data = res.data;

        // console.log(data);

        this.commit(`set_${store_prefix}`, data);
        window.set_form_data(".admin_form", data);

        rootState.production_product_modules.production_product_selected = [data.product];
        rootState.production_binding_modules.production_binding_selected = [data.binding];
        rootState.production_designer_modules.production_designer_selected = [data.design];
        rootState.production_print_modules.production_print_selected = [data.print];

        setTimeout(() => {
            document.querySelector('#production_status').value = data.production_status[data.production_status.length-1]?.status;
            document.querySelector('#production_description').value = data.production_status[data.production_status.length-1]?.description;
        }, 500);
    },

    [`store_production_production_order`]: function (
        { commit, dispatch, getters, rootGetters, rootState, state },
        target
    ) {
        let { get_production_product_selected: products } = getters;
        let { get_production_designer_selected: designers } = getters;
        let { get_production_print_selected: prints } = getters;
        let { get_production_binding_selected: bindings } = getters;

        let formData = new FormData(target);
        formData.append("product_id", products[0].id);
        formData.append("book_cover_designer", designers[0].id);
        formData.append("supplier_prints_id", prints[0].id);
        formData.append("supplier_bindings_id", bindings[0].id);

        axios.post(`/${api_prefix}/store`,formData)
            .then(res=>{
                $('.create_form input').val('');
                rootState.production_product_modules.production_product_selected = [];
                rootState.production_designer_modules.production_designer_selected = [];
                rootState.production_print_modules.production_print_selected = [];
                rootState.production_binding_modules.production_binding_selected = [];
                window.s_alert('new data has been created');
                // management_router.push({name:`All${route_prefix}`})
            })
            .catch(error=>{

            })
    },

    [`update_production_production_order`]: function (
        { commit, dispatch, getters, rootGetters, rootState, state },
        target
    ) {
        let { get_production_product_selected: products } = getters;
        let { get_production_designer_selected: designers } = getters;
        let { get_production_print_selected: prints } = getters;
        let { get_production_binding_selected: bindings } = getters;

        console.log(getters);
        let formData = new FormData(target);
        formData.append("id", state[`${store_prefix}`].id);
        formData.append("product_id", products[0].id);
        formData.append("book_cover_designer", designers[0].id);
        formData.append("supplier_prints_id", prints[0].id);
        formData.append("supplier_bindings_id", bindings[0].id);

        axios.post(`/${api_prefix}/update`,formData)
            .then(res=>{
                // $('.create_form input').val('');
                // rootState.production_product_modules.production_product_selected = [];
                // rootState.production_designer_modules.production_designer_selected = [];
                // rootState.production_print_modules.production_print_selected = [];
                // rootState.production_binding_modules.production_binding_selected = [];
                window.s_alert('data has been updated');
                // management_router.push({name:`All${route_prefix}`})
            })
            .catch(error=>{
                console.log(error);
            })
    },

    [`store_production_cost`]: function (
        { commit, dispatch, getters, rootGetters, rootState, state },
        target
    ) {
        let { get_production_product_selected: products } = getters;
        let formData = new FormData(target);
        formData.append("product_id", products[0]?.id);

        axios.post(`/${api_prefix}/store-cost`,formData)
            .then(res=>{
                $('.create_form input').val('');
                rootState.production_product_modules.production_product_selected = [];
                window.s_alert('new data has been created');
                // management_router.push({name:`All${route_prefix}`})
            })
            .catch(error=>{

            })
    },
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
