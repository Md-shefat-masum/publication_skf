<template>
    <div class="container">
        <div class="card list_card py-2">
            <div class="accounts_at_a_glance custom_scroll">
                <table class="table table-bordered">
                    <tbody>
                        <tr>
                            <td colspan="4">
                                <h4 class="text-center">আয় ব্যয় হিসাব</h4>
                            </td>
                        </tr>
                        <tr>
                            <td>মাসের নাম</td>
                            <td colspan="2" class="text-center">
                                {{  date_title  }}
                            </td>
                            <td class="text-end">সাল</td>
                        </tr>
                        <tr>
                            <td>তারিখ</td>
                            <td colspan="2" class="text-center">
                                <input type="date" v-model="from_date" class="income_expense_date_field" @click="$event.target.showPicker();">
                                To
                                <input type="date" v-model="to_date" class="income_expense_date_field" @click="$event.target.showPicker();">
                            </td>
                            <td class="text-end">২০২৩</td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-center">আয়</td>
                            <td colspan="2" class="text-center">ব্যয়</td>
                        </tr>
                        <tr class="row_sticky">
                            <td>বিবরণ</td>
                            <td>পরিমান</td>
                            <td>বিবরণ</td>
                            <td>পরিমান</td>
                        </tr>
                        <template v-if="data.length">
                            <tr v-for="i in data[1].categories.length" :key="i">
                                <template v-if="data[0].categories[i-1]">
                                    <td>{{ data[0].categories[i-1].title }}</td>
                                    <td>
                                        <span v-if="data[0].categories[i-1].logs_sum_total">
                                            {{ data[0].categories[i-1].logs_sum_total?.toFixed(2).enToBn() }}
                                        </span>
                                    </td>
                                </template>
                                <template v-else>
                                    <td></td>
                                    <td></td>
                                </template>
                                <template v-if="data[1].categories[i-1] ">
                                    <td>{{ data[1].categories[i-1].title }}</td>
                                    <td>
                                        <span v-if="data[1].categories[i-1].logs_sum_total">
                                            {{ data[1].categories[i-1].logs_sum_total?.toFixed(2).enToBn() }}
                                        </span>
                                    </td>
                                </template>
                                <template v-else>
                                    <td></td>
                                    <td></td>
                                </template>
                            </tr>
                        </template>

                        <tr>
                            <td colspan="3" class="text-end">মোট আয়</td>
                            <td>{{ get_sum(data[0]).bn }}</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="text-end">মোট ব্যয়</td>
                            <td>{{ get_sum(data[1]).bn }}</td>
                        </tr>
                        <tr>
                            <td colspan="3" class="text-end">উদ্ধৃত্ত</td>
                            <td>
                                {{ (get_sum(data[0]).en - get_sum(data[1]).en).toFixed(2).enToBn() }}
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="text-end">বিগত উদ্ধৃত্ত</td>
                            <td>
                                {{ get_previous_extra_money.toFixed(2).enToBn() }}
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="text-end">বর্তমান উদ্ধৃত্ত</td>
                            <td>
                                {{ (get_previous_extra_money + (get_sum(data[0]).en - get_sum(data[1]).en)).toFixed(2).enToBn() }}
                            </td>
                        </tr>
                        <tr class="footer_fixed" v-if="data.length">
                            <td>মোট আয়</td>
                            <td>{{ get_sum(data[0]).bn }}</td>
                            <td>মোট ব্যয়</td>
                            <td>{{ get_sum(data[1]).bn }} </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations } from 'vuex';
import PermissionButton from '../../components/PermissionButton.vue';
import TableTh from './components/TableTh.vue';
import DetailsCanvas from './DetailsCanvas.vue';
import SelectedCanvas from './SelectedCanvas.vue';

/** store and route prefix for export object use */
import PageSetup from './PageSetup';
import moment from 'moment';
const {route_prefix, store_prefix} = PageSetup;

export default {
    components: { PermissionButton, TableTh, DetailsCanvas, SelectedCanvas },
    data: function(){
        return {
            store_prefix,
            route_prefix,

            from_date: '',
            to_date: '',
            date_title: '',

            data: []
        }
    },
    created: async function(){
        this.from_date = moment().subtract(31,'d').format('YYYY-MM-DD');
        this.to_date = moment().add(2,'d').format('YYYY-MM-DD');
        this.date_title = moment(this.from_date).format('MMM DD - ');
        this.date_title += moment(this.to_date).format('MMM DD');

        this[`fetch_${store_prefix}_previous_extra_money`]({
            from: this.from_date,
            to: this.to_date,
        });
        this[`fetch_${store_prefix}_income_expense`]({
            from: this.from_date,
            to: this.to_date,
        });
        this.$watch(`get_accountant_all_income_expense`,function(v){
            this.data = v;
        })
        this.$watch(`from_date`,function(v){
            this.date_title = moment(this.from_date).format('MMM DD - ');
            this.date_title += moment(this.to_date).format('MMM DD');
            this[`fetch_${store_prefix}_previous_extra_money`]({
                from: this.from_date,
                to: this.to_date,
            });
            this[`fetch_${store_prefix}_income_expense`]({
                from: this.from_date,
                to: this.to_date,
            });
        })
        this.$watch(`to_date`,function(v){
            this.date_title = moment(this.from_date).format('MMM DD - ');
            this.date_title += moment(this.to_date).format('MMM DD');
            this[`fetch_${store_prefix}_previous_extra_money`]({
                from: this.from_date,
                to: this.to_date,
            });
            this[`fetch_${store_prefix}_income_expense`]({
                from: this.from_date,
                to: this.to_date,
            });
        })
    },
    methods: {
        ...mapActions([
            `fetch_${store_prefix}s`,
            `soft_delete_${store_prefix}`,
            `restore_${store_prefix}`,
            `export_${store_prefix}_all`,
            `export_selected_${store_prefix}_csv`,
            `fetch_${store_prefix}_income_expense`,
            `fetch_${store_prefix}_previous_extra_money`,
        ]),
        ...mapMutations([
            `set_${store_prefix}_paginate`,
            `set_${store_prefix}_page`,
            `set_${store_prefix}_search_key`,
            `set_${store_prefix}_orderByCol`,
            `set_${store_prefix}_show_active_data`,
            `set_${store_prefix}`,
            `set_selected_${store_prefix}s`,
            `set_select_all_${store_prefix}s`,
            `set_clear_selected_${store_prefix}s`,
            `set_${store_prefix}_show_selected`,
        ]),

        call_store: function(name, params=null){
            this[name](params)
        },
        handle_pagination: function(page=1){
            return this[`set_${store_prefix}_page`](page);
        },

        check_if_data_is_selected: function(user){
            let check_index = this[`get_${store_prefix}_selected`].findIndex((i) => i.id == user.id);
            if(check_index >= 0){
                return true;
            }else{
                return false;
            }
        },

        get_sum: function(array){
            if(!array?.categories){
                return {
                    bn: 0,
                    en: 0,
                }
            }
            let sum = array.categories.reduce((t , i) => t += (+i.logs_sum_total) , 0);
            return {
                bn: sum.toFixed(2).enToBn(),
                en: sum,
            };
        }
    },
    computed: {
        ...mapGetters([
            `get_${store_prefix}s`,
            `get_${store_prefix}_selected`,
            `get_${store_prefix}_show_active_data`,
            `get_accountant_all_income_expense`,
            `get_previous_extra_money`,
        ]),
    }
}
</script>

<style>

</style>

