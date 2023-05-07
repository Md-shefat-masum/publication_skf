<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>Order Details</h4>
                <div class="btns">
                    <a href="" @click.prevent="call_store(`set_${store_prefix}`,null), $router.push({ name: `All${route_prefix}` })"  class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        <span >
                            Back
                        </span>
                    </a>
                </div>
            </div>
            <div class="card-body pb-5 ">
                <div class="row justify-content-center">
                    <div class="col-lg-12 " v-if="data.length">
                        <table class="table w-100">
                            <thead>
                                <tr>
                                    <th>Title</th>
                                    <th class="text-end">Qty</th>
                                    <th class="text-end">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="item in data[0].products" :key="item.id">
                                    <td>{{ item.title }}</td>
                                    <td class="text-end">{{ item.price }} * {{ item.qty }}</td>
                                    <td class="text-end">{{ item.price * item.qty }}</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr style="border-top: 1px solid white;">
                                    <td class="border-bottom-0"></td>
                                    <td class="text-end">
                                        <b>Sub Total</b>
                                    </td>
                                    <td class="text-end" >
                                        {{ number_format( total_amount ) }}
                                    </td>
                                </tr>
                                <tr style="border-top: 0">
                                    <td class="border-0"></td>
                                    <td class="text-end border-top-2">
                                        <b>Shipping</b>
                                    </td>
                                    <td class="text-end border-top-2">
                                        {{ number_format( data[0].shipping ) }}
                                    </td>
                                </tr>
                                <tr style="border-top: 0">
                                    <td class="border-0"></td>
                                    <td class="text-end border-top-2">
                                        <b>Total</b>
                                    </td>
                                    <td class="text-end border-top-2">
                                        {{ number_format(  shipping +  total_amount )}}
                                    </td>
                                </tr>
                                <tr style="border-top: 0">
                                    <td class="border-0"></td>
                                    <td class="text-end border-top-2">
                                        <b>Paid</b>
                                    </td>
                                    <td class="text-end border-top-2">
                                        {{ number_format( data[0].paid )}}
                                    </td>
                                </tr>
                                <tr style="border-top: 0">
                                    <td class="border-0"></td>
                                    <td class="text-end border-top-2">
                                        <b>Due</b>
                                    </td>
                                    <td class="text-end border-top-2">
                                        {{ number_format( shipping + total_amount + data[0].paid )}}
                                    </td>
                                </tr>
                                <tr>
                                    <td class="border-0"></td>
                                    <td class="text-end border-top-2 border-bottom-0" >
                                        <b>Payable</b>
                                    </td>
                                    <td class="text-end border-top-2 border-bottom-0">
                                        {{ number_format( shipping + total_amount + data[0].paid )}}
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                        <br>
                        <br>
                    </div>

                    <div class="col-lg-5 py-4">
                        <h4>Payment Information</h4>
                        <table class="table mt-2">
                            <thead>
                                <tr>
                                    <th>Media</th>
                                    <th>TR No</th>
                                    <th>Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Islami Bank</td>
                                    <td>392775847223</td>
                                    <td>2000</td>
                                </tr>
                                <tr>
                                    <td>Bkash</td>
                                    <td>3927223</td>
                                    <td>4000</td>
                                </tr>
                                <tr>
                                    <td>Islami Bank</td>
                                    <td>992277583423</td>
                                    <td>4000</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-lg-2"></div>
                    <div class="col-lg-5 py-4">
                        <h4>Receive Payment</h4>
                        <form action="" class="mt-2">
                            <div class="form-group mb-2">
                                <label for="Account">Account</label>
                                <select name="" id="" class="form-select">
                                    <option value="">Bkash</option>
                                    <option value="">Rocket</option>
                                    <option value="">Islami Bank</option>
                                </select>
                            </div>
                            <div class="form-group mb-2">
                                <label for="">Amount</label>
                                <input type="text" class="form-control">
                            </div>
                            <button class="btn btn-outline-adn">Take Payment</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="card-footer text-center">
                <permission-button
                    :permission="'can_edit'"
                    :to="{name:`EditContactMessage`,params:{id:$route.params.id}}"
                    :classList="'btn btn-outline-info'">
                    <i class="fa text-info fa-pencil"></i> &nbsp;
                    Edit
                </permission-button>
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations } from 'vuex'
import PermissionButton from '../../components/PermissionButton.vue'
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;

export default {
    components: { PermissionButton },
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
            data: [],
        }
    },
    created: function () {
        // this[`fetch_${store_prefix}`]({id: this.$route.params.id, select_all:1})
        this.make_data();
    },
    methods: {
        ...mapActions([
            `fetch_${store_prefix}`,
        ]),
        ...mapMutations([
            `set_${store_prefix}`
        ]),
        call_store: function(name, params=null){
            this[name](params)
        },
        number_format: (number) => new Intl.NumberFormat().format(number),
        make_data: function(){
            this.data = [
                `মোমেনশাহী জেলা দক্ষিণ`,
                `কিশোরগঞ্জ জেলা উত্তর`,
                `কিশোরগঞ্জ জেলা দক্ষিণ`,
                `নেত্রকোনা জেলা`,
                `চট্টগ্রাম মহানগর উত্তর`,
                `চট্টগ্রাম মহানগর দক্ষিণ`,
                `চট্টগ্রাম বিশ্ববিদ্যালয়`,
                `চট্টগ্রাম জেলা উত্তর`
            ].map((i, index)=>{
                return {
                        id:parseInt(Math.random()*1000),
                        order_id: `#202204`+parseInt(Math.random()*1000),
                        branch: i,
                        contact: '+880 1646376015',
                        subtotal: parseInt(Math.random()*10000),
                        shipping: parseInt(Math.random()*100),
                        paid: 2000,
                        payment_status: parseInt(Math.random()*10) % 2==0?'due':'paid',
                        status: ['pending','accepted','processing','delivered','canceled'][index],
                        created_at: new Date().toDateString() + ' ' + new Date().toLocaleTimeString(),
                        products: [
                            {
                                id:parseInt(Math.random()*1000),
                                price:parseInt(Math.random()*1000),
                                title: 'ক্যারিয়ার বিকশিত জীবনের দ্বার',
                                image: 'http://almari.info/uploads/product/product_main_image/dh2QioXn122GuTfvBBcrEkDKM0XAEiG2z63zwRKC.png',
                                status: 'designing',
                                qty: 300,
                            },
                            {
                                id:parseInt(Math.random()*1000),
                                price:parseInt(Math.random()*1000),
                                title: 'বিষয়ভিত্তিক আয়াত ও হাদিস সংকলন (ছোটো)',
                                image: 'http://almari.info/uploads/product/product_main_image/PWGp7nvai1IYlG3xbEt8WBmV6nZ7V0Rmc3FeM2eP.jpeg',
                                status: 'binding',
                                qty: 500,
                            },
                            {
                                id:parseInt(Math.random()*1000),
                                price:parseInt(Math.random()*1000),
                                title: 'এসো আলোর পথে',
                                image: 'http://almari.info/uploads/product/product_main_image/juRgRV0pxxjFkulEA4flJI1UAKSr966a9JFgyKyb.jpeg',
                                status: 'printing',
                                qty: 450,
                            },
                        ]
                    }
            })
        },
    },
    computed: {
        ...mapGetters([`get_${store_prefix}`]),
        total_amount: function(){
            return [...this.data[0]?.products]?.reduce((total,i)=>(total+=(i.price*i.qty)), 0)
        },
        shipping: function(){
            return this.data[0]?.shipping;
        }
    }
}
</script>

<style>

</style>
