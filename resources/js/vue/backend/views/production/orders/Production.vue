<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>Create</h4>
                <div class="btns">
                    <router-link :to="{ name: `AllProductions` }" class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        Back
                    </router-link>
                </div>
            </div>
            <form @submit.prevent="call_store(`store_production_${store_prefix}`,$event.target)" autocomplete="false">
                <div class="card-body">
                    <div class="row justify-content-center">
                        <div class="col-lg-10">
                            <div class="admin_form form_1">
                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <label for="">Select Product</label>
                                    <ProductModal :select_qty="1"></ProductModal>
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <label for="">Designer</label>
                                    <designer-modal :select_qty="1"></designer-modal>
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <label for="">Print Company</label>
                                    <print-modal :select_qty="1"></print-modal>
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <label for="">Bind Company</label>
                                    <binding-modal :select_qty="1"></binding-modal>
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Paper amount <sub>ream</sub>`"
                                        :name="`paper_amount`"
                                        :type="`number`"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Print Qty <sub>pcs</sub>`"
                                        :name="`print_qty`"
                                        :type="`number`"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <label for="">Production Progress</label>
                                    <select class="form-control form-select" name="status" id="">
                                        <option value="planning">Planning</option>
                                        <option value="processing">Processing</option>
                                        <option value="designing">Designing</option>
                                        <option value="printing">Printing</option>
                                        <option value="binding">Binding</option>
                                        <option value="complete">Complete</option>
                                    </select>
                                </div>

                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <label for="description">Progress description</label>
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
import ProductModal from "../products/components/ManagementModal.vue"
import designerModal from "../designer/components/ManagementModal.vue"
import printModal from "../prints/components/ManagementModal.vue"
import bindingModal from "../bindings/components/ManagementModal.vue"
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;
export default {
    components: { InputField, ProductModal, designerModal, printModal, bindingModal },
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix
        }
    },
    created: function () {},
    methods: {
        ...mapActions([`store_production_${store_prefix}`]),
        call_store: function(name, params=null){
            this[name](params)
        },
    },
};
</script>

<style>
</style>
