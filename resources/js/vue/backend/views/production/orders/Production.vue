<template>
    <div class="container-fluid">
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
            <form @submit.prevent="call_store(`store_production_production_order`,{target: $event.target, categories: categories})" autocomplete="false">
                <div class="card-body">
                    <div class="row justify-content-center">
                        <div class="col-12">
                            <div class="admin_form form_1">
                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <label for="">Select Product</label>
                                    <ProductModal :select_qty="1"></ProductModal>
                                </div>

                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Order no`"
                                        :name="`no`"
                                        :type="`number`"
                                    />
                                </div>

                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Work Type (বই, ক্যালেন্ডার)`"
                                        :name="`work_type`"
                                        :type="`text`"
                                    />
                                </div>

                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Forma Amount`"
                                        :name="`forma_amount`"
                                        :type="`number`"
                                    />
                                </div>

                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <div class="field_wrapper">
                                        <date-field :label="`Plan Date`" :name="`date`" />
                                    </div>
                                </div>

                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <date-field :label="`Order Date`" :name="`order_date`" />

                                </div>

                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <date-field :label="`Delivery Date`" :name="`delivery_date`" />
                                </div>

                                <div class="full_width text-nowrap mb-4">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr class="font_bn font_20">
                                                <th class="text-start font_20">বিষয়</th>
                                                <th class="font_20">উৎপাদনকারী প্রতিষ্ঠান সমূহের নাম ও ঠিকানা</th>
                                                <th class="font_20">পরিমান</th>
                                                <th class="font_20">একক মূল্য</th>
                                                <th class="font_20">একক</th>
                                                <th class="font_20">খরচ</th>
                                                <th class="font_20">টোটাল</th>
                                                <th class="font_20">বিল নাম্বার</th>
                                                <th class="font_20">মন্তব্য</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr v-for="(i,index) in categories" :key="index" class="text-nowrap">
                                                <td class="text-start font_bn font_20">{{ i.title }}</td>
                                                <td>
                                                    <div class="position-relative custom_scroll" @click="i.show_suppliers = i.show_suppliers?0:1">

                                                        <textarea type="text" v-model="i.selected_name" class="form-control form-control-sm"></textarea>

                                                        <ul v-if="i.show_suppliers == 1" class="supplier_list_dropdown">

                                                            <li class="text-end" @click.stop="i.show_suppliers = i.show_suppliers?0:1">
                                                                <i class="fa fa-close"></i>
                                                            </li>

                                                            <li @click.stop="i.selected_name = s.name; i.selected_id = s.id;"
                                                                v-for="s in i.suppliers" :key="s.id">
                                                                {{ s.name }}
                                                            </li>
                                                        </ul>

                                                    </div>
                                                </td>
                                                <td>
                                                    <input type="number" v-model="i.amount" style="width:100px;" class="form-control form-control-sm">
                                                </td>
                                                <td>
                                                    <input type="number" v-model="i.price" style="width:100px;" class="form-control form-control-sm">
                                                </td>
                                                <td>
                                                    <input type="text" v-model="i.unit" style="width:100px;" class="form-control form-control-sm">
                                                </td>
                                                <td>
                                                    <input type="number" v-model="i.cost" style="width:100px;" class="form-control form-control-sm">
                                                </td>
                                                <td>
                                                    {{ calc_unit_total(i) }}
                                                    <!-- <input type="number" v-model="i.cost" style="width:100px;" class="form-control form-control-sm"> -->
                                                </td>
                                                <td>
                                                    <input type="text" v-model="i.order_number" style="width:100px;" class="form-control form-control-sm">
                                                </td>
                                                <td>
                                                    <textarea type="text" v-model="i.comment" style="width: 150px;" class="form-control form-control-sm"></textarea>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td colspan="6" class="text-end font_bn font_20">
                                                    মোট সম্ভাব্য ব্যয়
                                                </td>
                                                <td class="text-center">
                                                    {{ total_cost }}
                                                </td>
                                                <td class="text-end font_bn font_20">

                                                </td>
                                                <td>

                                                </td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>

                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <label>Print Qty <sub>pcs</sub></label>
                                    <div>
                                        <input type="number" name="print_qty"
                                            v-model="printing_qty"
                                            @keyup="each_copy_price = total_cost / printing_qty;each_copy_cost = total_cost / printing_qty;"
                                            class="form-control">
                                    </div>
                                </div>

                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <label>প্রতি কপির খরচ</label>
                                    <div>
                                        {{ each_copy_cost }}
                                    </div>
                                </div>

                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <label>প্রতি কপির মূল্য</label>
                                    <div>
                                        <input type="number" step=".02" name="each_copy_price" v-model="each_copy_price" class="form-control">
                                    </div>
                                </div>

                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <label for="">Production Progress</label>
                                    <select class="form-control form-select" name="status" id="">
                                        <option value="planning">Planning</option>
                                        <option value="assign">Assign</option>
                                        <option value="handover">Handover</option>
                                        <option value="editing">Editing</option>
                                        <option value="first_proof">First Proof</option>
                                        <option value="second_proof">Second Proof</option>
                                        <option value="designing">Designing</option>
                                        <option value="plate">Plate</option>
                                        <option value="printing">Printing</option>
                                        <option value="binding">Binding</option>
                                        <!-- <option value="complete">Complete</option> -->
                                    </select>
                                </div>

                                <div class="full_width">
                                    <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                        <label>Paper Supplier and Paper amount</label>
                                        <div class="production_supplier_selection_table_body">
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
                                            <div v-for="(i, index) in suppliers" :key="i" class="production_supplier_selection_table">
                                                <div class="supplier">
                                                    <select :name="`paper_supplier[${index}][supplier_paper_id]`" id="" class="form-select">
                                                        <option v-for="i in get_production_papers.data" :key="i.id" :value="i.id">
                                                            {{ i.supplier_name }} - {{ i.stock }} rm
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
                                            </div>
                                        </div>
                                    </div>
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
import { mapActions, mapGetters, mapMutations } from 'vuex'
import InputField from '../../components/InputField.vue'
import ProductModal from "../products/components/ManagementModal.vue"
import designerModal from "../designer/components/ManagementModal.vue"
import printModal from "../prints/components/ManagementModal.vue"
import bindingModal from "../bindings/components/ManagementModal.vue"
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
import PaperSupplierManagementModal from '../papers/components/ManagementModal.vue';
const {route_prefix, store_prefix} = PageSetup;
export default {
    components: { InputField, ProductModal, PaperSupplierManagementModal, designerModal, printModal, bindingModal },
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
            suppliers: [1],
            categories: [],
            printing_qty: 0,
            each_copy_price: 0,
            each_copy_cost: 0,
        }
    },
    created: async function () {
        this[`set_clear_selected_production_products`](false);
        this[`set_clear_selected_production_designers`](false);
        this[`set_clear_selected_production_prints`](false);
        this[`set_clear_selected_production_bindings`](false);
        this[`set_production_paper_paginate`](1000);
        await this.get_categories();
    },
    methods: {
        ...mapActions([
            `store_production_production_order`,
            `fetch_production_papers`,
        ]),
        ...mapMutations([
            `set_clear_selected_production_products`,
            `set_clear_selected_production_designers`,
            `set_clear_selected_production_prints`,
            `set_clear_selected_production_bindings`,
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
        get_categories: function(){
            let url = `/production/supplier-categories/all-with-suppliers`;
            axios.get(url).then(res => {
                this.categories = res.data;
            });
        },
        calc_unit_total: function(item){
            let sum = ( (+item.amount || 0) * (+item.price || 0) ) + (+item.cost || 0);
            return sum;
        }
    },
    computed: {

        ...mapGetters(['get_production_papers']),
        total_cost: function(){
            return this.categories.reduce((t,i) => t +=  (+i.price * (+i.amount || 0) + (+i.cost || 0)), 0);
        }
    }
};
</script>

<style>
</style>
