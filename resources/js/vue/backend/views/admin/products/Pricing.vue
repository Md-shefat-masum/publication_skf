<template>
    <div class="container">
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
            <form @submit.prevent="admin_store_production_cost($event.target)" class="create_form" autocomplete="false">
                <div class="card-body">
                    <div class="row justify-content-center">
                        <div class="col-lg-10">
                            <div class="admin_form form_1">
                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <label for="" id="product_id">Select Product</label>
                                    <ProductModal :select_qty="1"></ProductModal>
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Design cost`"
                                        :name="`design_cost`"
                                        :type="`number`"
                                        :mutator="changed_price"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Printing cost`"
                                        :name="`printing_cost`"
                                        :type="`number`"
                                        :mutator="changed_price"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Binding Cost`"
                                        :name="`binding_cost`"
                                        :type="`number`"
                                        :mutator="changed_price"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Other Cost`"
                                        :name="`other_cost`"
                                        :type="`number`"
                                        :mutator="changed_price"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <div class="field_wrapper">
                                        <label for="final_cost" class="text-capitalize d-block">
                                            <span class="mb-2 d-block">Final Cost</span>
                                            <input :value="cost.final_cost" readonly type="number" id="final_cost" name="final_cost" class="form-control" />
                                        </label>
                                    </div>
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Sales price`"
                                        :name="`sales_price`"
                                        :type="`number`"
                                    />
                                </div>

                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <label for="description">Description</label>
                                    <textarea class="form-control" id="description" name="description"></textarea>
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
import { mapActions } from 'vuex'
import InputField from '../../components/InputField.vue'
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;
import ProductModal from "../products/components/ManagementModal.vue"

export default {
    components: { InputField, ProductModal },
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
            cost: {
                design_cost: 0,
                printing_cost: 0,
                binding_cost: 0,
                other_cost: 0,
                final_cost: 0,
                sales_price: 0,
            },
        }
    },
    created: function () {},
    watch: {
        cost: {
            handler: function(newv){
                console.log(newv);
                const { binding_cost, design_cost, other_cost, printing_cost, final_cost, sales_price} = this.cost;
                this.cost.final_cost =  binding_cost+ design_cost+ other_cost+ printing_cost;
            },
            deep: true,
        }
    },
    methods: {
        ...mapActions([`admin_store_production_cost`]),
        call_store: function(name, params=null){
            this[name](params)
        },
        changed_price: function({value, name, event}){
            this['cost'][name] = +value;
            // console.log(value, name, event);
        }
    },
};
</script>

<style>
</style>
