import axios from "axios";

const state = {
    ledger_data: [],
    category_wise_total: [],

    income_expense_closing_in_range: {},

    statements: [],
    statements_total: {},
};

// get state
const getters = {
    get_ledger_data: (state) => state.ledger_data,
    get_category_wise_total: (state) => state.category_wise_total,
    get_income_expense_closing_in_range: (state) => state.income_expense_closing_in_range,
    get_statements: (state) => state.statements,
    get_statements_total: (state) => state.statements_total,
};

// actions
const actions = {

    fetch_income_ledger: async function ({ state, getters, commit, rootState },params) {
        let url = `/accountant/report/ledger?`;
        url += `from=${params.from}`;
        url += `&to=${params.to}`;
        url += `&is_income=1`;
        await axios.get(url).then((res) => {
            // this.commit(`set_${store_prefix}s`, res.data);
            state.ledger_data = res.data.ledger_data;
            state.category_wise_total = res.data.category_wise_total;
        });
    },

    fetch_expense_ledger: async function ({ state, getters, commit, rootState },params) {
        let url = `/accountant/report/ledger?`;
        url += `from=${params.from}`;
        url += `&to=${params.to}`;
        url += `&is_expense=1`;
        await axios.get(url).then((res) => {
            // this.commit(`set_${store_prefix}s`, res.data);
            state.ledger_data = res.data.ledger_data;
            state.category_wise_total = res.data.category_wise_total;
        });
    },

    fetch_statements: async function ({ state, getters, commit, rootState },params) {
        let url = `/accountant/report/statements?`;
        url += `from=${params.from}`;
        url += `&to=${params.to}`;
        await axios.get(url).then((res) => {
            // this.commit(`set_${store_prefix}s`, res.data);
            state.statements = res.data.statements;
            state.statements_total = res.data.statements_total;
        });
    },

    fetch_income_expense_closing_in_range: async function ({ state, getters, commit, rootState },params) {
        let url = `/accountant/report/income-expense-closing-in-range?`;
        url += `from=${params.from}`;
        url += `&to=${params.to}`;
        await axios.get(url).then((res) => {
            state.income_expense_closing_in_range = res.data;
        });
    },

}

// mutators
const mutations = {

};

export default {
    state,
    getters,
    actions,
    mutations,
};
