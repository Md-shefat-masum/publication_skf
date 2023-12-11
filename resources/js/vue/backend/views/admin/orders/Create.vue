<template>
    <div class="container-fluid">
        <div class="card list_card">
            <div class="card-header">
                <h4>Create</h4>
                <div class="btns">
                    <router-link :to="{ name: `BranchOrder` }" class="btn d-flex rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        Back
                    </router-link>
                </div>
            </div>
            <!-- <form @submit.prevent="call_store(`store_${store_prefix}`,$event.target)" autocomplete="false"> -->
            <div onsubmit="event.preventDefault()">
                <div class="card-body">
                    <div class="mb-2">
                        <div>
                            <input v-model="search_key" @keyup="set_p_search_key($event.target.value)" type="search" placeholder="search" class="form-control">
                        </div>
                        <div class="py-3 order_search_result custom_scroll"  style="height: 200px;overflow-y: auto;"  v-if="search_key.length && products.data && products.data.length">
                            <div class="" v-for="product in products.data" :key="product.id">
                                <div @click="add_to_cart({product, qty: product.qty?product.qty+1:1})" class="card d-flex cursor-pointer flex-row align-items-center border rounded-sm overflow-hidden" style="gap: 5px;" >
                                    <div class="pos_card_image_card">
                                        <img :src="product.thumb_image" style="width: 50px;" alt=""/>
                                        <span class="add_icon">
                                            <i class="fa fa-plus"></i>
                                        </span>
                                    </div>
                                    <div style="padding: 5px;">
                                        <h6 style="flex:1" class="mb-0">{{ product.product_name }}</h6>
                                        <h6 style="flex:1" class="mb-0">{{ product.product_name_english }}</h6>
                                        <div class="mt-1">
                                            <span v-if="product.discount_info && product.discount_info.discount_price">
                                                <b>৳ {{ product.discount_info.discount_price.toString().enToBn() }}</b>
                                                <del>৳ {{ product.sales_price.toString().enToBn() }}</del>
                                            </span>
                                            <span v-else>
                                                <b>৳ {{ product.sales_price.toString().enToBn() }}</b>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="order_at_a_glance">
                        <div class="products_list custom_scroll">
                            <div class="table">
                                <div class="border border-1 position-sticky top-0 borde-info p-1 rounded-sm mb-2">
                                    <table class="table ">
                                        <thead class="position-static" style="position: sticky; bottom: 0;">
                                            <tr>
                                                <th style="width: 10px;">SL</th>
                                                <th class="text-start">Title</th>
                                                <th style="width: 125px;">Price</th>
                                                <th style="width: 125px;">Qty</th>
                                                <th style="width: 125px;">Com %</th>
                                                <th style="width: 125px;">D.Price</th>
                                                <th style="width: 200px;" class="text-end">Amount</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr v-for="(product, index) in order_carts" :key="product.id">
                                                <td>{{ index+1 }}</td>
                                                <td class="text-start">
                                                    {{ product.product_name }} <br>
                                                    <!-- <br>
                                                    <div>
                                                        ৳ {{ product.current_price.toString().enToBn() }}
                                                    </div>
                                                    <br> -->
                                                    <a href="#" @click.prevent="remove_cart({product})" class="text-danger">delete</a>
                                                </td>
                                                <td>
                                                    {{ product.product.sales_price.toString().enToBn() }}
                                                </td>
                                                <td class="text-center">
                                                    <input type="number" min="0"
                                                        @change="add_to_cart({product,qty: $event.target.value})"
                                                        @keyup="add_to_cart({product,qty: $event.target.value})"
                                                        :value="product.qty" style="width: 70px;" class="form-control">
                                                </td>
                                                <td class="text-center">
                                                    <input type="number" min="0"
                                                        @keyup="add_to_cart({product,qty: product.qty,commission: $event.target.value})"
                                                        :value="product.discount_percent || 0"
                                                        style="width: 70px;" class="form-control">
                                                </td>
                                                <td>
                                                    {{ product.current_price.toFixed(2).toString().enToBn() }}
                                                </td>
                                                <td class="text-end">
                                                    ৳ {{ product.total_price.toFixed(2).toString().enToBn() }}
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot style="position: sticky; bottom: 0;">
                                            <tr>
                                                <th colspan="6" class="text-end">total</th>
                                                <th class="text-end font_20">৳ {{ tota_order_price.toFixed(2).toString().enToBn() }}</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="total p-1 border border-1">
                            <form action="#" class="mt-3" v-if="order_carts.length">
                                <div class="mb-2 d-flex gap-2 justify-content-end">
                                    <label for="delivery_charge">Sub Total</label>
                                    <div class="form-control text-end font_20" style="width: 180px;">
                                        ৳ {{ tota_order_price.toFixed(2).toString().enToBn() }}
                                    </div>
                                </div>

                                <div class="mb-2 d-flex gap-2 justify-content-end">
                                    <label for="delivery_charge">Delivery Charge</label>
                                    <input type="number" v-model="shipping_charge" step=".01" name="delivery_charge" id="delivery_charge" class="form-control text-end font_20" style="width: 180px">
                                </div>
                                <!-- <div  class="mb-2 d-flex gap-2 justify-content-end">
                                    <label for="discount">Discount on product</label>
                                    <input type="number" readonly v-model="discount_on_product" step=".01" name="discount" id="discount" class="form-control text-end font_20" style="width: 180px">
                                </div> -->

                                <div class="mb-2 d-flex gap-2 justify-content-end">
                                    <label for="delivery_charge">Total</label>
                                    <div class="form-control text-end font_20" style="width: 180px">
                                        ৳ {{ (+tota_order_price + +shipping_charge).toFixed(2).toString().enToBn() }}
                                    </div>
                                </div>

                                <div class="mb-2 d-flex gap-2 justify-content-end">
                                    <label for="discount">Discount on total %</label>
                                    <input type="number" v-model="total_discount_percent" step=".01" name="discount" id="discount" class="form-control text-end font_20" style="width: 180px">
                                </div>

                                <div class="mb-2 d-flex gap-2 justify-content-end">
                                    <label for="delivery_charge">Total Payable</label>
                                    <div class="form-control text-end font_20" style="width: 180px">
                                        ৳ {{ (+tota_order_price + +shipping_charge - +total_discount).toFixed(2).enToBn() }}
                                    </div>
                                </div>

                                <div class="mb-2 d-flex gap-2 justify-content-end">
                                    <label for="total_paid">Total Paid</label>
                                    <input type="number" v-model="total_paid" step=".01" name="total_paid" id="total_paid" class="form-control text-end font_20" style="width: 180px">
                                </div>
                                <div class="mb-2 d-flex gap-2 justify-content-end">
                                    <label for="total_paid">Due</label>
                                    <div
                                    :class="{'bg-danger':total_due<0, 'bg-success': total_due ==0, 'bg-warning': total_due > 0}"
                                    class="form-control text-black text-end font_20" style="width: 180px">
                                        ৳ {{ total_due.toFixed(2).enToBn() }}
                                    </div>
                                </div>

                                <div class="mb-2">
                                    <label class="me-2" id="cash">
                                        <input type="radio" v-model="account_id" name="cash" id="cash" value="1">
                                        Cash
                                    </label>
                                    <label class="me-2" id="bank">
                                        <input type="radio" v-model="account_id" name="bank" id="bank" value="2">
                                        Bank
                                    </label>
                                </div>

                                <div class="mb-2">
                                    <label class="mb-1">Select Customer</label>
                                    <UserManagementModal :id="`customer_id`" :select_qty="1"></UserManagementModal>
                                </div>

                                <div class="d-flex gap-1 flex-wrap">
                                    <button type="button" @click.prevent="store_order({shipping_charge, total_discount, total_paid, account_id})"  class="btn btn-outline-info" >
                                        <i class="fa fa-paper-plane"></i>
                                        Create Order
                                    </button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
                <div class="card-footer text-center">

                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations, mapState } from 'vuex'
