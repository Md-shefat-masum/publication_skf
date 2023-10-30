<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>
                    All
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
                    <form action="#">
                        <input @keyup="call_store(`set_${store_prefix}_search_key`,$event.target.value)" class="form-control border border-info" placeholder="search..." type="search">
                    </form>
                </div>
                <div class="btns d-flex gap-2 align-items-center">
                    <!-- <permission-button
                        :permission="'can_create'"
                        :to="{name: `Create${route_prefix}`}"
                        :classList="'btn rounded-pill btn-outline-info'">
                        <i class="fa fa-pencil me-5px"></i>
                        Create
                    </permission-button> -->
                    <div class="table_actions">
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
                        </ul>
                    </div>
                </div>
            </div>
            <div class="table-responsive card-body text-nowrap">
                <table class="table table-hover table-bordered">
                    <thead class="table-light">
                        <tr>
                            <th><input @click="call_store(`set_select_all_${store_prefix}s`)" type="checkbox" class="form-check-input check_all"></th>
                            <table-th :sort="true" :tkey="'id'" :title="'ID'" :ariaLable="'id'"/>
                            <table-th :sort="true" :tkey="'invoice_id'" :title="'Order ID'" />
                            <table-th :sort="true" :tkey="'order_status'" :title="'Order Status'" />
                            <table-th :sort="false" :tkey="''" :title="'User Name'" />
                            <table-th :sort="false" :tkey="''" :title="'Contact'" />
                            <table-th :sort="true" :tkey="'sub_total'" :title="'Sub Total'" />
                            <table-th :sort="true" :tkey="'delivery_charge'" :title="'Shipping'" />
                            <!-- <table-th :sort="true" :tkey="'coupon_discount'" :title="'Coupon Discount'" /> -->
                            <table-th :sort="true" :tkey="'discount'" :title="'Discount'" />
                            <table-th :sort="true" :tkey="'total_price'" :title="'Total'" />
                            <table-th :sort="false" :tkey="''" :title="'Paid'" />
                            <table-th :sort="false" :tkey="''" :title="'Due'" />
                            <table-th :sort="true" :tkey="'payment_status'" :title="'payment Status'" />
                            <table-th :sort="true" :tkey="'delivery_method'" :title="'Delivery Method'" />
                            <table-th :sort="true" :tkey="'created_at'" :title="'Date'" />
                            <table-th :sort="true" :tkey="'status'" :title="'Status'" />
                            <th aria-label="actions">Actions</th>
                        </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                        <tr v-for="item in this[`get_${store_prefix}s`].data" :key="item.id">
                        <!-- <tr v-for="item in data" :key="item.id"> -->
                            <td>
                                <input v-if="check_if_data_is_selected(item)" :data-id="item.id" checked @change="call_store(`set_selected_${store_prefix}s`,item)" type="checkbox" class="form-check-input">
                                <input v-else @change="call_store(`set_selected_${store_prefix}s`,item)" type="checkbox" class="form-check-input">
                            </td>
                            <td>{{ item.id }}</td>
                            <td>
                                <span class="text-warning cursor_pointer" @click.prevent="call_store(`set_${store_prefix}`,item)">
                                    {{ item.invoice_id }}
                                </span>
                            </td>
                            <td>
                                <order-status-message :status="item.order_status"></order-status-message>
                            </td>
                            <td>{{ item.user.first_name +" "+ item.user.last_name }}</td>
                            <td>{{ item.user.mobile_number }}</td>
                            <td>
                                <strong class="text-info">
                                    {{ item.sub_total}}
                                </strong>
                            </td>
                            <td>
                                <strong class="text-info">
                                    + {{ item.delivery_charge}}
                                </strong>
                            </td>
                            <!--
                                <td>
                                    <strong class="text-info">
                                        {{ item.coupon_discount}}
                                    </strong>
                                </td>
                            -->
                            <td>
                                <strong class="text-info">
                                    - {{ item.discount}}
                                </strong>
                            </td>
                            <td>
                                <strong class="text-info">
                                    {{ item.total_price}}
                                </strong>
                            </td>
                            <td>
                                <strong class="text-warning">
                                   - {{ item.order_payments_sum_amount }}
                                </strong>
                            </td>
                            <td>
                                <strong class="text-warning">
                                   {{ item.total_price - item.order_payments_sum_amount }}
                                </strong>
                            </td>
                            <td>
                                <span :class="`badge ${item.payment_status == 'paid'? `bg-secondary`: 'bg-danger'} me-1`">{{ item.payment_status }}</span>
                            </td>
                            <td>
                                {{ item.delivery_method }}
                            </td>
                            <td>{{ new Date(item.invoice_date).toDateString() }} {{ new Date(item.invoice_date).toLocaleTimeString() }}</td>
                            <td>
                                <!-- <span :class="`badge ${order_status(item.status)} me-1`">{{ item.status }}</span> -->
                                <span v-if="item.status == 1" class="badge bg-label-success me-1">active</span>
                                <span v-if="item.status == 0" class="badge bg-label-success me-1">deactive</span>
                            </td>

                            <td>
                                <div class="table_actions">
                                    <a href="#" @click.prevent="()=>''" class="btn btn-sm btn-outline-secondary">
                                        <i class="fa fa-gears"></i>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="" @click.prevent="call_store(`set_${store_prefix}`,item)">
                                                <i class="fa text-info fa-eye"></i>
                                                Quick View
                                            </a>
                                        </li>
                                        <li>
                                            <router-link
                                                :permission="'can_edit'"
                                                :to="{name:`Details${route_prefix}`,params:{id:item.id}}"
                                                :classList="''">
                                                <i class="fa text-secondary fa-eye"></i>
                                                Details
                                            </router-link>
                                        </li>
                                        <li v-if="item.status == 1">
                                            <permission-button
                                                :permission="'can_delete'"
                                                :to="{}"
                                                :click="()=>call_store(`soft_delete_${store_prefix}`,item.id)"
                                                :click_param="item.id"
                                                :classList="''">
                                                <i class="fa text-danger fa-trash"></i>
                                                Deactive
                                            </permission-button>
                                        </li>
                                        <li v-else>
                                            <permission-button
                                                :permission="'can_delete'"
                                                :to="{}"
                                                :click="()=>call_store(`restore_${store_prefix}`,item.id)"
                                                :click_param="item.id"
                                                :classList="''">
                                                <i class="fa text-danger fa-recycle"></i>
                                                Activate
                                            </permission-button>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
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
import OrderStatusMessage from './components/OrderStatusMessage.vue';
const {route_prefix, store_prefix} = PageSetup;

