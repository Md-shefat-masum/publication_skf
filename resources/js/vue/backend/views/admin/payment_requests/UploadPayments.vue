<template>
    <div class="container-fluid">
        <div class="card list_card">
            <div class="card-header">
                <h4>Create</h4>
                <div class="btns">
                    <router-link :to="{ name: `All${route_prefix}` }" class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        Back
                    </router-link>
                </div>
            </div>
            <!-- <form @submit.prevent="call_store(`store_${store_prefix}`,$event.target)" autocomplete="false"> -->
            <form @submit.prevent="()=>''" autocomplete="false">
                <div class="card-body">
                    <div class="admin_form form_1" >
                        <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                            <input @change="load_excel" type="file" class="form-control">
                        </div>
                    </div>
                    <div class="table-responsive text-nowrap">
                        <table class="table table-bordered">
                            <thead class="table-light">
                                <tr>
                                    <th>Branch</th>
                                    <th>Order ID</th>
                                    <th>Trans Date</th>
                                    <th>Post Date</th>
                                    <th>Instrument No</th>
                                    <th>Withdraw</th>
                                    <th>Deposit</th>
                                    <th>Balance</th>
                                    <th>Particulars</th>
                                </tr>
                            </thead>
                            <tbody v-if="excel_data.length">
                                <tr v-for="item in excel_data" :key="item.instument_no">
                                    <td>
                                        {{ item["branch_name"] }}
                                    </td>
                                    <td>
                                        <a v-if="item[`order_id`]" class="btn btn-sm btn-outline-warning" target="_blank" :href="`#/admin/order/details/${item.order_id}`">
                                            {{ item["order_id"] }}
                                        </a>
                                    </td>
                                    <td>
                                        {{ item["Trans Date"] }}
                                    </td>
                                    <td>
                                        {{ item["Post Date"] }}
                                    </td>
                                    <td class="text-start">
                                        <span class="badge bg-rose-600 text-light font_20">
                                            {{ item["Instrument No"] }}
                                        </span>
                                    </td>
                                    <td>
                                        {{ item["Withdraw"] }}
                                    </td>
                                    <td class="text-start">
                                        <span class="badge bg-green-700 text-light font_20">
                                            {{ item["Deposit"] }}
                                        </span>
                                    </td>
                                    <td>
                                        <span class="badge bg-purple-600 text-light">
                                            {{ item["Balance"] }}
                                        </span>
                                    </td>
                                    <td class="text-start">
                                        {{ item["Particulars"] }}
                                    </td>
                                </tr>
                                <!-- <tr :key="index+item[`Instrument No`]">
                                    <td colspan="6" class="text-start">
                                        <b>Particulars: </b>
                                        {{ item["Particulars"] }}
                                    </td>
                                </tr> -->
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card-footer text-center">
                    <button @click="check_branch()" type="button" class="btn btn-outline-info mr-2" >
                        <i class="fa fa-upload"></i>
                        Check Related Branch
                    </button>

                    <button type="button" @click="save_transactions()" class="btn btn-outline-warning" >
                        <i class="fa fa-upload"></i>
                        Save transactions
                    </button>
                </div>
            </form>
        </div>
    </div>
</template>

<script>
import { mapActions } from 'vuex'
import InputField from '../../components/InputField.vue'
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;

export default {
    components: { InputField },
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
            excel_data: [],
        }
    },
    created: function () {},
    methods: {
        ...mapActions([`store_${store_prefix}`]),
        call_store: function(name, params=null){
            this[name](params)
        },
        load_excel: async function(){
            this.excel_data = await window.handleFileSelect(event);
            this.excel_data.forEach(e=>{
                e.instument_no = e["Instrument No"];
                e.trx_id = e["Instrument No"];
                e.amount = e["Deposit"];
            });
            // console.log(this.excel_data);
        },
        check_branch: async function(){
            // console.log(this.excel_data);
            let instument_no = this.excel_data.filter(i=>i.instument_no.length > 3)
                                    .map(i=>i.instument_no);
            // console.log(instument_no);
            let res = await axios.post('/admin/order/check-orders-with-payments',{instument_no});
            let temp = [...this.excel_data];
            res.data.forEach(el => {
                let ex_data = temp.find(i=>i.instument_no == el.trx_id);
                if(ex_data){
                    ex_data.branch_name = el.user.first_name +' '+el.user.last_name;
                    ex_data.order_id = el.order_id;
                }
            });

            this.excel_data = temp;

        },
        save_transactions: async function(){
            let trxs = this.excel_data.filter(i=>i.branch_name!=null);
            await axios.post(`/admin/order/save-orders-with-payments`,{trxs})
        }
    },
};
</script>

<style>
</style>
