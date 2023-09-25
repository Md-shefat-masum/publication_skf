import axios from "axios";
import { debounce } from "debounce";
import StoreModule from "../schema/StoreModule";

let test_module = new StoreModule('superadmin_dashboard','super-admin/dashboard','SuperAdminDashboard');
const {store_prefix, api_prefix, route_prefix} = test_module;

// state list
const state = {
    ...test_module.states(),
    dashboard_stats: {}
};

// get state
const getters = {
    ...test_module.getters(),
    get_dashboard_stats: (state) => state.dashboard_stats,
};

// actions
const actions = {
    ...test_module.actions(),

    fetch_dashboard_stats: async function(state, data) {
        let url = `/${api_prefix}/infos`;
        await axios.get(url).then((res) => {
            this.commit(`set_dashboard_stats`, res.data);
        });
    },

    fetch_dashboard_monthly_stats: async function(state, data) {
        console.log(data);
        let url = `/${api_prefix}/monthly-infos`;
        await axios.post(url, data).then((res) => {
            this.commit(`set_dashboard_stats`, res.data);
        });
    },

}

// mutators
const mutations = {
    ...test_module.mutations(),
    set_dashboard_stats: function (state, data) {
        state.dashboard_stats = data;
    },
};

export default {
    state,
    getters,
    actions,
    mutations,
};