export default {
    components: { PermissionButton, TableTh, DetailsCanvas, SelectedCanvas, OrderStatusMessage },
    data: function(){
        return {
            store_prefix,
            route_prefix,
            data: []
        }
    },
    created: function(){
        this.set_order_type('ecommerce');
        this[`fetch_${store_prefix}s`]();
    },
    methods: {
        ...mapActions([
            `fetch_${store_prefix}s`,
            `soft_delete_${store_prefix}`,
            `restore_${store_prefix}`,
            `export_${store_prefix}_all`,
            `export_selected_${store_prefix}_csv`,
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
            `set_order_type`,
        ]),

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
        order_status: function(status){
            let class_name = '';
            switch (status) {
                case 'pending':
                    class_name =  'bg-info text-black'
                    break;
                case 'accepted':
                    class_name =  'bg-primary'
                    break;
                case 'processing':
                    class_name =  'bg-warning text-black'
                    break;
                case 'delivered':
                    class_name =  'bg-success text-black'
                    break;
                case 'canceled':
                    class_name =  'bg-danger text-black'
                    break;

                default:
                    break;
            }
            return class_name;
        }
    },
    computed: {
        ...mapGetters([
            `get_${store_prefix}s`,
            `get_${store_prefix}_selected`,
            `get_${store_prefix}_show_active_data`,
        ]),
    }
}
</script>

<style>

</style>

