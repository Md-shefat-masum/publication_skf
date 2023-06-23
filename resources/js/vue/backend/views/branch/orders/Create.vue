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
            <!-- <form @submit.prevent="call_store(`store_${store_prefix}`,$event.target)" autocomplete="false"> -->
            <div onsubmit="event.preventDefault()">
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-7">
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
                                <div class="col-lg-3" v-for="product in products.data" :key="product.id">
                                    <div class="card h-100 d-flex flex-column justify-between" >
                                        <div class="pos_card_image_card">
                                            <img :src="product.thumb_image" class="img-fluid" alt=""/>
                                            <span @click="add_to_cart({product})" class="add_icon">
                                                <i class="fa fa-plus"></i>
                                            </span>
                                        </div>
                                        <div class="mt-1">
                                            <span v-if="product.discount_info">
                                                <b>৳ {{ product.discount_info.discount_price.toString().enToBn() }}</b>
                                                <del>৳ {{ product.sales_price.toString().enToBn() }}</del>
                                            </span>
                                        </div>
                                        <h6 style="flex:1" class="mt-2 mb-0">{{ product.product_name }}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="border border-1 position-sticky top-0 borde-info p-1 rounded-sm mb-2">
                                <table class="table ">
                                    <thead class="position-static">
                                        <tr>
                                            <th>Title</th>
                                            <th style="width: 130px;">Qty</th>
                                            <th>Amount</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="product in order_carts" :key="product.id">
                                            <td class="text-start">
                                                {{ product.product_name }}
                                                <br>
                                                ৳ {{ product.current_price.toString().enToBn() }}
                                                <br>
                                                <a href="#" @click.prevent="remove_cart({product})" class="text-danger">delete</a>
                                            </td>
                                            <td class="text-center">
                                                <input type="number" min="0"
                                                    @change="add_to_cart({product,qty: $event.target.value})"
                                                    @keyup="add_to_cart({product,qty: $event.target.value})"
                                                    :value="product.qty" style="width: 70px;" class="form-control">
                                            </td>
                                            <td class="text-end">
                                                ৳ {{ product.total_price.toString().enToBn() }}
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th colspan="2" class="text-end">total</th>
                                            <th class="text-end">৳ {{ tota_order_price.toString().enToBn() }}</th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <form action="#" class="mt-3">
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
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;

export default {
    components: { InputField, },
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
    },
    methods: {
        ...mapActions([
            `store_${store_prefix}`,
            `fetch_branch_product_for_order`,
        ]),
        ...mapActions({
            add_to_cart: 'branch_oder_cart_add',
            remove_cart: "remove_product_from_cart",
            store_order: "store_branch_order",
            fetch_category: "fetch_category_all_json",
        }),
        ...mapMutations({
            set_p_search_key: "set_branch_p_search_key",
            set_branch_product_category: "set_branch_product_category",
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
            "order_carts": "get_branch_oder_cart",
            "tota_order_price": "get_branch_oder_cart_total",
            "all_categories": "get_category_all_json",
        }),

    }
};
</script>

<style>
</style>
