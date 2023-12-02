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
                    <form action="#" class="d-flex gap-1">
                        <input @keyup="call_store(`set_${store_prefix}_search_key`,$event.target.value)" class="form-control border border-info" placeholder="search..." type="search">
                        <input @change="set_selected_task_target_date($event.target.value)" @click="$event.target.showPicker();" class="form-control border border-info" type="date">
                        <select name="" id="" @change="set_selected_task_user_id($event.target.value)" class="form-select">
                            <option value="">select user</option>
                            <option v-for="employee in all_employee" :value="employee.id" :key="employee.id">
                                {{ employee.first_name }}
                                {{ employee.last_name }}
                            </option>
                        </select>
                        <button type="reset" @click="reset_task_filter()" class="btn btn-sm btn-outline-warning">
                            clear
                        </button>
                    </form>
                </div>
                <div class="btns d-flex gap-2 align-items-center">
                    <!-- <router-link
                        :permission="'can_create'"
                        :to="{name: `Create${route_prefix}`}"
                        :class="'btn rounded-pill btn-outline-info'">
                        <i class="fa fa-pencil me-5px"></i>
                        Create
                    </router-link> -->
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
                            <!-- <li>
                                <router-link :to="{name:`Import${route_prefix}`}">
                                    <i class="fa-regular fa-hand-point-right"></i>
                                    Import
                                </router-link>
                            </li> -->
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
                            <table-th :sort="true" :tkey="'title'" :title="'Title'" />
                            <table-th :sort="true" :tkey="'target_date'" :title="'date'" />
                            <table-th :sort="true" :tkey="'target_time'" :title="'time'" />
                            <table-th :sort="true" :tkey="'complete'" :title="'IS Complete'" />
                            <table-th :sort="true" :tkey="'is_blink'" :title="'Is Important'" />
                            <table-th :sort="true" :tkey="'details'" :title="'Details'" />
                            <!-- <table-th :sort="true" :tkey="'status'" :title="'Status'" /> -->
                            <th aria-label="actions">Actions</th>
                        </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                        <tr v-for="item in this[`get_${store_prefix}s`].data" :key="item.id">
                            <td>
                                <input v-if="check_if_data_is_selected(item)" :data-id="item.id" checked @change="call_store(`set_selected_${store_prefix}s`,item)" type="checkbox" class="form-check-input">
                                <input v-else @change="call_store(`set_selected_${store_prefix}s`,item)" type="checkbox" class="form-check-input">
                            </td>
                            <td>{{ item.id }}</td>
                            <td class="text-start">
                                <span style="width: 35px;" class="me-1 d-inline-block">
                                    <img style="width: 35px; float:left; " v-if="item.is_blink && item.complete==0"  src="/Emergency_Light.gif" alt="">
                                </span>
                                <span class="text-warning cursor_pointer" @click.prevent="call_store(`set_${store_prefix}`,item)">
                                    {{ item.title }}
                                </span>
                            </td>
                            <td>{{ item.formated_date }} </td>
                            <td>{{ item.formated_time }} </td>
                            <td>
                                <!-- <div v-if="!selected_task_user_id" class="form-check form-switch">
                                    <label class="form-check-label" for="flexSwitchCheckChecked">
                                        <input @change="complete_task(item.id)" v-if="item.complete" checked class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" >
                                        <input @change="complete_task(item.id)" v-else class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" >
                                    </label>
                                </div> -->
                                <div v-if="selected_task_user_id" class="form-check form-switch">
                                    <label class="form-check-label" for="flexSwitchCheckChecked">
                                        <input @change="complete_employee_task(item.given_user.id)" v-if="item.given_user.is_complete" checked class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" >
                                        <input @change="complete_employee_task(item.given_user.id)" v-else class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" >
                                    </label>
                                </div>
                            </td>
                            <td>
                                <div class="form-check form-switch">
                                    <label class="form-check-label" for="flexSwitchCheckChecked">
                                        <input @change="blink_task(item.id); item.is_blink = 0;" v-if="item.is_blink" checked class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" >
                                        <input @change="blink_task(item.id); item.is_blink = 1;" v-else class="form-check-input" type="checkbox" role="switch" id="flexSwitchCheckChecked" >
                                    </label>
                                </div>
                            </td>
                            <td>{{ item.details }} </td>
                            <!-- <td>
                                <span v-if="item.status == 1" class="badge bg-label-success me-1">active</span>
                                <span v-if="item.status == 0" class="badge bg-label-success me-1">deactive</span>
                            </td> -->
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
                                        <!-- <li>
                                            <permission-button
                                                :permission="'can_create'"
                                                :to="{name:`Details${route_prefix}`,params:{id:item.id}}"
                                                :classList="''">
                                                <i class="fa text-secondary fa-eye"></i>
                                                Details
                                            </permission-button>
                                        </li> -->
                                        <li>
                                            <permission-button
                                                :permission="'can_create'"
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

        }
    },
    created: async function(){
        await this.fetch_all_employee();
        await this[`fetch_${store_prefix}s`]();
    },
    methods: {
        ...mapActions([
            `fetch_${store_prefix}s`,
            `soft_delete_${store_prefix}`,
            `restore_${store_prefix}`,
            `export_${store_prefix}_all`,
            `export_selected_${store_prefix}_csv`,
            `fetch_all_employee`,
            'complete_employee_task',
        ]),
        ...mapActions({
            fetch_tasks: 'super_admin_fetch_all_tasks',
            delete_task: 'delete_task',
            complete_task: 'complete_task',
            blink_task: 'blink_task',
        }),
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
            `set_selected_task_user_id`,
            `set_selected_task_target_date`,
            `reset_task_filter`,
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
    },
    computed: {
        ...mapGetters([
            `get_${store_prefix}s`,
            `get_${store_prefix}_selected`,
            `get_${store_prefix}_show_active_data`,
            `selected_task_user_id`,
            `all_employee`,
        ]),
    }
}
</script>

<style>

</style>

PermissionButton
