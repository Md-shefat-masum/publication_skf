<template>
    <div class="canvas_backdrop" :class="{active:this[`get_${store_prefix}`]}" @click="$event.target.classList.contains('canvas_backdrop') && call_store(`set_${store_prefix}`,null)">
        <div class="content right" v-if="this[`get_${store_prefix}`]">
            <div class="content_header">
                <div class="d-flex gap-1 flex-wrap align-content-center">
                    <h3 class="offcanvas-title">Details</h3>
                    <router-link :to="{
                            name:`AllSupplierPayments`,
                            query:{
                                supplier_name: this[`get_${store_prefix}`].company_name,
                                payment_type: `opening`,
                                supplier_id: this[`get_${store_prefix}`].id,
                                supplier_type: `binding`,
                            }
                        }"
                        class="btn btn-sm rounded-pill btn-outline-info">
                        Openings
                    </router-link>
                    <router-link :to="{
                            name:`AllSupplierPayments`,
                            query:{
                                supplier_name: this[`get_${store_prefix}`].company_name,
                                payment_type: `bill`,
                                supplier_id: this[`get_${store_prefix}`].id,
                                supplier_type: `binding`,
                            }
                        }"
                        class="btn btn-sm rounded-pill btn-outline-info">
                        Bills
                    </router-link>
                    <router-link :to="{
                            name:`AllSupplierPayments`,
                            query:{
                                supplier_name: this[`get_${store_prefix}`].company_name,
                                payment_type: `payment`,
                                supplier_id: this[`get_${store_prefix}`].id,
                                supplier_type: `binding`,
                            }
                        }"
                        class="btn btn-sm rounded-pill btn-outline-info">
                        Payments
                    </router-link>
                </div>
                <i @click="call_store(`set_${store_prefix}`,null)" class="fa fa-times"></i>
            </div>
            <div class="cotent_body">
                <table class="table">
                    <tbody>
                        <tr>
                            <td>Id</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].id }}</td>
                        </tr>
                        <tr>
                            <td>Supplier Name</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].supplier_name }}</td>
                        </tr>
                        <tr>
                            <td>Opening</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].opening }}</td>
                        </tr>
                        <tr>
                            <td>Bill</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].bill }}</td>
                        </tr>
                        <tr>
                            <td>Payment</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].payment }}</td>
                        </tr>
                        <tr>
                            <td>Balance</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].balance }}</td>
                        </tr>
                        <tr>
                            <td style="width: 190px;">Contact Numbers</td>
                            <td>:</td>
                            <td>
                                <ol>
                                    <li v-for="number in this[`get_${store_prefix}`].mobile_numbers" :key="number.id">
                                        {{ number.mobile_number }}
                                    </li>
                                </ol>
                            </td>
                        </tr>

                        <tr>
                            <td>Description</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].description }}</td>
                        </tr>
                        <tr>
                            <td>Status</td>
                            <td>:</td>
                            <td>
                                <span v-if="this[`get_${store_prefix}`].status == 1" class="badge bg-label-success me-1">active</span>
                                <span v-if="this[`get_${store_prefix}`].status == 0" class="badge bg-label-success me-1">deactive</span>
                            </td>
                        </tr>
                        <tr>
                            <td>created at</td>
                            <td>:</td>
                            <td>{{ new Date(this[`get_${store_prefix}`].created_at).toLocaleString() }}</td>
                        </tr>
                        <tr>
                            <td>udpated at</td>
                            <td>:</td>
                            <td>{{ new Date(this[`get_${store_prefix}`].updated_at).toLocaleString() }}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</template>

<script>
import { mapGetters, mapMutations } from 'vuex'
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;
export default {
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
        }
    },
    methods: {
        ...mapMutations([`set_${store_prefix}`]),
        call_store: function(name, params=null){
            this[name](params)
        },
    },
    computed: {
        ...mapGetters([`get_${store_prefix}`])
    }
}
</script>

<style>

</style>
