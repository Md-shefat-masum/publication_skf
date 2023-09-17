<template>
    <div class="conatiner">
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
                            <td colspan="2" class="text-center">আগষ্ট</td>
                            <td class="text-end">সাল</td>
                        </tr>
                        <tr>
                            <td>তারিখ</td>
                            <td colspan="2" class="text-center">২৪/০৮/২০২৩</td>
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
                                <template v-if="data[0].categories[i] ">
                                    <td>{{ data[0].categories[i].title }}</td>
                                    <td>{{ data[0].categories[i].logs_sum_total.toString().enToBn() }}</td>
                                </template>
                                <template v-else>
                                    <td></td>
                                    <td></td>
                                </template>
                                <template v-if="data[1].categories[i] ">
                                    <td>{{ data[1].categories[i].title }}</td>
                                    <td>{{ data[1].categories[i].logs_sum_total.toString().enToBn() }}</td>
                                </template>
                                <template v-else>
                                    <td></td>
                                    <td></td>
                                </template>
                            </tr>
                        </template>
                        <tr class="footer_fixed" v-if="data.length">
                            <td>মোট আয়</td>
                            <td>{{ get_sum(data[0]) }}</td>
                            <td>মোট ব্যয়</td>
                            <td>{{ get_sum(data[1]) }} </td>
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
const {route_prefix, store_prefix} = PageSetup;

export default {
    components: { PermissionButton, TableTh, DetailsCanvas, SelectedCanvas },
    data: function(){
        return {
            store_prefix,
            route_prefix,
            data: []
        }
    },
    created: function(){
        this[`fetch_${store_prefix}_income_expense`]();
        this.$watch(`get_accountant_all_income_expense`,function(v){
            // console.log(v);
            this.data = v;
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
            let sum = array.categories.reduce((t,i)=> t+=(+i.logs_sum_total), 0);
            return sum.toString().enToBn();
        }
    },
    computed: {
        ...mapGetters([
            `get_${store_prefix}s`,
            `get_${store_prefix}_selected`,
            `get_${store_prefix}_show_active_data`,
            `get_accountant_all_income_expense`
        ]),
    }
}
</script>

<style>

</style>

