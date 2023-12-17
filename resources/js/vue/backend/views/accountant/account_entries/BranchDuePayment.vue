<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>Branch Due Entry</h4>
                <div class="btns">
                    <a href="" @click.prevent="$router.push({ name: `AccountBranchDue` })"  class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        <span >
                            Back
                        </span>
                    </a>
                </div>
            </div>
            <form @submit.prevent="()=>''" class="create_form" autocomplete="false">
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <h4>Due Orders</h4>
                            <table class="table text-nowrap">
                                <thead class="table-dark">
                                    <tr>
                                        <th>Order Id</th>
                                        <th>Total Payable</th>
                                        <th>Total Paid</th>
                                        <th>Total Due</th>
                                        <th>Paid Amount</th>
                                        <th>Due Amount</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr v-for="order in due_orders" :key="order.id">
                                        <td>{{ order.sales_id }}</td>
                                        <td>{{ order.total_price }}</td>
                                        <td>{{ order.total_paid }}</td>
                                        <td>{{ order.total_price - order.total_paid }}</td>
                                        <td class="text-end">
                                            <input
                                                v-model="order.due_amount"
                                                type="text"
                                                style="width:100px;" class="text-end float-right form-control">
                                        </td>
                                        <td class="text-end">
                                            <input
                                                v-model="order.minus"
                                                @keyup="order.due_amount = +order.minus > 0? order.total_price - order.total_paid - order.minus : order.total_price - order.total_paid"
                                                value="0"
                                                type="text"
                                                style="width:100px;" class="text-end float-right form-control">
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot class="border-top">
                                    <tr>
                                        <td colspan="4" class="text-end">Payable</td>
                                        <td class="text-end ">
                                            <b class="pe-1">
                                                {{ total_due }}
                                            </b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" class="text-end">Paid</td>
                                        <td class="text-end ">
                                            <span class="pe-1">
                                                <input type="text" v-model="total_paid" style="width:100px;" class="text-end float-right form-control">
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" class="text-end">Due</td>
                                        <td class="text-end ">
                                            <b class="pe-1">
                                                {{  total_due - total_paid }}
                                            </b>
                                        </td>
                                    </tr>
                                </tfoot>
                            </table>

                            <div class="row mt-3">
                                <div class="col-lg-6">
                                    <div>
                                        <h4>Payment receive method</h4>
                                        <div class="form-group mb-2">
                                            <label for="Account">Account</label>
                                            <select v-model="account_id" id="account_id" @change="set_selected_account_values($event.target.value)" name="account_id" class="form-select">
                                                <option value="">select</option>
                                                <option  v-for="account in accounts" :key="account.id" :value="account.id">
                                                    {{ account.name.replaceAll('_',' ') }}
                                                </option>
                                            </select>

                                            <ul>
                                                <li v-for="value in account_vlaues" class="py-2" :key="value.id">
                                                    <label :for="value.id" class="mb-0">
                                                        <div class="d-flex flex-wrap">
                                                            <input class="order-1 me-1" v-model="account_number_id" :id="value.id" name="payment_method" type="radio" :value="JSON.stringify(value)">
                                                            <div class="order-2">
                                                                {{ value.value }}
                                                            </div>
                                                        </div>
                                                    </label>
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="form-group mb-2">
                                            <label for="">TRX ID</label>
                                            <input type="text" v-model="trx_id" id="trx_id" name="trx_id" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer text-center">
                    <button v-if="!submitting" @click.prevent="pay_due_submit" type="button" class="btn btn-outline-info" >
                        <i class="fa fa-upload"></i>
                        Submit
                    </button>
                    <button v-else class="btn btn-outline-danger">
                        Submitting
                    </button>
                </div>
            </form>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations } from 'vuex'
import InputField from '../../components/InputField.vue'
import CateogryTypesModal from "../account_types/components/ManagementModal.vue"
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;
export default {
    components: { InputField, CateogryTypesModal },
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
            total_paid: 0,
            account_vlaues: [],
            account_id: null,
            account_number_id: null,
            trx_id: null,
            submitting: false,

            due_orders: [],
        }
    },
    created: async function () {
        await this.branch_all_dues_by_id(this.$route.params.user_id);
        await this.fetch_payment_accounts();
        this.due_orders = this.orders;

        this.$watch('total_paid',function(v){
            let rest_amount = this.total_due - this.total_paid;
            this.due_orders.forEach(order => {
                let order_due = order.total_price - order.total_paid;
                if(rest_amount > order_due){
                    order.minus = order_due;
                    order.due_amount = 0;
                    rest_amount = rest_amount - order_due;
                }else{
                    // console.log(order_due + " - " + rest_amount);
                    order.due_amount = rest_amount > 0? order_due - rest_amount : order_due;
                    order.minus = rest_amount > 0 ? rest_amount : 0;
                    rest_amount  -= rest_amount;
                }
            });
        })
    },
    methods: {
        ...mapActions([
            'branch_all_dues_by_id',
            `fetch_payment_accounts`,
        ]),
        ...mapMutations([

        ]),
        call_store: function(name, params=null){
            this[name](params)
        },

        pay_due_submit: async function(){
            let orders = this.orders.map(i=>({id: i.id, pay_amount: i.due_amount }));
            let account_id = this.account_id;
            let account_number_id = this.account_number_id;
            let trx_id = this.trx_id;
            let user_id = this.$route.params.user_id;

            let cconfirm = await window.s_confirm("Submit payment?");
            if(!cconfirm){
                return 0;
            }
            this.submitting = true;
            if(this.submitting){
                axios.post('/accountant/account-entry/store/due',{
                    orders,
                    account_id,
                    account_number_id,
                    trx_id,
                    user_id,
                })
                .then(async (res)=>{
                    this.submitting = false;
                    this.total_paid = 0;
                    await this.branch_all_dues_by_id(this.$route.params.user_id);
                    this.due_orders = this.orders;
                })
                .catch(err=>{
                    this.submitting = false;
                })
            }

        },

        set_selected_account_values: function(account_id){
            this.account_vlaues = this.accounts.find(i=>i.id==account_id)?.numbers || [];
        },
    },
    beforeDestroy: function(){

    },
    computed: {
        ...mapGetters({
            orders: 'all_branch_due_orders',
            accounts: `get_payment_accounts`,
        }),
        total_due: function(){
            return this.orders.reduce((t,i)=>t+= (i.total_price - i.total_paid), 0);
        }
    }
};
</script>

<style>
</style>
