import axios from "axios";
import management_router from "../../../router/router";
import StoreModule from "../schema/StoreModule";

let test_module = new StoreModule('superadmin_task', 'superadmin/task', 'SuperAdminTask');
const { store_prefix, api_prefix, route_prefix } = test_module;

// state list
const state = {
    ...test_module.states(),
    super_admin_all_tasks: {},
};

// get state
const getters = {
    ...test_module.getters(),
    super_admin_all_tasks: (state) => state.super_admin_all_tasks,
};

// actions
const actions = {
    ...test_module.actions(),
    "super_admin_fetch_all_tasks": function ({ state }) {
        axios.get('task/super-admin-get-all')
            .then(res => {
                console.log(res.data);
                state.super_admin_all_tasks = res.data;
            })
    }
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
