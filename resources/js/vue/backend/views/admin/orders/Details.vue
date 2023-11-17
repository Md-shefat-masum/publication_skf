<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>Order Details</h4>
                <div class="btns">
                    <a href="" @click.prevent="call_store(`set_${store_prefix}`,null), $router.push({ name: `BranchOrder` })"  class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        <span >
                            Back
                        </span>
                    </a>
                </div>
            </div>
            <div class="card-body pb-5 ">
                <div class="row justify-content-center">
                    <div class="col-lg-12 " v-if="data && data.order_details">
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
                        <table class="table">
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
                    </div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-5 py-4">
                        <form v-if="data" @submit.prevent="admin_receive_due" action="" class="mt-2">
                            <h4>Receive due amount</h4>
                            <div class="form-group mb-2 mt-2">
                                <label for="Account">Account</label>
                                <select id="account_id" @change="set_selected_account_values($event.target.value)" name="account_id" class="form-select">
                                    <option value="">select</option>
                                    <option  v-for="account in data.payment_accounts" :key="account.id" :value="account.id">
                                        {{ account.name.replaceAll('_',' ') }}
                                    </option>
                                </select>
                                <br>
                                <label :for="value.id" v-for="value in account_vlaues" :key="value.id">
                                    <div class="d-flex flex-wrap">
                                        <input class="order-1" :id="value.id" name="payment_method" type="radio" :value="JSON.stringify(value)">
                                        <div class="order-2">
                                            {{ value.value }}
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
                                <input type="number" step="0.01" name="amount" id="amount" min="10" :max="data.total_price - data.order_payments_sum_amount" :value="data.total_price - data.order_payments_sum_amount" class="form-control">
                            </div>
                            <button class="btn btn-outline-adn">Submit</button>
                        </form>
                    </div>

                    <div class="col-12" v-if="data && data.payment_records">
                        <div >
                            <div>
                                <h4 id="payment_id" class="mt-4">Payment Information</h4>
                            </div>
                            <table class="table mt-2">
                                <thead>
                                    <tr>
                                        <th>Media</th>
                                        <th>Contact No</th>
                                        <th>TR No</th>
                                        <th>Approved</th>
                                        <th>Amount</th>
                                    </tr>
                                </thead>
                                <tbody v-for="record in data.payment_records" :key="record.id">
                                    <tr>
                                        <td>
                                            {{ record.payment_method }}
                                            <br>
                                            <a href="" v-if="![1,2].includes(record.approved)" @click.prevent="admin_approve_branch_payment({payment:record})" class="text-success">
                                                approve
                                            </a>
                                            &nbsp;
                                            <a href="" @click.prevent="admin_delete_branch_payment({payment:record})" class="text-danger">
                                                delete
                                            </a>
                                        </td>
                                        <td>
                                            {{ record.number }}
                                        </td>
                                        <td>
                                            {{ record.trx_id }}
                                        </td>
                                        <td>
                                            <span v-if="record.approved == 1" class="badge bg-success">yes</span>
                                            <span v-else-if="record.approved == 2" class="badge bg-danger">cancled</span>
                                            <span v-else class="badge bg-secondary">no</span>
                                        </td>
                                        <td class="text-end text-lg">
                                            <b>
                                                {{ record.amount.toString().enToBn() }}
                                            </b>
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th colspan="4" class="text-end">Total</th>
                                        <th class="text-end">
                                            <span v-if="data.order_payments_sum_amount">
                                                {{ data.order_payments_sum_amount.toString().enToBn() }}
                                            </span>
                                        </th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-footer text-center">
                <!--
                    <permission-button
                        :permission="'can_edit'"
                        :to="{name:`EditContactMessage`,params:{id:$route.params.id}}"
                        :classList="'btn btn-outline-info'">
                        <i class="fa text-info fa-pencil"></i> &nbsp;
                        Edit
                    </permission-button>
                -->
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
            'admin_receive_due',
            'admin_delete_branch_payment',
            'admin_approve_branch_payment',
        ]),
        ...mapMutations([
            `set_${store_prefix}`
        ]),
        call_store: function(name, params=null){
            this[name](params)
        },
        set_selected_account_values: function(account_id){
            this.account_vlaues = this.data.payment_accounts.find(i=>i.id==account_id)?.numbers || [];
        },
        number_format: (number) => new Intl.NumberFormat().format(number),
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
