<template>
    <div class="conatiner">
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
                    <permission-button
                        :permission="'can_create'"
                        :to="{name: `Create${route_prefix}`}"
                        :classList="'btn rounded-pill btn-outline-info'">
                        <i class="fa fa-pencil me-5px"></i>
                        Create
                    </permission-button>
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
                    </div>
                </div>
            </div>
            <div class="table-responsive card-body text-nowrap">
                <table class="table table-hover table-bordered">
                    <thead class="table-light">
                        <tr>
                            <th><input @click="call_store(`set_select_all_${store_prefix}s`)" type="checkbox" class="form-check-input check_all"></th>
                            <table-th :sort="true" :tkey="'id'" :title="'ID'" :ariaLable="'id'"/>
                            <table-th :sort="true" :tkey="''" :title="'Order ID'" />
                            <table-th :sort="false" :tkey="''" :title="'Branch'" />
                            <table-th :sort="true" :tkey="''" :title="'Contact'" />
                            <table-th :sort="true" :tkey="''" :title="'Sub Total'" />
                            <table-th :sort="true" :tkey="''" :title="'Shipping'" />
                            <table-th :sort="true" :tkey="''" :title="'Total'" />
                            <table-th :sort="true" :tkey="''" :title="'Paid'" />
                            <table-th :sort="true" :tkey="''" :title="'payment status'" />
                            <table-th :sort="false" :tkey="''" :title="'Date'" />
                            <table-th :sort="true" :tkey="'status'" :title="'Status'" />
                            <th aria-label="actions">Actions</th>
                        </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                        <!-- <tr v-for="item in this[`get_${store_prefix}s`].data" :key="item.id"> -->
                        <tr v-for="item in data" :key="item.id">
                            <td>
                                <input v-if="check_if_data_is_selected(item)" :data-id="item.id" checked @change="call_store(`set_selected_${store_prefix}s`,item)" type="checkbox" class="form-check-input">
                                <input v-else @change="call_store(`set_selected_${store_prefix}s`,item)" type="checkbox" class="form-check-input">
                            </td>
                            <td>{{ item.id }}</td>
                            <td>
                                <span class="text-warning cursor_pointer" @click.prevent="call_store(`set_${store_prefix}`,item)">
                                    {{ item.order_id }}
                                </span>
                            </td>
                            <td>{{ item.branch }}</td>
                            <td>{{ item.contact }}</td>
                            <td>
                                <strong class="text-info">
                                    {{ item.subtotal}}
                                </strong>
                            </td>
                            <td>
                                <strong class="text-info">
                                    {{ item.shipping}}
                                </strong>
                            </td>
                            <td>
                                <strong class="text-info">
                                    {{ item.subtotal * item.shipping}}
                                </strong>
                            </td>
                            <td>
                                <strong class="text-warning">
                                    {{ item.subtotal * item.paid}}
                                </strong>
                            </td>
                            <td>
                                <span :class="`badge ${item.payment_status == 'paid'? `bg-secondary`: 'bg-danger'} me-1`">{{ item.payment_status }}</span>
                            </td>
                            <td>{{ new Date().toDateString() }} {{ new Date().toLocaleTimeString() }}</td>
                            <td>
                                <span :class="`badge ${order_status(item.status)} me-1`">{{ item.status }}</span>
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
                                            <permission-button
                                                :permission="'can_edit'"
                                                :to="{name:`Details${route_prefix}`,params:{id:item.id}}"
                                                :classList="''">
                                                <i class="fa text-secondary fa-eye"></i>
                                                Details
                                            </permission-button>
                                        </li>
                                        <li>
                                            <permission-button
                                                :permission="'can_edit'"
                                                :to="{name:`Edit${route_prefix}`,params:{id: item.id}}"
                                                :classList="''">
                                                <i class="fa text-warning fa-pencil"></i>
                                                Edit
                                            </permission-button>
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
const {route_prefix, store_prefix} = PageSetup;

export default {
    components: { PermissionButton, TableTh, DetailsCanvas, SelectedCanvas },
    data: function(){
        return {
            store_prefix,
            route_prefix,
            data: []
        }
    },
    created: function(){
        this[`fetch_${store_prefix}s`]();
        this.make_data();
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

