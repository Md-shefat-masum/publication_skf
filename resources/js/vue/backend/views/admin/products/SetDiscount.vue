<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>Set Descount</h4>
                <div class="btns">
                    <router-link :to="{ name: `All${route_prefix}` }" class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        Back
                    </router-link>
                </div>
            </div>
            <form @submit.prevent="call_store(`store_discount_${store_prefix}`,$event.target)" class="create_form" autocomplete="false">
                <div class="card-body">
                    <div class="row justify-content-center">
                        <div class="col-lg-10">
                            <div class="admin_form form_1">
                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <label>Select Product</label>
                                    <management-modal :select_qty="1"></management-modal>
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
                                                    <th>Cost</th>
                                                    <th style="width: 3px;">:</th>
                                                    <th>{{ selected.cost }} TK</th>
                                                </tr>
                                                <tr>
                                                    <th>Sales Price</th>
                                                    <th style="width: 3px;">:</th>
                                                    <th>{{ selected.sales_price }} TK</th>
                                                </tr>
                                                <tr>
                                                    <th>Present Discount Price</th>
                                                    <th style="width: 3px;">:</th>
                                                    <th>
                                                        {{ selected.discount_info.discount_price }} tk
                                                         ( -{{ selected.discount_info.discount_percent }} %)
                                                    </th>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Percent Discount`"
                                        :name="`percent_discount`"
                                        :mutator="discount_change"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Flat Discount`"
                                        :name="`flat_discount`"
                                        :mutator="flat_discount_change"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Expire Date`"
                                        :name="`expire_date`"
                                        :type="'date'"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Discount Amount`"
                                        :name="`discount_amount`"
                                        :type="'text'"
                                        :readonly="true"
                                        :styles="'cursor:not-allowed;'"
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
        }
    },
    created: function () {
        this.$watch("selected_items",function(){
            this.selected = this.selected_items[0];
        })
    },
    methods: {
        ...mapActions([`store_discount_${store_prefix}`]),
        call_store: function(name, params=null){
            this[name](params)
        },
        discount_change: function(value){
            console.log(value);
        },
        flat_discount_change: function(value){
            console.log(value);
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
