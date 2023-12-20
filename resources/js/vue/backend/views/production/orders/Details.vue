<template>
    <div class="container-fluid print_body">
        <div class="card list_card">
            <div class="card-header no_print">
                <h4>Details</h4>
                <div class="btns">
                    <a href="" @click.prevent="call_store(`set_${store_prefix}`,null), $router.push({ name: `AllProductions` })"  class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        <span >
                            Back
                        </span>
                    </a>
                </div>
            </div>
            <div class="card-body  pb-5 text-nowrap" v-if="this[`get_${store_prefix}`]">
                <div class="production_details_invoice  mb-4">
                    <table class="table table-bordered font_bn">
                        <thead>
                            <tr>
                                <th class="font_20 text-start ps-0" style="width: 133px;">
                                    নং :
                                </th>
                                <th class="font_20 text-start"> {{ data.no }} </th>
                                <th class="text-end font_20" >
                                    তারিখ :
                                </th>
                                <th class="text-start" style="width: 230px;"> {{ data.date }}</th>
                            </tr>
                            <tr>
                                <th class="font_20 text-start ps-0">
                                    পণ্যের নাম :
                                </th>
                                <th class="font_20 text-start"> {{ data.product_info.product_name }}</th>
                                <th class="text-end font_20">
                                    উৎপাদনের পরিমাণ :
                                </th>
                                <th class="text-start"> {{ data.print_qty }}</th>
                            </tr>
                        </thead>
                    </table>
                    <table class="table table-bordered font_bn">
                        <tbody>

                            <tr class="">
                                <th class="text-start font_20">বিষয়</th>
                                <th class="font_20 text-center">উৎপাদনকারী প্রতিষ্ঠান সমূহের নাম ও ঠিকানা</th>
                                <th class="font_20" style="width:100px;">পরিমান</th>
                                <th class="font_20" style="width:100px;">মূল্য</th>
                                <th class="font_20" style="width:100px;">অর্ডার নাম্বার</th>
                                <th class="font_20" style="width:100px;">মন্তব্য</th>
                            </tr>
                            <tr v-for="supplier in data.related_suppliers" :key="supplier.id">
                                <td class="text-start">{{ supplier.category_name }}</td>
                                <td>{{ supplier.supplier_name }}</td>
                                <td>{{ supplier.amount }}</td>
                                <td>{{ supplier.price }}</td>
                                <td>{{ supplier.order_number }}</td>
                                <td>{{ supplier.comment }}</td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="3" class="text-end font_bn font_20">
                                    মোট সম্ভাব্য ব্যয়
                                </td>
                                <td class="text-center">
                                    {{ total_cost }}
                                </td>
                                <td class="text-end font_bn font_20">
                                    প্রতি কপির মূল্য
                                </td>
                                <td class="text-center">
                                    {{ data.each_copy_price }}
                                </td>
                            </tr>
                        </tfoot>
                    </table>

                    <div class="mt-2 font_bn font_20">
                        পণ্য অর্ডার দেয়ার তারিখ :  {{ data.order_date }}
                    </div>
                    <div class="mt-2 font_bn font_20">
                        পণ্য সম্ভাব্য ডেলিভারী দেয়ার তারিখ : {{ data.delivery_date }}
                    </div>

                </div>

                <div class="break_after"></div>
                <div class="row justify-content-center break_before">
                    <div class="mt-2" v-if="data">
                        <h4>production statuses</h4>
                        <table class="table">
                            <tr v-for="(statuss, index) in data.production_status" :key="statuss.id">
                                <td style="width: 120px; text-wrap: nowrap;">
                                    <b>{{index+1}}. {{ statuss.status }}</b>
                                </td>
                                <td style="width:5px;">:</td>
                                <td style="width: 80px;">{{ new Date(statuss.created_at).toLocaleDateString() }}</td>
                                <td>
                                    {{ statuss.description }}
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div v-if="data && data.is_complete == 0" class="card-footer text-center no_print">
                <button class="btn btn-outline-primary" type="button" @click="print_page">
                    <i class="fa fa-print"></i>
                    Print
                </button>
                <permission-button
                    :permission="'can_edit'"
                    :to="{name:`ProductionProductionEdit`,params:{id:$route.params.id}}"
                    :classList="'btn btn-outline-info ms-2'">
                    <i class="fa text-info fa-pencil"></i> &nbsp;
                    Edit
                </permission-button>
                <router-link class="btn btn-outline-warning ms-2" :to="{name: 'UpdateStatus' ,params:{id:$route.params.id}}">
                    Update Status
                </router-link>
                <router-link class="btn btn-outline-primary ms-2" :to="{name: 'CompleteProduction' ,params:{id:$route.params.id}}">
                    Complete Production
                </router-link>
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations } from 'vuex'
import PermissionButton from '../../components/PermissionButton.vue'
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix} = PageSetup;
const store_prefix = 'production_production';
export default {
    components: { PermissionButton },
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
        }
    },
    created: function () {
        this[`fetch_production`]({id: this.$route.params.id, select_all:1})
    },
    methods: {
        ...mapActions([
            `fetch_production`,
        ]),
        ...mapMutations([
            `set_${store_prefix}`
        ]),
        call_store: function(name, params=null){
            this[name](params)
        },
        print_page: function(){
            window.print();
        }
    },
    computed: {
        ...mapGetters([`get_${store_prefix}`]),
        ...mapGetters({
            data: `get_${store_prefix}`
        }),
        total_cost: function(){
            return this.data.related_suppliers.reduce((t,i) => t + (+i.price * (+i.amount || 1)), 0);
        },
    }
}
</script>

<style>

</style>
