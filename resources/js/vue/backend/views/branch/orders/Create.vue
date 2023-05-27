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
            <form @submit.prevent="call_store(`store_${store_prefix}`,$event.target)" autocomplete="false">
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="d-flex gap-2">
                                <input type="search" placeholder="search" class="form-control">
                                <button class="btn btn-outline-adn"><i class="fa fa-search"></i></button>
                            </div>
                            <div class="row py-3">
                                <div class="col-lg-3" v-for="item in products.data" :key="item.id">
                                    <div class="card h-100 d-flex flex-column justify-between" >
                                        <div class="pos_card_image_card">
                                            <img :src="item.thumb_image" class="img-fluid" alt=""/>
                                            <span class="add_icon">
                                                <i class="fa fa-plus"></i>
                                            </span>
                                        </div>
                                        <h6 style="flex:1" class="mt-2 mb-0">{{ item.product_name }}</h6>
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
                                        <tr v-for="item in data" :key="item.id">
                                            <td class="text-start">
                                                {{ item.title }}
                                                <br>
                                                <a href="" class="text-danger">delete</a>
                                            </td>
                                            <td class="text-center">
                                                <input type="number" value="1" class="form-control">
                                            </td>
                                            <td class="text-end">
                                                {{ item.price }}
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th colspan="2" class="text-end">total</th>
                                            <th class="text-end">12343</th>
                                        </tr>
                                    </tfoot>
                                </table>
                                <form action="" class="mt-3">
                                    <div class="d-flex gap-1 flex-wrap">
                                        <button type="submit" class="btn btn-outline-info" >
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
                </div>
            </form>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
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
            data: [
                {
                    id: parseInt(Math.random()*10000),
                    title: 'ক্যারিয়ার বিকশিত জীবনের দ্বার',
                    image: 'http://almari.info/uploads/product/product_main_image/dh2QioXn122GuTfvBBcrEkDKM0XAEiG2z63zwRKC.png',
                    status: 'avaialbe',
                    price: 500,
                },
                {
                    id: parseInt(Math.random()*10000),
                    title: 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)',
                    image: 'http://almari.info/uploads/product/product_main_image/PWGp7nvai1IYlG3xbEt8WBmV6nZ7V0Rmc3FeM2eP.jpeg',
                    status: 'avaialbe',
                    price: 250,
                },
                {
                    id: parseInt(Math.random()*10000),
                    title: 'এসো আলোর পথে',
                    image: 'http://almari.info/uploads/product/product_main_image/juRgRV0pxxjFkulEA4flJI1UAKSr966a9JFgyKyb.jpeg',
                    status: 'avaialbe',
                    price: 50,
                },
                {
                    id: parseInt(Math.random()*10000),
                    title: 'বর্ণমালা',
                    image: 'http://almari.info/uploads/product/product_main_image/1SNDUyvzYwCSyXJHOSAtiVCYj8DinhqVjGEuuwXK.jpeg',
                    status: 'avaialbe',
                    price: 320,
                },
            ]
        }
    },
    created: function () {
        this.fetch_production_products();
    },
    methods: {
        ...mapActions([`store_${store_prefix}`,`fetch_production_products`]),
        call_store: function(name, params=null){
            this[name](params)
        },
    },
    computed: {
        ...mapGetters({
            'products': "get_production_products",
        })
    }
};
</script>

<style>
</style>
