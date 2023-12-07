import axios from "axios";
import management_router from "../../../router/router";
import StoreModule from "../schema/StoreModule";

let test_module = new StoreModule('superadmin_task', 'task', 'SuperAdminTask');
const { store_prefix, api_prefix, route_prefix } = test_module;

// state list
const state = {
    ...test_module.states(),
    super_admin_all_tasks: {},
    super_admin_all_task_varients: [],
    selected_varient: {},
    task: {},
    incomplete_task_count: 0,
    selected_task_user_id: null,
    selected_task_target_date: null,
};

// get state
const getters = {
    ...test_module.getters(),
    super_admin_all_tasks: (state) => state.super_admin_all_tasks,
    super_admin_all_task_varients: (state) => state.super_admin_all_task_varients,
    super_admin_selected_varient: (state) => state.selected_varient,
    task: (state) => state.task,
    incomplete_task_count: (state) => state.incomplete_task_count,
    selected_task_user_id: (state) => state.selected_task_user_id,
    selected_task_target_date: (state) => state.selected_task_target_date,
};

// actions
const actions = {
    ...test_module.actions(),
    [`fetch_${store_prefix}s`]: async function ({ state }) {
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
        if (state[`selected_task_user_id`]) {
            url += `&user_id=${state[`selected_task_user_id`]}`;
        }
        if (state[`selected_task_target_date`]) {
            url += `&target_date=${state[`selected_task_target_date`]}`;
        }
        await axios.get(url).then((res) => {
            this.commit(`set_${store_prefix}s`, res.data);
        });
    },
    "super_admin_fetch_all_tasks": async function ({ state }, url = null) {
        if (!url) {
            url = 'task/super-admin-get-all'
        }
        await axios.get(url)
            .then(res => {
                state.super_admin_all_tasks = res.data;
            })
    },
    "super_admin_fetch_all_tasks_varients": async function ({ state }) {
        await axios.get('task/varients')
            .then(res => {
                state.super_admin_all_task_varients = res.data;
                state.tasks = res.data;
            })
    },
    "super_admin_selecte_varient": async function ({ state }, item) {
        state.selected_varient = item;
    },
    "new_varient": async function ({ state, dispatch }) {
        await axios.post('/task/new-varient', new FormData(event.target))
            .then(res => {
                dispatch("super_admin_fetch_all_tasks_varients")
            })
    },
    "save_varients": async function ({ state, dispatch }, varient_values) {
        await axios.post('/task/save-varient-values', { varient_values })
            .then(res => {
                dispatch("super_admin_fetch_all_tasks_varients");

            })
    },
    "new_task": async function ({ state, dispatch }) {
        let target = event.target;
        await axios.post('/task/new-task', new FormData(target))
            .then(res => {
                target.reset();
                dispatch("super_admin_fetch_all_tasks")
            })
    },
    "save_task_details": async function ({ state, dispatch }) {
        let target = event.target;
        await axios.post('/task/update_employee_task', new FormData(target))
            .then(res => {
                window.s_alert('task updated');
            })
    },
    "employee_task_details_update": async function ({ state, dispatch }) {
        let target = event.target;
        await axios.post('/task/update-employee-task', new FormData(target))
            .then(res => {
                window.s_alert('task updated');
            })
    },
    "get_task": async function ({ state, dispatch }, id) {
        await axios.get('/task/' + id)
            .then(res => {
                state.task = res.data;
            })
    },
    "complete_task": async function ({ state, dispatch }, id) {
        await axios.get('/task/complete/' + id)
            .then(res => {
                state.task = res.data;
                window.s_alert('task updated');
            })
    },
    "complete_employee_task": async function ({ state, dispatch }, id) {
        await axios.get('/task/complete_employee/' + id)
            .then(res => {
                state.task = res.data;
                window.s_alert('task updated');
            })
    },
    "blink_task": async function ({ state, dispatch }, id) {
        await axios.get('/task/blink/' + id)
            .then(res => {
                state.task = res.data;
                let find = state.tasks?.data.find(i=>i.id == id);
                if(find){
                    find.is_blink = res.data.is_blink;
                }
                window.s_alert('task updated');
            })
    },
    "delete_task": async function ({ state, dispatch }, id) {
        let c_confirm = await window.s_confirm('sure want to delete?');
        if (!c_confirm) {
            return 0;
        }
        await axios.post('/task/delete-task', { id })
            .then(res => {
                dispatch("super_admin_fetch_all_tasks");
                dispatch("fetch_superadmin_tasks");
            })
    },
    "fetch_incomplete_task_count": async function ({ state, dispatch }, id) {
        await axios.get('/task/incomplete-task-count')
            .then(res => {
                state.incomplete_task_count = res.data;
            })
    },
}

// mutators
const mutations = {
    ...test_module.mutations(),
    set_selected_task_user_id: function(state, id){
        state.selected_task_user_id = id;
        this.dispatch('fetch_superadmin_tasks');
    },
    set_selected_task_target_date: function(state, date){
        state.selected_task_target_date = date;
        this.dispatch('fetch_superadmin_tasks');
    },
    reset_task_filter: function(state){
        state.selected_task_user_id = null;
        state.selected_task_target_date = null;
        this.dispatch('fetch_superadmin_tasks');
    },
};

export default {
    state,
    getters,
    actions,
    mutations,
};
