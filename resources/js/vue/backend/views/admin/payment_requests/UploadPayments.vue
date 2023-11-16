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
                            <tbody>
                                <template v-for="(item, index) in excel_data" >
                                    <template>
                                        <tr :key="index">
                                            <td></td>
                                            <td></td>
                                            <td>
                                                {{ item["Trans Date"] }}
                                            </td>
                                            <td>
                                                {{ item["Post Date"] }}
                                            </td>
                                            <td class="text-start">
                                                <span class="badge bg-rose-600 text-light">
                                                    {{ item["Instrument No"] }}
                                                </span>
                                            </td>
                                            <td>
                                                {{ item["Withdraw"] }}
                                            </td>
                                            <td class="text-start">
                                                <span class="badge bg-green-700 text-light">
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
                                    </template>
                                </template>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card-footer text-center">
                    <button @click="check_branch()" type="button" class="btn btn-outline-info mr-2" >
                        <i class="fa fa-upload"></i>
                        Check Related Branch
                    </button>

                    <button type="button" class="btn btn-outline-warning" >
                        <i class="fa fa-upload"></i>
                        Submit
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
            console.log(this.excel_data);
        },
        check_branch: function(){
            console.log(this.excel_data);
            let instument_no = this.excel_data.filter(i=>i["Instrument No"].length > 3)
                                    .map(i=>i["Instrument No"]);

            console.log(instument_no);
        }
    },
};
</script>

<style>
</style>
