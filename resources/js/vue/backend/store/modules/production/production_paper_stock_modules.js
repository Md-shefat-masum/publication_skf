import axios from "axios";
import management_router from "../../../router/router";
import StoreModule from "../schema/StoreModule";

let test_module = new StoreModule('production_paper_stock','production/paper-stock','ProductionPaperStock');
const {store_prefix, api_prefix, route_prefix} = test_module;

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

    [`store_${store_prefix}`]: function (
        { commit, dispatch, getters, rootGetters, rootState, state },
        target
    ) {

        let { get_production_paper_selected: paper_supplier } = getters;

        let formData = new FormData(target);
        formData.append("supplier_paper_id", paper_supplier[0].id);

        axios.post(`/${api_prefix}/store`,formData)
            .then(res=>{
                $('.create_form input').val('');
                rootState.production_paper_stock_modules.get_production_paper_selected = [];
                window.s_alert('new stock has been created');
                management_router.push({name:`All${route_prefix}`})
            })
            .catch(error=>{

            })
    },

    [`fetch_${store_prefix}`]: async function ({ state, rootState }, { id, render_to_form }) {
        let url = `/${api_prefix}/${id}`;
        let res = await axios.get(url);
        let data = res.data;

        this.commit(`set_${store_prefix}`, data);

        rootState.production_paper_modules.production_paper_selected = [data.supplier];

        setTimeout(() => {
            window.set_form_data(".admin_form", data);
            // document.querySelector('#production_description').value = data.production_status[data.production_status.length-1]?.description;
        }, 500);
    },

    [`update_${store_prefix}`]: function (
        { commit, dispatch, getters, rootGetters, rootState, state },
        target
    ) {

        let { get_production_paper_selected: paper_supplier } = getters;

        let formData = new FormData(target);
        formData.append("supplier_paper_id", paper_supplier[0].id);
        formData.append("id", state['production_paper_stock'].id);

        axios.post(`/${api_prefix}/update`,formData)
            .then(res=>{
                $('.create_form input').val('');
                rootState.production_paper_stock_modules.get_production_paper_selected = [];
                window.s_alert('stock has been updated');
                management_router.push({name:`All${route_prefix}`})
            })
            .catch(error=>{

            })
    },

}

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
