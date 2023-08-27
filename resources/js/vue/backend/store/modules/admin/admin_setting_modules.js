import axios from "axios";
import { debounce } from "debounce";
import StoreModule from "../schema/StoreModule";

let test_module = new StoreModule('admin_setting','admin/writer','AdminSetting');
const {store_prefix, api_prefix, route_prefix} = test_module;

// state list
const state = {
    ...test_module.states(),
    settings_keys: [],
    settings_values: {},
};

// get state
const getters = {
    ...test_module.getters(),
    get_settings_values: (state)=>state.settings_values,
    get_settings_keys: (state)=>state.settings_keys,
};

// actions
const actions = {
    ...test_module.actions(),
    get_settings: async function({state}){
        let res = await axios.post('/admin/settings/get-by-keys',{keys: state.settings_keys});
        let data = res.data;
        state.settings_values = data;
        // console.log(data);
    },
    
    set_settings: async function({state}, {id, value, index}){
        let form_data = new FormData();
        form_data.append('value',value);
        let res = await axios.post('/admin/settings/set/'+id,form_data);
        let data = res.data;
        window.s_alert(`setting updated`);
        state.settings_values[index]?.forEach(i => {
            if(i.id == data.id){
                i.setting_value = data.setting_value;
            }
        });
        // console.log(data);
    },
}

// mutators
const mutations = {
    ...test_module.mutations(),
    set_settings_keys: function(state, settings_keys){
        state.settings_keys = settings_keys
    }
};

export default {
    state,
    getters,
    actions,
    mutations,
};
