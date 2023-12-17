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
};

// get state
const getters = {
    [`get_all_instock_products`]: (state) => state[`all_instock_products`],
    [`get_all_outstock_products`]: (state) => state[`all_outstock_products`],
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
