<template>
    <div class="canvas_backdrop" :class="{active:this[`get_${store_prefix}`]}" @click="$event.target.classList.contains('canvas_backdrop') && call_store(`set_${store_prefix}`,null)">
        <div class="content right" v-if="this[`get_${store_prefix}`]">
            <div class="content_header">
                <h3 class="offcanvas-title">Details</h3>
                <i @click="call_store(`set_${store_prefix}`,null)" class="fa fa-times"></i>
            </div>
            <div class="cotent_body pe-2">
                <table class="table" >
                    <tbody>
                        <tr>
                            <td>Order Id</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].order_id }}</td>
                        </tr>
                        <tr>
                            <td>Branch</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].branch }}</td>
                        </tr>
                        <tr>
                            <td>contact</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].contact }}</td>
                        </tr>
                        <tr>
                            <td>payment status</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].payment_status }}</td>
                        </tr>
                        <tr>
                            <td>date</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].created_at }}</td>
                        </tr>
                        <tr>
                            <td>Status</td>
                            <td>:</td>
                            <td>
                                {{ this[`get_${store_prefix}`].status }}
                                <span v-if="this[`get_${store_prefix}`].status == 1" class="badge bg-label-success me-1">active</span>
                                <span v-if="this[`get_${store_prefix}`].status == 0" class="badge bg-label-success me-1">deactive</span>
                            </td>
                        </tr>
                        <!-- <tr>
                            <td>created at</td>
                            <td>:</td>
                            <td>{{ new Date(this[`get_${store_prefix}`].created_at).toLocaleString() }}</td>
                        </tr>
                        <tr>
                            <td>udpated at</td>
                            <td>:</td>
                            <td>{{ new Date(this[`get_${store_prefix}`].updated_at).toLocaleString() }}</td>
                        </tr> -->
                    </tbody>
                </table>
                <table class="table mt-5">
                    <thead>
                        <tr>
                            <th style="width: 245px;">Items</th>
                            <th style="width: 145px;" class="text-center">Qty</th>
                            <th class="text-end">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="item in this[`get_${store_prefix}`].products" :key="item.id">
                            <td>{{ item.title }}</td>
                            <td class="text-center">{{ item.price }} * {{ item.qty }}</td>
                            <td class="text-end">{{ item.price * item.qty }}</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr style="border-top: 2px solid gray;">
                            <td colspan="2" class="text-end">
                                <b>Sub Total</b>
                            </td>
                            <td class="text-end">
                                {{ number_format( total_amount ) }}
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-end">
                                <b>Shipping</b>
                            </td>
                            <td class="text-end">
                                {{ number_format( this[`get_${store_prefix}`].shipping ) }}
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-end">
                                <b>Total</b>
                            </td>
                            <td class="text-end">
                                {{ number_format(  shipping +  total_amount )}}
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-end">
                                <b>Paid</b>
                            </td>
                            <td class="text-end">
                                {{ number_format( this[`get_${store_prefix}`].paid )}}
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="text-end">
                                <b>Due</b>
                            </td>
                            <td class="text-end">
                                {{ number_format( shipping + total_amount + this[`get_${store_prefix}`].paid )}}
                            </td>
                        </tr>
                        <tr style="border-top: 2px solid gray;">
                            <td colspan="2" class="text-end">
                                <b>Payable</b>
                            </td>
                            <td class="text-end">
                                {{ number_format( shipping + total_amount + this[`get_${store_prefix}`].paid )}}
                            </td>
                        </tr>
                    </tfoot>
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
        number_format: (number) => new Intl.NumberFormat().format(number),
    },
    computed: {
        ...mapGetters([`get_${store_prefix}`]),
        total_amount: function(){
            return [...this[`get_${store_prefix}`]?.products]?.reduce((total,i)=>(total+=(i.price*i.qty)), 0)
        },
        shipping: function(){
            return this[`get_${store_prefix}`].shipping;
        }
    }
}
</script>

<style>

</style>
