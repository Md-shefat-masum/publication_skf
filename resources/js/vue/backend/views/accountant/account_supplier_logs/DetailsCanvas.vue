<template>
    <div class="canvas_backdrop" :class="{active:this[`get_${store_prefix}`]}" @click="$event.target.classList.contains('canvas_backdrop') && call_store(`set_${store_prefix}`,null)">
        <div class="content right" v-if="this[`get_${store_prefix}`]">
            <div class="content_header">
                <h3 class="offcanvas-title">Details</h3>
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
                            <td>Name</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].name }}</td>
                        </tr>
                        <tr>
                            <td>Amount</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].amount }}</td>
                        </tr>

                        <tr v-if="this[`get_${store_prefix}`].payment_type == 'payment'">
                            <td>Payment Account</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`]?.ac_log?.account.name }}</td>
                        </tr>
                        <tr v-if="this[`get_${store_prefix}`].payment_type == 'payment'">
                            <td>Payment Number</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`]?.ac_log?.account_number.value }}</td>
                        </tr>
                        <tr v-if="this[`get_${store_prefix}`].payment_type == 'payment'">
                            <td>Transaction ID</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`]?.ac_log.trx_id }}</td>
                        </tr>

                        <tr>
                            <td>Description</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].description }}</td>
                        </tr>

                        <tr v-if="this[`get_${store_prefix}`].attachment">
                            <td>Attachment</td>
                            <td>:</td>
                            <td>
                                <a target="_blank" :href="this[`get_${store_prefix}`].attachment">
                                    show
                                </a>
                            </td>
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