import InputField from '../../components/InputField.vue'
import UserManagementModal from "../../users/components/UserManagementModal.vue"
/** store and route prefix for export object use */
import PageSetup from './PageSetup';

const {route_prefix, store_prefix} = PageSetup;

export default {
    components: { InputField, UserManagementModal},
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
            shipping_charge: 0,
            total_discount: 0,
            discount_on_product: 0,
            total_paid: 0,
            total_discount_percent: 0,
            search_key: '',
            account_id: 1,
        }
    },
    created: async function () {
        document.querySelector('html').classList.add('nav-hide');
        this.clear_cart();
        await this.fetch_branch_product_for_order();
        await this.fetch_category();
        this.$watch('p_search_key',(n,o)=>{
            this.fetch_branch_product_for_order();
        })
        this.$watch('total_discount_percent',(n,o)=>{
            let total_payable_amout = this.tota_order_price + this.shipping_charge;
            let discount_amount = total_payable_amout * n / 100;
            this.total_discount = discount_amount;
        })
        this.$watch('order_carts',(n,o)=>{
            // console.log(n);
            this.discount_on_product = n.reduce((total,i)=>total+=((i.sales_price-i.current_price)*i.qty),0);
        })
    },
    watch: {
        "tota_order_price": {
            handler: function(v){
                if(v <= 10000){
                    this.shipping_charge = 100;
                }else{
                    let mod_price = ((v - 10000 )/ 5000) * 50;
                    this.shipping_charge = 100 + mod_price;
                }
            }
        }
    },
    methods: {
        ...mapActions([
            `store_${store_prefix}`,
            `fetch_branch_product_for_order`,
        ]),
        ...mapActions({
            add_to_cart: 'admin_oder_cart_add',
            remove_cart: "remove_product_from_cart",
            store_order: "store_admin_order",
            fetch_category: "fetch_category_all_json",
            clear_cart: "clear_cart",
        }),
        ...mapMutations({
            set_p_search_key: "set_branch_p_search_key",
            set_branch_product_category: "set_branch_product_category",
            set_admin_order_discount: "set_admin_order_discount",
            set_admin_paid_amount: "set_admin_paid_amount",
        }),
        call_store: function(name, params=null){
            this[name](params)
        },
        bn_price: function(price){
            return price.toString().enToBn();
        }
    },
    computed: {
        ...mapGetters({
            'products': "get_branch_product_for_order",
            'p_search_key': "get_branch_p_search_key",
            "order_carts": "get_admin_oder_cart",
            "tota_order_price": "get_admin_oder_cart_total",
            "all_categories": "get_category_all_json",
            "discount": "get_admin_order_discount",
            "admin_cart_total": "get_admin_cart_total",
            "admin_due_amount": "get_admin_due_amount",
        }),

        total_due: function(){
            return +this.tota_order_price + +this.shipping_charge - +this.total_discount - +this.total_paid;
        }
    }
};
</script>

<style>
</style>
