import axios from "axios";
import management_router from "../../router/router";
import StoreModule from "./schema/StoreModule";

let test_module = new StoreModule('user','user','User');
const {store_prefix, api_prefix, route_prefix} = test_module;

// state list
const state = {
    ...test_module.states(),
    filter_guest_role: false,
    filter_branch_role: false,

    get_filter_guest_role: (state) => state.filter_guest_role,
    get_filter_branch_role: (state) => state.filter_branch_role,

    all_employee: [],
};

// get state
const getters = {
    ...test_module.getters(),
    all_employee: (state) => state.all_employee,
};

// actions
const actions = {
    ...test_module.actions(),

    /** override store */
    [`store_${store_prefix}`]: function({state, getters, commit}){
        const {form_values, form_inputs, form_data} = window.get_form_data('.user_create_form');
        const {get_user_role_selected: role} = getters;
        role.forEach(i=>form_data.append('user_role_id[]',i.role_serial));

        axios.post(`/${api_prefix}/store`,form_data)
            .then(res=>{
                window.s_alert('new user has been created');
                $('.user_create_form input').val('');
                commit('set_clear_selected_user_roles',false);
                management_router.push({name:`All${route_prefix}`})
            })
            .catch(error=>{

            })
    },

    /** override update */
    [`update_${store_prefix}`]: function({state, getters, commit}){
        const {form_values, form_inputs, form_data} = window.get_form_data('.user_edit_form');
        const {get_user_role_selected: role, get_user: user} = getters;
        role.forEach(i=>form_data.append('user_role_id[]',i.role_serial));
        form_data.append('id',user.id);

        axios.post('/user/update',form_data)
            .then(({data})=>{
                commit('set_user',data.result);
                window.s_alert('user has been updated');
            })
    },

    "fetch_all_employee": async function({state}){
        await axios.get('/user/all-employee')
            .then(res=>{
                state.all_employee = res.data;
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
