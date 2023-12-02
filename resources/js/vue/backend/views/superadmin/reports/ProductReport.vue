<template>
    <div class="container-fluid">
        <div class="card list_card">
            <div class="card-header">
                <h4>
                    Statements ( {{ date_title }} )
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
            <div class="product_report card-body text-nowrap">
                <table class="table table-bordered table-hover" v-if="product_report.length">
                    <thead>
                        <tr>
                            <template v-for="(title, index) in Object.keys(product_report[0])">
                                <th :key="title" v-if="index == 0" rowspan="2">
                                    {{ title }}
                                </th>
                                <th :key="title" colspan="2" v-else>
                                    {{ title }}
                                </th>
                            </template>
                        </tr>
                        <tr>
                            <template v-for="(title, index) in Object.keys(product_report[0])">
                                <th :key="title" v-if="index">
                                    Production
                                </th>
                                <th :key="title+index" v-if="index">
                                    Sales
                                </th>
                            </template>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="(item,index) in product_report" :key="index">
                            <template v-for="(col, index2) in item" >
                                <td :key="index2+'col'" v-if="!col.length">
                                    {{ col.production || '' }}
                                </td>
                                <td :key="index2" v-if="!col.length">
                                    {{ col.sales || '' }}
                                </td>

                                <td :key="index2" v-if="col.length" style="position:sticky;left: -22px;background-color: #283046;">
                                    {{ col }}
                                </td>
                            </template>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="card-footer py-1 border-top-0">

            </div>
        </div>

    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations } from 'vuex';

export default {
    components: { },
    data: function(){
        return {
            from_date: '',
            to_date: '',
            date_title: '',
        }
    },
    created: async function(){
        document.querySelector('html').classList.add('nav-hide');
        this.from_date = moment().subtract(365,'d').format('YYYY-MM-DD');
        this.to_date = moment().add(1,'d').format('YYYY-MM-DD');
        this.date_title = moment(this.from_date).format('DD MMM, YY  - ');
        this.date_title += moment(this.to_date).format('DD MMM, YY');

        await this[`fetch_product_report`]({
            from: this.from_date,
            to: this.to_date,
        });

        console.log(this.product_report);

        this.$watch(`from_date`,function(v){
            this.date_title = moment(this.from_date).format('MMM DD - ');
            this.date_title += moment(this.to_date).format('MMM DD');

            this[`fetch_product_report`]({
                from: this.from_date,
                to: this.to_date,
            });
        })
        this.$watch(`to_date`,function(v){
            this.date_title = moment(this.from_date).format('MMM DD - ');
            this.date_title += moment(this.to_date).format('MMM DD');

            this[`fetch_product_report`]({
                from: this.from_date,
                to: this.to_date,
            });
        })
    },
    methods: {
        ...mapActions([
            `fetch_product_report`,
            `fetch_accountant_category_expense_categories`,
            `fetch_income_expense_closing_in_range`,
        ]),

    },
    computed: {
        ...mapGetters({
            product_report: "get_product_report"
        }),
    }
}
</script>

<style>

</style>
