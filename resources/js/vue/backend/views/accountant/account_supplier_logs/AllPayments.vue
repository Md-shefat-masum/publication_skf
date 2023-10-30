<template>
    <div class="conatiner">
        <div class="card list_card">
            <div class="card-header">
                <h4>
                    {{ $route.query.supplier_name }},
                    {{ $route.query.supplier_type }}
                    {{ $route.query.payment_type }}
                    Records
                    <small v-if="this[`get_${store_prefix}_selected`].length">
                        &nbsp; selected:
                        <b class="text-warning">
                            {{ this[`get_${store_prefix}_selected`].length }}
                        </b>
                        &nbsp;
                        <b @click="call_store(`set_clear_selected_${store_prefix}s`, true)" class="text-danger cursor-pointer">clear</b>
                        &nbsp;
                        <b @click="call_store(`set_${store_prefix}_show_selected`,true)" class="text-success cursor-pointer">show</b>
                    </small>
                </h4>
                <div class="search">
                    <!-- <form action="#">
                        <input @keyup="call_store(`set_${store_prefix}_search_key`,$event.target.value)" class="form-control border border-info" placeholder="search..." type="search">
                    </form> -->
                </div>
                <div class="btns d-flex gap-2 align-items-center">
                    <a  href="#"
                        @click.prevent="$router.go(-1);"
                        :class="'btn rounded-pill btn-sm btn-outline-info'">
                        <i class="fa fa-arrow-left me-5px"></i>
                        Back
                    </a>
                    <!-- <div class="table_actions">
                        <a href="#" @click.prevent="()=>''" class="btn px-1 btn-outline-secondary">
                            <i class="fa fa-list"></i>
                        </a>
                        <ul>
                            <li>
                                <a href="" @click.prevent="call_store(`export_${store_prefix}_all`)">
                                    <i class="fa-regular fa-hand-point-right"></i>
                                    Export All
                                </a>
                            </li>
                            <li v-if="this[`get_${store_prefix}_selected`].length">
                                <a href="" @click.prevent="call_store(`export_selected_${store_prefix}_csv`)">
                                    <i class="fa-regular fa-hand-point-right"></i>
                                    Export Selected
                                </a>
                            </li>
                            <li>
                                <router-link :to="{name:`Import${route_prefix}`}">
                                    <i class="fa-regular fa-hand-point-right"></i>
                                    Import
                                </router-link>
                            </li>
                            <li>
                                <a href="#" v-if="this[`get_${store_prefix}_show_active_data`]" title="display data that has been deactivated" @click.prevent="call_store(`set_${store_prefix}_show_active_data`,0)" class="d-flex">
                                    <i class="fa-regular fa-hand-point-right"></i>
                                    Deactivated data
                                </a>
                                <a href="#" v-else title="display data that are active" @click.prevent="call_store(`set_${store_prefix}_show_active_data`,1)" class="d-flex">
                                    <i class="fa-regular fa-hand-point-right"></i>
                                    Active data
                                </a>
                            </li>
                        </ul>
                    </div> -->
                </div>
            </div>
            <div class="table-responsive card-body text-nowrap">
                <div class="row">
                    <div class="col-lg-8 mb-3">
                        <table class="table table-hover table-bordered">
                            <thead class="table-light">
                                <tr>
                                    <!-- <th><input @click="call_store(`set_select_all_${store_prefix}s`)" type="checkbox" class="form-check-input check_all"></th> -->
                                    <table-th :sort="true" :tkey="'id'" :title="'ID'" :ariaLable="'id'"/>
                                    <!-- <table-th :sort="true" :tkey="'name'" :title="'Supplier'" /> -->
                                    <table-th :sort="true" :tkey="'date'" :title="'Date'" />
                                    <table-th :sort="true" :tkey="'amount'" :title="'Amount'" />
                                    <!-- <th aria-label="actions">Actions</th> -->
                                </tr>
                            </thead>
                            <tbody class="table-border-bottom-0">
                                <tr v-for="item in this[`get_${store_prefix}s`].data" :key="item.id">
                                    <!-- <td>
                                        <input v-if="check_if_data_is_selected(item)" :data-id="item.id" checked @change="call_store(`set_selected_${store_prefix}s`,item)" type="checkbox" class="form-check-input">
                                        <input v-else @change="call_store(`set_selected_${store_prefix}s`,item)" type="checkbox" class="form-check-input">
                                    </td> -->
                                    <td>
                                        <span class="text-warning cursor_pointer" @click.prevent="call_store(`set_${store_prefix}`,item)">
                                            {{ item.id }}
                                        </span>
                                    </td>
                                    <!-- <td>
                                        <span class="text-warning cursor_pointer" @click.prevent="call_store(`set_${store_prefix}`,item)">
                                            {{ item.name }}
                                        </span>
                                    </td> -->
                                    <td>{{ item.formated_date }} </td>
                                    <td class="text-end">{{ item.amount }} </td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="2" class="text-right">Total</td>
                                    <td class="text-right">{{ get_supplier_total_amount }}</td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <div class="col-lg-4">
                        <h5>Insert New {{ $route.query.payment_type }}</h5>
                        <form action="" @submit.prevent="call_store(`store_${store_prefix}`,$event.target)">
                            <div class="form-group mb-2">
                                <label>Date</label>
                                <input type="date" class="form-control" @click="$event.target.showPicker();" name="date">
                            </div>
                            <div v-if="$route.query.payment_type == `payment`">
                                <div class="form-group mb-2 mt-2">
                                    <label for="Account">Account</label>
                                    <select id="account_id" @change="set_selected_account_values($event.target.value)" name="account_id" class="form-select">
                                        <option value="">select</option>
                                        <option  v-for="account in get_payment_accounts" :key="account.id" :value="account.id">
                                            {{ account.name.replaceAll('_',' ') }}
                                        </option>
                                    </select>
                                    <br>
                                    <ul>
                                        <li v-for="value in account_vlaues" :key="value.id">
                                            <label :for="value.id">
                                                <div class="d-flex flex-wrap">
                                                    <input class="order-1" :id="value.id" name="payment_method" type="radio" :value="JSON.stringify(value)">
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
                                    <input type="text" id="trx_id" name="trx_id" class="form-control">
                                </div>
                            </div>
                            <div class="form-group mb-2">
                                <label>Amount</label>
                                <input type="text" class="form-control" name="amount">
                            </div>
                            <div class="form-group mb-2">
                                <label>Atachment</label>
                                <input type="file" class="form-control" name="attachment">
                            </div>
                            <div class="form-group mb-2">
                                <label>Description</label>
                                <textarea type="text" class="form-control" name="description"></textarea>
                            </div>
                            <div class="form-group mb-2">
                                <button class="btn btn-sm btn-outline-info">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div class="card-footer py-1 border-top-0">
                <div class="d-inline-block">
                    <pagination :data="this[`get_${store_prefix}s`]" :limit="5" :size="'small'" :show-disabled="true" :align="'left'"
                        @pagination-change-page="handle_pagination">
                        <span slot="prev-nav"><i class="fa fa-angle-left"></i> Previous</span>
                        <span slot="next-nav">Next <i class="fa fa-angle-right"></i></span>
                    </pagination>
                </div>
                <div class="show-limit d-inline-block">
                    <span>Limit:</span>
                    <select @change.prevent="call_store(`set_${store_prefix}_paginate`,$event.target.value)">
                        <option v-for="i in [10,5,25,50,100]" :key="i" :value="i">
                            {{ i }}
                        </option>
                    </select>
                </div>
                <div class="show-limit d-inline-block">
                    <span>Total:</span>
                    <span>{{ this[`get_${store_prefix}s`].total }}</span>
                </div>
            </div>
        </div>

        <details-canvas/>
        <selected-canvas/>
    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations } from 'vuex';
