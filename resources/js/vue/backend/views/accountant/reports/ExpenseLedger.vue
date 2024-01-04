<template>
    <div class="container-fluid">
        <div class="card list_card">
            <div class="card-header">
                <h4>
                    Expense Ledger ( {{ date_title }} )
                </h4>
                <div class="search">
                    <input type="date" v-model="from_date" class="income_expense_date_field" @click="$event.target.showPicker();">
                    To
                    <input type="date" v-model="to_date" class="income_expense_date_field" @click="$event.target.showPicker();">
                </div>
                <div class="btns d-flex gap-2 align-items-center">
                    <!-- <button
                        type="button"
                        :class="'btn rounded-pill btn-outline-info'">
                        <i class="fa fa-print me-5px"></i>
                        Export
                    </button> -->
                </div>
            </div>
            <div class="ledger_book card-body text-nowrap">
                <div class="ledger_row ledger_heading">
                    <div class="ledger_col date">Date</div>
                    <div class="ledger_col receipt">Receipt</div>
                    <div class="ledger_col name">Name</div>
                    <div class="ledger_col">Amount</div>
                    <div class="ledger_col" v-for="i in categories" :key="i.id">
                        {{ i.title }}
                    </div>
                </div>

                <div class="ledger_row" v-for="i in ledgers" :key="i.id">
                    <div class="ledger_col date text-start">{{ new Date(i.date).toDateString() }}</div>
                    <div class="ledger_col receipt">{{ i.expense_id }}</div>
                    <div class="ledger_col name">{{ i.name }}</div>
                    <div class="ledger_col">{{ i.amount }}</div>
                    <div class="ledger_col" v-for="j in categories" :key="j.id">
                        {{ i[`cat_${j.id}`] }}
                    </div>
                </div>

                <div class="ledger_row ledger_footer">
                    <div class="ledger_col date"></div>
                    <div class="ledger_col receipt"></div>
                    <div class="ledger_col name">Total</div>
                    <div class="ledger_col amount">{{ category_wise_total['total'].toFixed(2) }}</div>
                    <div class="ledger_col" v-for="i in categories" :key="i.id">
                        {{ category_wise_total[`cat_${i.id}`].toFixed(2) }}
                    </div>
                </div>
            </div>
            <div class="card-footer py-1 border-top-0">
                <ul class="d-flex gap-3" style="list-style-type: none;">
                    <li>Total Income: <b class="text-success">{{ closing_data.income.toFixed(2) }}</b> </li>
                    <li>Total Expense: <b class="text-warning">{{ closing_data.expense.toFixed(2) }}</b> </li>
                    <li>Total Extra: <b class="text-info"> {{ closing_data.extra.toFixed(2) }}</b></li>
                    <li>Previous Extra: <b class="text-danger">{{ closing_data.extra_before.toFixed(2) }}</b> </li>
                    <li>Present Extra: <b class="text-success"> {{ closing_data.preset_extra.toFixed(2) }}</b> </li>
                </ul>
            </div>
        </div>

    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations } from 'vuex';

/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;

export default {
    components: { },
    data: function(){
        return {
            store_prefix,
            route_prefix,
            from_date: '',
            to_date: '',
            date_title: '',
        }
    },
    created: async function(){
        document.querySelector('html').classList.add('nav-hide');
        this.from_date = moment().subtract(30,'d').format('YYYY-MM-DD');
        this.to_date = moment().add(1,'d').format('YYYY-MM-DD');
        this.date_title = moment(this.from_date).format('MMM DD - ');
        this.date_title += moment(this.to_date).format('MMM DD');

        await this[`fetch_accountant_category_expense_categories`]();
        await this[`fetch_income_expense_closing_in_range`]({
            from: this.from_date,
            to: this.to_date,
        });
        await this[`fetch_expense_ledger`]({
            from: this.from_date,
            to: this.to_date,
        });

        this.$watch(`from_date`,function(v){
            this.date_title = moment(this.from_date).format('MMM DD - ');
            this.date_title += moment(this.to_date).format('MMM DD');
            this[`fetch_income_expense_closing_in_range`]({
                from: this.from_date,
                to: this.to_date,
            });
            this[`fetch_expense_ledger`]({
                from: this.from_date,
                to: this.to_date,
            });
        })
        this.$watch(`to_date`,function(v){
            this.date_title = moment(this.from_date).format('MMM DD - ');
            this.date_title += moment(this.to_date).format('MMM DD');
            this[`fetch_income_expense_closing_in_range`]({
                from: this.from_date,
                to: this.to_date,
            });
            this[`fetch_expense_ledger`]({
                from: this.from_date,
                to: this.to_date,
            });
        })
    },
    methods: {
        ...mapActions([
            `fetch_expense_ledger`,
            `fetch_accountant_category_expense_categories`,
            `fetch_income_expense_closing_in_range`,
        ]),

    },
    computed: {
        ...mapGetters({
            categories: `get_expense_categories`,
            ledgers: `get_ledger_data`,
            category_wise_total: `get_category_wise_total`,
            closing_data: `get_income_expense_closing_in_range`,
        }),
    }
}
</script>

<style>

</style>
