import axios from "axios";
import { debounce } from "debounce";
import StoreModule from "../schema/StoreModule";

let test_module = new StoreModule('admin_translator','admin/translator','AdminTranslator');
const {store_prefix, api_prefix, route_prefix} = test_module;

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
