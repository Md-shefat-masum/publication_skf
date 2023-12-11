<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>Edit</h4>
                <div class="btns">
                    <a href="" @click.prevent="call_store(`set_${store_prefix}`,null), $router.push({ name: `All${route_prefix}` })"  class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        <span >
                            Back
                        </span>
                    </a>
                </div>
            </div>
            <form @submit.prevent="call_store(`update_${store_prefix}`,$event.target)" autocomplete="false">
                <div class="card-body">
                    <div class="row justify-content-center">
                        <div class="col-lg-10">
                            <div class="admin_form form_1" v-if="this[`get_${store_prefix}`]">
                                <div class=" d-none form-group d-grid align-content-start gap-1 mb-2 " >
                                    <!-- <input-field
                                        :label="`Payment Method`"
                                        :name="`payment_method`"
                                        :value="this[`get_${store_prefix}`]['payment_method']"
                                    /> -->
                                    <label for="">Payment Method</label>
                                    <select name="payment_method" v-model="payment_method" @change="select_account($event)" class="form-select">
                                        <option value="">select</option>
                                        <option :value="account.id" v-for="account in get_transaction_accounts" :key="account.id">
                                            {{account.title}}
                                        </option>
                                    </select>
                                </div>
                                <div class=" d-none form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <label>Select Account</label>
                                    <label :for="`number`+item.setting_value.replaceAll(' ','')" v-for="(item) in selected.values" :key="item.id">
                                        <input type="radio" :value="item.setting_value" :id="`number`+item.setting_value.replaceAll(' ','')" name="number">
                                        {{item.setting_value}}
                                    </label>
                                    <!-- <input-field
                                        :label="`Number`"
                                        :name="`number`"
                                        :value="this[`get_${store_prefix}`]['number']"
                                    /> -->
                                </div>
                                <div v-if="selected.title == `bank_account`" class="form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Account No`"
                                        :name="`account_no`"
                                        :value="this[`get_${store_prefix}`]['account_no']"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Transaction ID`"
                                        :name="`trx_id`"
                                        :value="this[`get_${store_prefix}`]['trx_id']"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Amount`"
                                        :name="`amount`"
                                        :value="this[`get_${store_prefix}`]['amount']"
                                    />
                                </div>

                            </div>
                            <div v-if="data.attachment">
                                <a :href="data.attachment.file_url" target="_blank">
                                    <img :src="data.attachment.file_url" height="100px" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer text-center">
                    <button type="submit" class="btn btn-outline-info" >
                        <i class="fa fa-upload"></i>
                        Submit
                    </button>
                </div>
            </form>
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

            selected: {},
            payment_method: null,
            number: '',
        }
    },
    created: async function () {
        await this[`fetch_${store_prefix}`]({id: this.$route.params.id});
        await this.fetch_transaction_accounts();
        this.set_account(this[`get_${store_prefix}`]['payment_method']);
    },
    methods: {
        ...mapActions([
            `update_${store_prefix}`,
            `fetch_${store_prefix}`,
            `fetch_transaction_accounts`,
        ]),
        ...mapMutations([
            `set_${store_prefix}`,
        ]),
        call_store: function(name, params=null){
            this[name](params)
        },
        select_account: function(event){
            this.selected = this.get_transaction_accounts.find(i=>i.id == event.target.value);
            console.log(this.selected);
        },
        set_account: function(account_name="bkash"){
            this.selected = this.get_transaction_accounts.find(i=>i.title == account_name);
            this.payment_method = this.selected.id;
            let that = this;
            setTimeout(function(){
                let el = document.querySelector(`input[id="number${that[`get_${store_prefix}`]['number'].replaceAll(' ','')}"]`);
                // console.log(el);
                el.checked = true;
            }, 500);
        },
    },
    computed: {
        ...mapGetters([
            `get_${store_prefix}`,
            `get_transaction_accounts`,
        ]),
        ...mapGetters({
            data: `get_${store_prefix}`,
        })
    }
};
</script>

<style>
</style>
