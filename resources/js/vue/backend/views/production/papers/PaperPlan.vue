<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header no_print">
                <h4>
                    Paper Plan
                </h4>
                <div class="btns">
                    <router-link :to="{name:`All${route_prefix}`}" class="btn rounded-pill btn-outline-warning">
                        <i class="fa fa-arrow-left me-5px"></i>
                        Back
                    </router-link>
                </div>
            </div>
            <div class="card-body admin_form pb-0">
                <div class="admin_form form_1 no_print">
                    <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                        <label>Product</label>
                        <div id="product_id">
                            <product-management-modal :select_qty="1"></product-management-modal>
                        </div>
                    </div>
                    <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                        <label>Supplier</label>
                        <div id="supplier_id">
                            <management-modal :select_qty="100"></management-modal>
                        </div>
                    </div>
                    <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                        <div class="field_wrapper">
                            <date-field :label="`Date`" :name="`date`" :keyup_handler="get_date" />
                        </div>
                    </div>
                    <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                        <label>Work Type</label>
                        <div>
                            <input type="text" v-model="work_type" name="work_type" class="form-control">
                        </div>
                    </div>
                    <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                        <label>Forma</label>
                        <div>
                            <input type="text" v-model="forma" name="forma" class="form-control">
                        </div>
                    </div>
                    <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                        <label>Qty</label>
                        <div>
                            <input type="text" v-model="qty" name="qty" class="form-control">
                        </div>
                    </div>
                </div>

                <div class="report_body mt-4">
                    <table class="mb-4 ">
                        <tbody>
                            <tr>
                                <td class="text-start font_20 font_bn">তারিখ</td>
                                <td class="px-4">:</td>
                                <td class="text-start">
                                    <span v-if="date">
                                        {{ formatDate(date,'DD MMMM YYYY') }}
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-start font_20 font_bn">কাজের ধরণ</td>
                                <td class="px-4">:</td>
                                <td class="text-start">{{ work_type }}</td>
                            </tr>
                            <tr>
                                <td class="text-start font_20 font_bn">কাজের নাম</td>
                                <td class="px-4">:</td>
                                <td class="text-start">
                                    <span v-if="get_production_product_selected?.length">
                                        {{ get_production_product_selected[0].product_name }}
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-start font_20 font_bn">ফর্মা</td>
                                <td class="px-4">:</td>
                                <td class="text-start">{{ forma }}</td>
                            </tr>
                            <tr>
                                <td class="text-start font_20 font_bn">পরিমান</td>
                                <td class="px-4">:</td>
                                <td class="text-start">{{ qty }}</td>
                            </tr>
                        </tbody>
                    </table>
                    <table class="table">
                        <thead style="background-color: yellow;" class="font_bn">
                            <tr>
                                <th class="font_20 font-normal">ক্রম</th>
                                <th class="text-start font_20 font-normal">প্রতিষ্ঠানের নাম</th>
                                <th class="font_20 font-normal">মোবাইল নম্বর</th>
                                <th class="font_20 font-normal">কাগজের ধরন</th>
                                <th class="font_20 font-normal">প্রতি রিমের মূল্য</th>
                                <th class="font_20 font-normal">মোট কাগজের পরিমাণ</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr v-for="(sup, index) in get_production_paper_selected" :key="sup.id">
                                <td>
                                    {{ index+1 }}
                                </td>
                                <td class="text-start">
                                    {{ sup.supplier_name }}
                                </td>
                                <td>
                                    <span v-if="sup.mobile_numbers.length">
                                        {{ sup.mobile_numbers[0].mobile_number }}
                                    </span>
                                </td>
                                <td>
                                    {{ sup.paper_type }}
                                </td>
                                <td>
                                    {{ sup.each_ream_price }}
                                </td>
                                <td>
                                    {{ sup.paper_amount }}
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer text-center py-1 no_print">
                <button @click="print" class="btn btn-sm btn-outline-info">
                    <i class="fa fa-print"></i>
                    Print
                </button>
            </div>
        </div>

    </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex';
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
import ManagementModal from '../papers/components/ManagementModal.vue';
import ProductManagementModal from '../products/components/ManagementModal.vue';
const {route_prefix, store_prefix} = PageSetup;
export default {
    components: { ManagementModal, ProductManagementModal },
    created: function(){

    },
    data: function(){
        return {
            data: [],
            object_data: [],
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
            date: '',
            work_type: '',
            forma: '',
            qty: '',
        }
    },
    methods: {
        ...mapActions([
            `bulk_import_${store_prefix}`
        ]),
        load_csv: function(){
            const input = event.target.files[0];
            const reader = new FileReader();
            let that = this;
            reader.onload = function (e) {
                const text = e.target.result;
                that.data = text.csvToArray();
                // console.log(that.data);
                that.make_object_data();
            };

            reader.readAsText(input);
        },
        make_object_data: function(){
            this.object_data = [];
            let keys = this.data[0];
            for (let index = 1; index < this.data.length; index++) {
                let temp = {};
                const arr = this.data[index];
                for (let j = 0; j < arr.length; j++) {
                    const item = arr[j];
                    temp[keys[j]] = item;
                }
                this.object_data.push(temp);
            }
            // console.log(this.object_data);
        },
        call_store: function(name, params=null){
            this[name](params)
        },
        get_date: function(value){
            console.log(value);
            this.date = value;
        },
        print: function(){
            window.print();
        }
    },
    computed: {
        ...mapGetters([
            'get_production_product_selected',
            'get_production_paper_selected',
        ])
    }
}
</script>

<style>

</style>
