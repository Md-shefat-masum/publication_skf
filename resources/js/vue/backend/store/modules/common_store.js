import axios from "axios";
import { debounce } from "debounce";
import management_router from "../../router/router";

// module perfixes
const store_prefix = `user_role`;
const api_prefix = `user-role`;

// state list
const state = {
    all_outstock_products: [],
    all_instock_products: [],
    employee_taks: [],
    product_report: [],
};

// get state
const getters = {
    [`get_all_instock_products`]: (state) => state[`all_instock_products`],
    [`get_all_outstock_products`]: (state) => state[`all_outstock_products`],
    [`get_employee_taks`]: (state) => state[`employee_taks`],
    [`get_product_report`]: (state) => state[`product_report`],
};

// actions
const actions = {
    [`fetch_all_outstock_products`]: async ({state}) => {
        let res = await axios.get('/common/all-stock-out-products');
        state.all_outstock_products = res.data;
    },
    [`fetch_all_instock_products`]: async ({state}) => {
        let res = await axios.get('/common/all-stock-in-products');
        state.all_instock_products = res.data;
    },

    employeeFetchAllTasks: async function({state},data={}) {
        let date = data.date;
        let url = 'task/get_all_employee_task';
        if(data.date){
            url += "?date="+data.date;
        }
        try {
            const res = await axios.get(url);
            state.employee_taks = res.data;
        } catch (error) {
            // Handle error appropriately
            console.error('Error fetching tasks:', error);
        }
    },

    'fetch_product_report': async function({state},data){
        let res = await axios.get('/common/product-report',{
            params: {
                from: data.from,
                to: data.to,
            }
        });
        state.product_report = res.data;
    },

    [`export_data`]: function ({ state }, {data, name, cols}) {
        let col = cols;
        let values = [];
        data.forEach(el => {
            let temp = [];
            col.forEach(col_title => {
                temp.push(el[col_title])
            });
            values.push(temp);
        });
        new window.CsvBuilder(`${name}_list.csv`)
            .setColumns(col)
            // .addRow(["Eve", "Holt"])
            .addRows(values)
            .exportFile();
    },
};

// mutators
const mutations = {

};

export default {
    state,
    getters,
    actions,
    mutations,
};
