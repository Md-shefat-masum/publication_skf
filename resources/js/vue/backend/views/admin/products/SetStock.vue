<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>Set Stock</h4>
                <div class="btns">
                    <router-link :to="{ name: `All${route_prefix}` }" class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        Back
                    </router-link>
                </div>
            </div>
            <form @submit.prevent="call_store(`store_stock_${store_prefix}`,$event.target)" class="create_form" autocomplete="false">
                <div class="card-body">
                    <div class="row justify-content-center">
                        <div class="col-lg-10">
                            <div class="admin_form form_1">
                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <label >Select Product</label>
                                    <management-modal :id="'product_id'" :select_qty="1"></management-modal>
                                </div>
                                <div v-if="Object.keys(selected).length" class="form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <div>
                                        <!-- {{ selected }} -->
                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <th style="width: 225px;">Product Name</th>
                                                    <th style="width: 3px;">:</th>
                                                    <th>{{ selected.product_name }}</th>
                                                </tr>
                                                <tr>
                                                    <th>Total Stock</th>
                                                    <th style="width: 3px;">:</th>
                                                    <th>{{ selected.total_stock }} PCS</th>
                                                </tr>
                                                <tr>
                                                    <th>Total Sold</th>
                                                    <th style="width: 3px;">:</th>
                                                    <th>{{ selected.total_sales }} PCS</th>
                                                </tr>
                                                <tr>
                                                    <th>Present Stock</th>
                                                    <th style="width: 3px;">:</th>
                                                    <th>{{ selected.final_stock }} PCS</th>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div v-if="Object.keys(selected).length" class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`New Stock`"
                                        :name="`new_stock`"
                                        :mutator="stock_change"
                                    />
                                </div>
                                <div v-if="Object.keys(selected).length" class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <label>Type</label>
                                    <select name="stock_type" class="form-select">
                                        <option>production</option>
                                        <option>sales</option>
                                        <option>return</option>
                                    </select>
                                </div>
                                <div v-if="Object.keys(selected).length" class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Stock Alert Qty`"
                                        :name="`stock_alert_qty`"
                                        :value="selected.stock_alert_qty"
                                    />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer text-center">
                    <button type="submit" class="btn btn-outline-info" >
                        <i class="fa fa-upload"></i>
                        Submit
                    </button>
                </div>
            </form>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
import InputField from '../../components/InputField.vue'
import ManagementModal from './components/ManagementModal.vue';
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;

export default {
    components: { InputField, ManagementModal },
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
            selected: {},
            discount_amount: 0,
        }
    },
    created: function () {
        this.$watch(`selected_items`,function(){
            this.selected = this.selected_items[0] || {};
        })
    },
    methods: {
        ...mapActions([`store_stock_${store_prefix}`]),
        call_store: function(name, params=null){
            this[name](params)
        },
        stock_change: function({value, name, event}){
            if(!value){
                value = 0;
            }
            // if(value < 0 ){
            //     event.target.value = 0;
            // }

            console.log({value, name, event});

        },
    },
    computed: {
        ...mapGetters({
            selected_items: `get_${store_prefix}_selected`
        }),
    }
};
</script>

<style>
</style>
