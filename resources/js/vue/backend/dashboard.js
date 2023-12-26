require('./plugins/axios_setup');
require('./plugins/moment_setup');
require('./plugins/preview_image');
require('./plugins/auto_logout');
require('./plugins/preloader');
require('./plugins/csv_to_array');
require('./plugins/demo_data_load');
require('./plugins/get_selector_form_data');
require('./plugins/set_selector_form_data');
require('./plugins/enToBn');
require('./plugins/parse_excel');

window.debounce = require('debounce');
window.CsvBuilder = require('filefy').CsvBuilder;

/*********************
   dashboard vue setup
**********************/

import Vue from 'vue'
import router from './router/router';
import store from './store/index';

Vue.component('pagination', require('laravel-vue-pagination'));
Vue.component('input-field', require('./views/components/InputField.vue').default);
Vue.component('date-field', require('./views/components/DateField.vue').default);
Vue.component('user-management-modal', require('./views/users/components/UserManagementModal.vue').default);
Vue.component('ex-app', require('./App.vue').default);
Vue.prototype.number_format = (number = 0) => new Intl.NumberFormat().format(number);
Vue.prototype.formatDate = (date,format_type="date") => window.formatDate(date, format_type);

if (document.getElementById('app')) {
    new Vue({
        store,
        router,
        el: '#app',
        created: function () {
            console.log('dashboard started');
        },
    })
}
