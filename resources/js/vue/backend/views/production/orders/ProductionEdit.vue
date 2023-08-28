<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>Edit</h4>
                <div class="btns">
                    <router-link :to="{ name: `AllProductions` }" class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        Back
                    </router-link>
                </div>
            </div>
            <form @submit.prevent="update_production_production_order($event.target)" autocomplete="false">
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
                                <!-- <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Paper amount <sub>ream</sub>`"
                                        :name="`paper_amount`"
                                        :type="`number`"
                                    />
                                </div> -->
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Print Qty <sub>pcs</sub>`"
                                        :name="`print_qty`"
                                        :type="`number`"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <label for="">Production Progress</label>
                                    <select class="form-control form-select" name="status" id="production_status">
                                        <option value="planning">Planning</option>
                                        <option value="processing">Processing</option>
                                        <option value="designing">Designing</option>
                                        <option value="printing">Printing</option>
                                        <option value="binding">Binding</option>
                                        <option value="complete">Complete</option>
                                    </select>
                                </div>

                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <label>Paper Supplier and Paper amount</label>
                                    <div v-if="data" class="production_supplier_selection_table_body">
                                        <div class="production_supplier_selection_table">
                                            <div class="supplier">
                                                <h5>Supplier</h5>
                                            </div>
                                            <div class="stock text-center">
                                                <h5>Paper amt (rm)</h5>
                                            </div>
                                            <div class="action">
                                                <h5>action </h5>
                                            </div>
                                        </div>

                                        <div v-for="(i, index) in suppliers" :key="index" class="production_supplier_selection_table">
                                            <div class="supplier">
                                                <select :name="`paper_supplier[${index}][supplier_paper_id]`" id="" class="form-select">

                                                    <template v-for="j in get_production_papers.data">
                                                        <option v-if="data['paper_suppliers'][index] && data['paper_suppliers'][index].supplier_paper_id == j.id" selected :key="j.id" :value="j.id">
                                                            {{ j.supplier_name }} - {{ j.stock }} rm
                                                        </option>
                                                        <option v-else :key="j.id" :value="j.id">
                                                            {{ j.supplier_name }} - {{ j.stock }} rm
                                                        </option>
                                                    </template>

                                                </select>
                                            </div>
                                            <div class="stock">
                                                <input :name="`paper_supplier[${index}][amount]`" v-if="data['paper_suppliers'][index]" :value="data['paper_suppliers'][index].amount" type="text" class="form-control">
                                                <input :name="`paper_supplier[${index}][amount]`" v-else type="text" class="form-control">
                                            </div>
                                            <div class="action">
                                                <a href="" v-if="suppliers.length > 1" @click.prevent="delete_suppliers(index)" class="btn btn-sm btn-outline-danger"><i class="fa fa-trash"></i></a>
                                                <a href="" @click.prevent="add_suppliers(i+1)" class="btn btn-sm btn-outline-info"><i class="fa fa-plus"></i></a>
                                            </div>
                                        </div>

                                        <!-- <div v-for="(i, index) in suppliers" :key="i" class="production_supplier_selection_table">
                                            <div class="supplier">
                                                <select :name="`paper_supplier[${index}][supplier_paper_id]`" id="" class="form-select">
                                                    <option v-for="(j,jindex) in get_production_papers.data" :key="jindex" :value="j.id">
                                                        {{ j.supplier_name }} - {{ j.stock }} rm
                                                    </option>
                                                </select>
                                            </div>
                                            <div class="stock">
                                                <input :name="`paper_supplier[${index}][amount]`" value="0" type="text" class="form-control">
                                            </div>
                                            <div class="action">
                                                <a href="" v-if="suppliers.length > 1" @click.prevent="delete_suppliers(index)" class="btn btn-sm btn-outline-danger"><i class="fa fa-trash"></i></a>
                                                <a href="" @click.prevent="add_suppliers(i+1)" class="btn btn-sm btn-outline-info"><i class="fa fa-plus"></i></a>
                                            </div>
                                        </div> -->
                                    </div>
                                </div>

                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <label for="production_description">Progress description</label>
                                    <textarea class="form-control" id="production_description" name="description"></textarea>
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
import { mapActions, mapGetters, mapMutations } from 'vuex'
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
            route_prefix,
            suppliers: [1],
        }
    },
    created: function () {
        this.fetch_production({id: this.$route.params.id, render_to_form:true});
        this[`set_production_paper_paginate`](1000);
        this.$watch('data',function(v){
            this.suppliers = v.paper_suppliers.map((i,index)=>index+1);
        })
    },
    methods: {
        ...mapActions([
            `update_production_production_order`,
            `store_production_${store_prefix}`,
            `fetch_production`,
            `fetch_production_papers`,
        ]),
        ...mapMutations([
            `set_production_paper_paginate`,
        ]),
        call_store: function(name, params=null){
            this[name](params)
        },
        add_suppliers: function(i){
            this.suppliers.push(i);
        },
        delete_suppliers: function(index){
            this.suppliers.splice(index,1);
        },
    },
    computed: {
        ...mapGetters(['get_production_papers']),
        ...mapGetters({
            data: `get_${store_prefix}`,
        }),
    }
};
</script>

<style>
</style>