import PermissionButton from '../../components/PermissionButton.vue';
import TableTh from './components/TableTh.vue';
import DetailsCanvas from './DetailsCanvas.vue';
import SelectedCanvas from './SelectedCanvas.vue';

/** store and route prefix for export object use */
import PageSetup from './PageSetup';
var {route_prefix, store_prefix} = PageSetup;
// var store_prefix = 'accountant_supplier_log';

export default {
    components: { PermissionButton, TableTh, DetailsCanvas, SelectedCanvas },
    data: function(){
        return {
            store_prefix,
            route_prefix,
            account_vlaues: [],
        }
    },
    created: async function(){
        await this[`fetch_${store_prefix}s`]();
        await this.fetch_payment_accounts();
    },
    methods: {
        ...mapActions([
            `fetch_${store_prefix}s`,
            `store_${store_prefix}`,
            `soft_delete_${store_prefix}`,
            `restore_${store_prefix}`,
            `export_${store_prefix}_all`,
            `export_selected_${store_prefix}_csv`,
            `fetch_payment_accounts`,
        ]),
        ...mapMutations([
            `set_${store_prefix}_paginate`,
            `set_${store_prefix}_page`,
            `set_${store_prefix}_search_key`,
            `set_${store_prefix}_orderByCol`,
            `set_${store_prefix}_show_active_data`,
            `set_${store_prefix}`,
            `set_selected_${store_prefix}s`,
            `set_select_all_${store_prefix}s`,
            `set_clear_selected_${store_prefix}s`,
            `set_${store_prefix}_show_selected`,
        ]),

        set_selected_account_values: function(account_id){
            this.account_vlaues = this.get_payment_accounts.find(i=>i.id==account_id)?.numbers || [];
        },

        call_store: function(name, params=null){
            this[name](params)
        },
        handle_pagination: function(page=1){
            return this[`set_${store_prefix}_page`](page);
        },

        check_if_data_is_selected: function(user){
            let check_index = this[`get_${store_prefix}_selected`].findIndex((i) => i.id == user.id);
            if(check_index >= 0){
                return true;
            }else{
                return false;
            }
        },
    },
    computed: {
        ...mapGetters([
            `get_${store_prefix}s`,
            `get_${store_prefix}_selected`,
            `get_${store_prefix}_show_active_data`,
            `get_supplier_total_amount`,
            `get_payment_accounts`,
        ]),
    }
}
</script>

<style>

</style>

PermissionButton
