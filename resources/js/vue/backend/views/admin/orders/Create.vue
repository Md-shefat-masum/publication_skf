<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>Create</h4>
                <div class="btns">
                    <router-link :to="{ name: `BranchOrder` }" class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        Back
                    </router-link>
                </div>
            </div>
            <!-- <form @submit.prevent="call_store(`store_${store_prefix}`,$event.target)" autocomplete="false"> -->
            <div onsubmit="event.preventDefault()">
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="d-flex gap-2">
                                <input @keyup="set_p_search_key($event.target.value)" type="search" placeholder="search" class="form-control">
                                <select class="form-select" @change="set_branch_product_category($event.target.value)">
                                    <option value="">সকল বই</option>
                                    <option v-for="category in all_categories"  :key="category.id" :value="category.id">
                                        {{ category.name }}
                                    </option>
                                </select>
                                <button type="button" class="btn btn-outline-adn"><i class="fa fa-search"></i></button>
                            </div>
                            <div class="row py-3" v-if="products.data && products.data.length">
                                <div class="col-12" v-for="product in products.data" :key="product.id">
                                    <div class="card d-flex flex-row align-items-center border rounded-sm overflow-hidden" style="gap: 5px;" >
                                        <div class="pos_card_image_card">
                                            <img :src="product.thumb_image" style="width: 50px;" alt=""/>
                                            <span @click="add_to_cart({product, qty: product.qty?product.qty+1:1})" class="add_icon">
                                                <i class="fa fa-plus"></i>
                                            </span>
                                        </div>
                                        <div style="padding: 5px;">
                                            <h6 style="flex:1" class="mb-0">{{ product.product_name }}</h6>
                                            <div class="mt-1">
                                                <span v-if="product.discount_info">
                                                    <b>৳ {{ product.discount_info.discount_price.toString().enToBn() }}</b>
                                                    <del>৳ {{ product.sales_price.toString().enToBn() }}</del>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="border border-1 position-sticky top-0 borde-info p-1 rounded-sm mb-2">
                                <table class="table ">
                                    <thead class="position-static">
                                        <tr >
                                            <th class="text-start">Title</th>
                                            <th style="width: 125px;">Price</th>
                                            <th style="width: 125px;">Qty</th>
                                            <th style="width: 125px;">Com %</th>
                                            <th style="width: 125px;">D.Price</th>
                                            <th style="width: 170px;" class="text-end">Amount</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="product in order_carts" :key="product.id">
                                            <td class="text-start">
                                                {{ product.product_name }}
                                                <br>
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
                                    <tfoot>
                                        <tr>
                                            <th colspan="5" class="text-end">total</th>
                                            <th class="text-end">৳ {{ tota_order_price.toFixed(2).toString().enToBn() }}</th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <form action="#" class="mt-3" v-if="order_carts.length">
                                    <div class="mb-2">
                                        <label class="mb-1">Select Customer</label>
                                        <UserManagementModal :id="`customer_id`" :select_qty="1"></UserManagementModal>
                                    </div>
                                    <!-- <div class="mb-2">
                                        <label class="mb-1">Discount %</label>
                                        <input max="100" @keyup="set_admin_order_discount($event)" type="number" min="0" class="form-control"/>
                                    </div> -->
                                    <!-- <div class="mb-2">
                                        <label class="mb-1">Total Amount</label>
                                        <input class="form-control" :value="admin_cart_total" readonly name="" style="cursor: no-drop;"/>
                                    </div> -->
                                    <!-- <div class="mb-2">
                                        <label class="mb-1">Paid Amount</label>
                                        <input @keyup="set_admin_paid_amount($event.target.value)" class="form-control" name=""/>
                                    </div> -->
                                    <!-- <div class="mb-2">
                                        <label class="mb-1">Due Amount</label>
                                        <input class="form-control" :value="admin_due_amount" name="" readonly style="cursor: no-drop;"/>
                                    </div> -->
                                    <div class="d-flex gap-1 flex-wrap">
                                        <button type="button" @click.prevent="store_order"  class="btn btn-outline-info" >
                                            <i class="fa fa-paper-plane"></i>
                                            Create Order
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer text-center">
                    <!--  -->
                    <pagination :data="this.products" :limit="5" :size="'small'" :show-disabled="true" :align="'left'"
                        @pagination-change-page="fetch_branch_product_for_order">
                        <span slot="prev-nav"><i class="fa fa-angle-left"></i> Previous</span>
                        <span slot="next-nav">Next <i class="fa fa-angle-right"></i></span>
                    </pagination>
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
        }
    },
    created: async function () {
        await this.fetch_branch_product_for_order();
        await this.fetch_category();
        this.$watch('p_search_key',(n,o)=>{
            this.fetch_branch_product_for_order();
        })
        this.$watch('discount',(n,o)=>{
            // console.log(n, o);
        })
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
    }
};
</script>

<style>
</style>
