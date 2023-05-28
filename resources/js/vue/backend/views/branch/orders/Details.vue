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
                    <div class="col-lg-12 " v-if="data && data.order_details.length">
                        <table class="table w-100">
                            <thead>
                                <tr>
                                    <th>Title</th>
                                    <th class="text-end">Qty</th>
                                    <th class="text-end">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="item in data.order_details" :key="item.id">
                                    <td>{{ item.product_name }}</td>
                                    <td class="text-end">{{ item.sales_price }} * {{ item.qty }}</td>
                                    <td class="text-end">{{ item.sales_price * item.qty }}</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr style="border-top: 1px solid white;">
                                    <td class="border-bottom-0"></td>
                                    <td class="text-end">
                                        <b>Sub Total</b>
                                    </td>
                                    <td class="text-end" >
                                        {{ number_format( data.sub_total ) }}
                                    </td>
                                </tr>
                                <tr style="border-top: 0">
                                    <td class="border-0"></td>
                                    <td class="text-end border-top-2">
                                        <b>Shipping</b>
                                    </td>
                                    <td class="text-end border-top-2">
                                        {{ number_format( data.delivery_charge ) }}
                                    </td>
                                </tr>
                                <tr style="border-top: 0">
                                    <td class="border-0"></td>
                                    <td class="text-end border-top-2">
                                        <b>Discount</b>
                                    </td>
                                    <td class="text-end border-top-2">
                                        - {{ number_format( data.discount ) }}
                                    </td>
                                </tr>
                                <tr style="border-top: 0">
                                    <td class="border-0"></td>
                                    <td class="text-end border-top-2">
                                        <b>Total</b>
                                    </td>
                                    <td class="text-end border-top-2">
                                        {{ number_format(  data.total_price )}}
                                    </td>
                                </tr>
                                <tr style="border-top: 0">
                                    <td class="border-0"></td>
                                    <td class="text-end border-top-2">
                                        <b>Paid</b>
                                    </td>
                                    <td class="text-end border-top-2">
                                        {{ number_format( data.order_payments_sum_amount )}}
                                    </td>
                                </tr>
                                <tr style="border-top: 0">
                                    <td class="border-0"></td>
                                    <td class="text-end border-top-2">
                                        <b>Due</b>
                                    </td>
                                    <td class="text-end border-top-2">
                                        {{ number_format( data.total_price - data.order_payments_sum_amount )}}
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                        <br>
                        <br>
                    </div>

                    <div class="col-lg-5 py-4" v-if="data">
                        <h4>Order Details</h4>
                        <table class="table" >
                            <tbody>
                                <tr>
                                    <td>Invoice ID</td>
                                    <td class="px-0">:</td>
                                    <td>
                                        {{ data.invoice_id }}
                                    </td>
                                </tr>
                                <tr>
                                    <td>Name</td>
                                    <td class="px-0">:</td>
                                    <td>
                                        {{ data.user.first_name }}
                                        {{ data.user.last_name }}
                                    </td>
                                </tr>
                                <tr>
                                    <td>Mobile Number</td>
                                    <td class="px-0">:</td>
                                    <td>
                                        {{ data.user.mobile_number }}
                                    </td>
                                </tr>
                                <tr>
                                    <td>Delivery Method</td>
                                    <td class="px-0">:</td>
                                    <td>
                                        {{ data.delivery_method }}
                                    </td>
                                </tr>
                                <tr>
                                    <td>Payment Status</td>
                                    <td class="px-0">:</td>
                                    <td>
                                        {{ data.payment_status }}
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                        <h4 class="mt-4">Payment Information</h4>
                        <table class="table mt-2">
                            <thead>
                                <tr>
                                    <th>Media</th>
                                    <th>TR No</th>
                                    <th>Approved</th>
                                    <th>Amount</th>
                                </tr>
                            </thead>
                            <tbody v-for="record in data.payment_records" :key="record.id">
                                <tr>
                                    <td>{{ record.payment_method }}</td>
                                    <td>{{ record.number }}</td>
                                    <td>
                                        <span v-if="record.approved" class="badge bg-success">yes</span>
                                        <span v-else class="badge bg-secondary">no</span>
                                        {{ record.approved }}
                                    </td>
                                    <td class="text-end">{{ record.amount.toString().enToBn() }}</td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th colspan="2" class="text-end">Total</th>
                                    <th class="text-end">{{ data.order_payments_sum_amount.toString().enToBn() }}</th>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-5 py-4">
                        <form v-if="data && data.total_paid < data.total_price " @submit.prevent="branch_pay_due" action="" class="mt-2">
                            <h4>Pay due amount</h4>
                            <div class="form-group mb-2 mt-2">
                                <label for="Account">Account</label>
                                <select id="account_id" @change="set_selected_account_values($event.target.value)" name="account_id" class="form-select">
                                    <option value="">select</option>
                                    <option  v-for="account in data.payment_accounts" :key="account.id" :value="account.id">
                                        {{ account.title.replaceAll('_',' ') }}
                                    </option>
                                </select>
                                <br>
                                <label :for="value.id" v-for="value in account_vlaues" :key="value.id">
                                    <div class="d-flex flex-wrap">
                                        <input class="order-1" :id="value.id" name="payment_method" type="radio" :value="JSON.stringify(value)">
                                        <div class="order-2">
                                            {{ value.setting_value }}
                                            &nbsp;
                                            &nbsp;
                                        </div>
                                    </div>
                                </label>
                            </div>
                            <div class="form-group mb-2">
                                <label for="">TRX ID</label>
                                <input type="text" id="trx_id" name="trx_id" class="form-control">
                            </div>
                            <div class="form-group mb-2">
                                <label for="">Amount</label>
                                <input type="number" name="amount" id="amount" min="10" :max="data.total_price - data.order_payments_sum_amount" :value="data.total_price - data.order_payments_sum_amount" class="form-control">
                            </div>
                            <button class="btn btn-outline-adn">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="card-footer text-center">
                <!-- <permission-button
                    :permission="'can_edit'"
                    :to="{name:`EditContactMessage`,params:{id:$route.params.id}}"
                    :classList="'btn btn-outline-info'">
                    <i class="fa text-info fa-pencil"></i> &nbsp;
                    Edit
                </permission-button> -->
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

            account_vlaues: [],
        }
    },
    created: function () {
        this[`fetch_${store_prefix}`]({id: this.$route.params.id, select_all:1})
    },
    methods: {
        ...mapActions([
            `fetch_${store_prefix}`,
            'branch_pay_due',
        ]),
        ...mapMutations([
            `set_${store_prefix}`
        ]),
        call_store: function(name, params=null){
            this[name](params)
        },
        set_selected_account_values: function(account_id){
            this.account_vlaues = this.data.payment_accounts.find(i=>i.id==account_id)?.values || [];
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
        ...mapGetters({
            data: `get_${store_prefix}`
        }),
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
