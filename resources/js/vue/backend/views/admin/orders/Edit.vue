<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>Edit</h4>
                <div class="btns">
                    <a href="" @click.prevent="call_store(`set_${store_prefix}`,null), $router.push({ name: `BranchOrder` })"  class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        <span >
                            Back
                        </span>
                    </a>
                </div>
            </div>
            <!-- <form @submit.prevent="call_store(`update_${store_prefix}`,$event.target)" autocomplete="false"> -->
            <div onsubmit="event.preventDefault()">
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="d-flex gap-2">
                                <input @keyup="set_p_search_key($event.target.value)" type="search" placeholder="search" class="form-control">
                                <button type="button" class="btn btn-outline-adn"><i class="fa fa-search"></i></button>
                            </div>
                            <div class="row py-3" v-if="products.data && products.data.length">
                                <div class="col-lg-3" v-for="product in products.data" :key="product.id">
                                    <div class="card h-100 d-flex flex-column justify-between" >
                                        <div class="pos_card_image_card">
                                            <img :src="product.thumb_image" class="img-fluid" alt=""/>
                                            <span @click="add_to_cart({product})" class="add_icon">
                                                <i class="fa fa-plus"></i>
                                            </span>
                                        </div>
                                        <div class="mt-1">
                                            <span v-if="product.discount_info && product.discount_info.discount_price">
                                                <b>৳ {{ product.discount_info.discount_price.toString().enToBn() }}</b>
                                                <del>৳ {{ product.sales_price.toString().enToBn() }}</del>
                                            </span>
                                            <span v-else>
                                                <b>৳ {{ product.sales_price.toString().enToBn() }}</b>
                                            </span>
                                        </div>
                                        <h6 style="flex:1" class="mt-2 mb-0">{{ product.product_name }}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="border border-1 position-sticky top-0 borde-info p-1 rounded-sm mb-2">
                                <table class="table ">
                                    <thead class="position-static">
                                        <tr>
                                            <th>Title</th>
                                            <th style="width: 130px;">Qty</th>
                                            <th style="width: 150px;">Com %</th>
                                            <th>Amount</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="product in order_carts" :key="product.id">
                                            <td class="text-start">
                                                {{ product.product_name }}
                                                <br>
                                                <div>
                                                    ৳ {{ product.current_price.toString().enToBn() }}
                                                </div>
                                                <a href="#" @click.prevent="remove_cart({product})" class="text-danger">delete</a>
                                            </td>
                                            <td class="text-center">
                                                <input type="number" min="0"
                                                    @change="add_to_cart({product,qty: $event.target.value, commission: product.discount_percent})"
                                                    @keyup="add_to_cart({product,qty: $event.target.value, commission: product.discount_percent})"
                                                    :value="product.qty" style="width: 70px;" class="form-control">
                                            </td>
                                            <td class="text-center">
                                                <input type="number" min="0"
                                                    @keyup="add_to_cart({product,qty: product.qty,commission: $event.target.value})"
                                                    v-model="product.discount_percent"
                                                    style="width: 70px;" class="form-control">
                                            </td>
                                            <td class="text-end">
                                                ৳ {{ product.total_price.toFixed(2).toString().enToBn() }}
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th colspan="3" class="text-end">total</th>
                                            <th class="text-end">৳ {{ tota_order_price.toString().enToBn() }}</th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <form action="#" class="mt-3">
                                    <div> <input type="hidden" id="order_id"> </div>
                                    <div class="mb-2 d-flex gap-2 justify-content-end">
                                        <label for="delivery_charge">Delivery Charge</label>
                                        <input type="number" v-model="shipping_charge" step=".01" name="delivery_charge" id="delivery_charge" class="form-control text-end" style="width: 130px">
                                    </div>
                                    <div  class="mb-2 d-flex gap-2 justify-content-end">
                                        <label for="discount">Discount on product</label>
                                        <input type="number" readonly v-model="discount_on_product" step=".01" name="discount" id="discount" class="form-control text-end" style="width: 130px">
                                    </div>
                                    <div class="mb-2 d-flex gap-2 justify-content-end">
                                        <label for="discount">Discount on total</label>
                                        <input type="number" v-model="discount" step=".01" name="discount" id="discount" class="form-control text-end" style="width: 130px">
                                    </div>
                                    <div class="mb-2 d-flex gap-2 justify-content-end">
                                        <label for="discount">Sub total</label>
                                        <input type="number" readonly :value="+tota_order_price + +shipping_charge - +discount" step=".01" name="discount" id="discount" class="form-control text-end" style="width: 130px">
                                    </div>
                                    <div class="mb-2 d-flex gap-2 justify-content-end">
                                        <label for="total_paid">Total Paid</label>
                                        <input type="number" v-model="total_paid" step=".01" name="total_paid" id="total_paid" class="form-control text-end" style="width: 130px">
                                    </div>
                                    <div class="mb-2 d-flex gap-2 justify-content-end">
                                        <label for="total_paid">Due</label>
                                        <input type="number" readonly :value="+tota_order_price + +shipping_charge - +discount - +total_paid" step=".01" name="total_paid" id="total_paid" class="form-control text-end" style="width: 130px">
                                    </div>
                                    <div class="d-flex gap-1 flex-wrap">
                                        <button type="button" @click.prevent="update_order({shipping_charge, discount})"  class="btn btn-outline-info">
                                            <i class="fa fa-paper-plane"></i>
                                            Update Order
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
import { mapActions, mapGetters, mapMutations } from 'vuex'
import InputField from '../../components/InputField.vue'
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;
export default {
    components: { InputField },
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,

            shipping_charge: 0,
            discount: 0,
            discount_on_product: 0,
            total_paid: 0,
        }
    },
    created: async function () {
        await this.fetch_branch_product_for_order();
        await this[`fetch_${store_prefix}`]({id: this.$route.params.id});

        let dis_on_product = this.order_carts.reduce((total,i)=>total+=i.total_price,0);
        this.discount_on_product = dis_on_product;
        this.discount = this.data.discount - dis_on_product;

        this.$watch('p_search_key',(n,o)=>{
            this.fetch_branch_product_for_order();
        })
        this.$watch('order_carts',(n,o)=>{
            this.discount_on_product = n.reduce((total,i)=>total+=((i.sales_price-i.current_price)*i.qty),0);
        })
    },
    watch: {
        'data': {
            handler: function(n){
                this.shipping_charge = n.delivery_charge;
                // this.discount_on_product = dis_on_product;
                // this.discount = n.discount;
                this.total_paid = n.total_paid;
            },
            deep: true,
        }
    },
    methods: {
        ...mapActions([
            `update_${store_prefix}`,
            `fetch_${store_prefix}`,
        ]),
        ...mapMutations([
            `set_${store_prefix}`,
        ]),
        ...mapActions([`store_${store_prefix}`,`fetch_branch_product_for_order`]),
        ...mapActions({
            add_to_cart: 'admin_oder_cart_add',
            remove_cart: "remove_product_from_cart",
            update_order: "update_admin_order",
        }),
        ...mapMutations({
            set_p_search_key: 'set_admin_p_search_key',
        }),
        call_store: function(name, params=null){
            this[name](params)
        },
        bn_price: function(price){
            return price.toString().enToBn();
        },
        call_store: function(name, params=null){
            this[name](params)
        },
    },
    computed: {
        ...mapGetters([`get_${store_prefix}`]),
        ...mapGetters({
            'data': `get_${store_prefix}`,
            'products': "get_branch_product_for_order",
            'p_search_key': "get_admin_p_search_key",
            "order_carts": "get_admin_oder_cart",
            "tota_order_price": "get_admin_oder_cart_total"
        })
    }
};
</script>

<style>
</style>
