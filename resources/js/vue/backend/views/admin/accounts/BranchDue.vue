<template>
    <div class="container-fluid">
        <div class="card list_card">
            <div class="card-header">
                <h4>
                    Branch Due List
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

                    <div class="table_actions">
                        <a href="#" @click.prevent="()=>''" class="btn px-1 btn-outline-secondary">
                            <i class="fa fa-list"></i>
                        </a>
                        <ul>
                            <li>
                                <a href="" @click.prevent="export_in_csv({data:all_dues, col:[`first_name`,`last_name`,`mobile_number`,`total_bill`,`total_paid`,`total_due`]})">
                                    <i class="fa-regular fa-hand-point-right"></i>
                                    Export All
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
                            <!-- <th><input @click="call_store(`set_select_all_${store_prefix}s`)" type="checkbox" class="form-check-input check_all"></th> -->
                            <table-th :sort="false" :tkey="'id'" :title="'SL'" :ariaLable="'id'"/>
                            <table-th :sort="false" :tkey="''" :title="'Full Name'" />
                            <table-th :sort="false" :tkey="''" :title="'Contact'" />
                            <table-th :sort="false" :tkey="''" :title="'Total Bill'" />
                            <table-th :sort="false" :tkey="''" :title="'Total Paid'" />
                            <table-th :sort="false" :tkey="''" :title="'Total Due'" />
                        </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                        <tr v-for="(branch, index) in all_dues" :key="branch.id">
                            <td>{{ index + 1 }}</td>
                            <td>{{ branch.first_name }} {{ branch.last_name }}</td>
                            <td>{{ branch.mobile_number }}</td>
                            <td>{{ branch.total_bill }}</td>
                            <td>{{ branch.total_paid }}</td>
                            <td>{{ branch.total_due }}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="card-footer py-1 border-top-0">

            </div>
        </div>

    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations } from 'vuex';
import PermissionButton from '../../components/PermissionButton.vue';
import TableTh from './components/TableTh.vue';

/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;

export default {
    components: { PermissionButton, TableTh, },
    data: function(){
        return {
            store_prefix,
            route_prefix,

        }
    },
    created: async function(){
        await this.branch_all_dues();
    },
    methods: {
        ...mapActions([
            'export_in_csv',
            `branch_all_dues`,
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
    },
    computed: {
        ...mapGetters([
            `get_${store_prefix}s`,
            `get_${store_prefix}_selected`,
            `get_${store_prefix}_show_active_data`,
            'all_dues',
        ]),
    }
}
</script>

<style>

</style>

PermissionButton
