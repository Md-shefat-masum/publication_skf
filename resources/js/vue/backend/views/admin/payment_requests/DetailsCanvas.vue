<template>
    <div class="canvas_backdrop" :class="{active:this[`get_${store_prefix}`]}" @click="$event.target.classList.contains('canvas_backdrop') && call_store(`set_${store_prefix}`,null)">
        <div class="content right" v-if="this[`get_${store_prefix}`]">
            <div class="content_header">
                <h3 class="offcanvas-title">Details</h3>
                <div>
                    <a class="btn btn-sm btn-outline-primary" target="_blank" :href="`/invoice-printout/${this[`get_${store_prefix}`].id}`">
                        Print Invoice
                    </a>
                    <router-link
                        :to="{name:`DetailsAdminOrder`,params:{id: this[`get_${store_prefix}`].id}}">
                        <span class="btn btn-sm btn-outline-success rounded-pill me-2">
                            Details
                        </span>
                    </router-link>
                    <router-link
                        :to="{name:`EditAdminOrder`,params:{id: this[`get_${store_prefix}`].id}}">
                        <span class="btn btn-sm btn-outline-warning rounded-pill me-2">
                            Edit
                        </span>
                    </router-link>
                    <i @click="call_store(`set_${store_prefix}`,null)" class="fa fa-times"></i>
                </div>
            </div>
            <div class="cotent_body pe-2">
                <table class="table" >
                    <tbody>
                        <tr>
                            <td>Order Id</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].invoice_id }}</td>
                        </tr>
                        <tr>
                            <td>Branch</td>
                            <td>:</td>
                            <td>
                                {{ this[`get_${store_prefix}`].user.first_name }}
                                {{ this[`get_${store_prefix}`].user.last_name }}
                            </td>
                        </tr>
                        <tr>
                            <td>contact</td>
                            <td>:</td>
                            <td>
                                {{ this[`get_${store_prefix}`].user.mobile_number }}
                            </td>
                        </tr>
                        <tr>
                            <td>payment status</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].payment_status }}</td>
                        </tr>
                        <tr>
                            <td>date</td>
                            <td>:</td>
                            <td>
                                {{ new Date(this[`get_${store_prefix}`].created_at).toDateString() }}
                                {{ new Date(this[`get_${store_prefix}`].created_at).toLocaleTimeString() }}
                            </td>
                        </tr>
                        <tr>
                            <td>Status</td>
                            <td>:</td>
                            <td>
                                <span v-if="this[`get_${store_prefix}`].status == 1" class="badge bg-label-success me-1">active</span>
                                <span v-if="this[`get_${store_prefix}`].status == 0" class="badge bg-label-success me-1">deactive</span>
                            </td>
                        </tr>
                    </tbody>
                    <tbody>
                        <tr>
                            <td>Order Id</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].invoice_id }}</td>
                        </tr>
                        <tr>
                            <td>Branch</td>
                            <td>:</td>
                            <td>
                                {{ this[`get_${store_prefix}`].user.first_name }}
                                {{ this[`get_${store_prefix}`].user.last_name }}
                            </td>
                        </tr>
                        <tr>
                            <td>contact</td>
                            <td>:</td>
                            <td>
                                {{ this[`get_${store_prefix}`].user.mobile_number }}
                            </td>
                        </tr>

                        <tr>
                            <td>date</td>
                            <td>:</td>
                            <td>
                                {{ new Date(this[`get_${store_prefix}`].created_at).toDateString() }}
                                {{ new Date(this[`get_${store_prefix}`].created_at).toLocaleTimeString() }}
                            </td>
                        </tr>
                        <tr>
                            <td>Order status</td>
                            <td>:</td>
                            <td>
                                <span class="text-warning">
                                    {{ this[`get_${store_prefix}`].order_status }}
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div>
                                    Update Status
                                </div>
                            </td>
                            <td>:</td>
                            <td>
                                <select @change="($event=$event, that=this)=>update_order_status({status: $event.target.value, order_id:that[`get_${store_prefix}`].id })" :value="this[`get_${store_prefix}`].order_status" class="form-select">
                                    <option value="pending">pending</option>
                                    <option value="accepted">accepted</option>
                                    <option value="processing">processing</option>
                                    <option value="delivered">delivered</option>
                                    <option value="canceled">canceled</option>
                                </select>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <table class="table mt-5">
                    <thead>
                        <tr>
                            <th style="width: 245px;">Items</th>
                            <th style="width: 145px;" class="text-center">Qty</th>
                            <th class="text-end" style="width:135px;">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="item in this[`get_${store_prefix}`].order_details" :key="item.id">
                            <td>{{ item.product_name }}</td>
                            <td class="text-center">{{ item.sales_price.toString().enToBn() }} * {{ item.qty.toString().enToBn() }}</td>
                            <td class="text-end">{{ number_format( item.sales_price * item.qty ).enToBn() }}</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr style="border-top: 2px solid gray;">
                            <td colspan="2" class="text-end">
                                <b>Sub Total</b>
                            </td>
                            <td class="text-end">
                                {{ number_format( this[`get_${store_prefix}`].sub_total).enToBn() }}
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-end">
                                <b>Shipping</b>
                            </td>
                            <td class="text-end">
                                {{ number_format( this[`get_${store_prefix}`].delivery_charge ).enToBn() }}
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-end">
                                <b>Discount</b>
                            </td>
                            <td class="text-end">
                                - {{ number_format( this[`get_${store_prefix}`].discount ).enToBn() }}
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-end">
                                <b>Total</b>
                            </td>
                            <td class="text-end text-success">
                                {{ number_format( this[`get_${store_prefix}`].total_price ).enToBn() }}
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-end">
                                <b>Paid</b>
                            </td>
                            <td class="text-end text-warning">
                                - {{ number_format( this[`get_${store_prefix}`].total_paid ).enToBn() }}
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-end">
                                <b>Due</b>
                            </td>
                            <td class="text-end text-danger">
                                {{ number_format( this[`get_${store_prefix}`].total_price - this[`get_${store_prefix}`].total_paid ).enToBn()}}
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations } from 'vuex'
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;
export default {
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
            payment_status: 'pending',
        }
    },
    methods: {
        ...mapActions([`update_order_status`]),
        ...mapMutations([`set_${store_prefix}`]),
        call_store: function(name, params=null){
            this[name](params)
        },
    },
    computed: {
        ...mapGetters(
            [`get_${store_prefix}`]
        ),
        shipping: function(){
            return this[`get_${store_prefix}`].shipping;
        }
    }
}
</script>

<style>

</style>
