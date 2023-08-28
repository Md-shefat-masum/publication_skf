import Vue from 'vue';
import Vuex from 'vuex';
// import createPersistedState from "vuex-persistedstate";
Vue.use(Vuex);

import auth_modules from './modules/auth_modules';
import user_modules from './modules/user_modules';
import user_role_modules from './modules/user_role_modules';
import user_contact_message_modules from './modules/user_contact_message_modules';

import branch_product_modules from './modules/branch/branch_product_modules';
import branch_order_modules from './modules/branch/branch_order_modules';

import admin_product_modules from './modules/admin/admin_product_modules';
import admin_writer_modules from './modules/admin/admin_writer_modules';
import admin_translator_modules from './modules/admin/admin_translator_modules';
import admin_order_modules from './modules/admin/admin_order_modules';
import admin_payment_request_modules from './modules/admin/admin_payment_request_modules';
import admin_setting_modules from './modules/admin/admin_setting_modules';

import production_product_modules from './modules/production/production_product_modules';
import production_product_category_modules from './modules/production/production_product_category_modules';
import production_paper_modules from './modules/production/production_paper_modules';
import production_paper_stock_modules from './modules/production/production_paper_stock_modules';
import production_print_modules from './modules/production/production_print_modules';
import production_binding_modules from './modules/production/production_binding_modules';
import production_designer_modules from './modules/production/production_designer_modules';
import production_production_modules from './modules/production/production_production_modules';

const store = new Vuex.Store({
    modules: {
        auth_modules,
        user_modules,
        user_role_modules,
        user_contact_message_modules,

        branch_product_modules,
        branch_order_modules,

        admin_product_modules,
        admin_translator_modules,
        admin_writer_modules,
        admin_order_modules,
        admin_payment_request_modules,
        admin_setting_modules,

        production_product_modules,
        production_product_category_modules,
        production_paper_modules,
        production_paper_stock_modules,
        production_print_modules,
        production_binding_modules,
        production_designer_modules,
        production_production_modules,
    },
    state: {},
    getters: {},
    mutations: {},
    actions: {},
    // plugins: [createPersistedState()],
});

export default store;
