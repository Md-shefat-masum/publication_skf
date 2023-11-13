<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>Details</h4>
                <div class="btns">
                    <a href="" @click.prevent="call_store(`set_${store_prefix}`,null), $router.push({ name: `AllProductions` })"  class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        <span >
                            Back
                        </span>
                    </a>
                </div>
            </div>
            <div class="card-body pb-5 ">
                <div class="row justify-content-center">
                    <div class="col-lg-7 ">
                        <table v-if="this[`get_${store_prefix}`]" class="table table-bordered details_table">
                            <tr>
                                <td>id</td>
                                <td>{{ this[`get_${store_prefix}`].id }}</td>
                            </tr>
                            <tr>
                                <td>product</td>
                                <td>{{ data.product_info.product_name }}</td>
                            </tr>
                            <tr>
                                <td>print qty</td>
                                <td>{{ data.print_qty }}</td>
                            </tr>
                            <tr>
                                <td>Paper amount</td>
                                <td>{{ data.paper_amount }} ream</td>
                            </tr>
                            <tr>
                                <td>Designer</td>
                                <td>{{ data.design?.name }}</td>
                            </tr>
                            <tr>
                                <td>production statuses</td>
                                <td>
                                    <div v-for="(statuss, index) in data.production_status" :key="statuss.id" class="d-flex gap-2">
                                        <div><b>{{index}}. {{ statuss.status }}</b>: </div>
                                        <div>{{ statuss.description }}</div>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>status </td>
                                <td>
                                    <span v-if="this[`get_${store_prefix}`].status == 1" class="badge bg-label-success me-1">active</span>
                                    <span v-if="this[`get_${store_prefix}`].status == 0" class="badge bg-label-success me-1">deactive</span>
                                </td>
                            </tr>
                            <tr>
                                <td>created at </td>
                                <td>
                                    {{ new Date(this[`get_${store_prefix}`].created_at).toDateString()  }}, &nbsp;
                                    {{ new Date(this[`get_${store_prefix}`].created_at).toLocaleTimeString()  }}
                                </td>
                            </tr>
                            <tr>
                                <td>updated at </td>
                                <td>
                                    {{ new Date(this[`get_${store_prefix}`].updated_at).toDateString()  }}, &nbsp;
                                    {{ new Date(this[`get_${store_prefix}`].updated_at).toLocaleTimeString()  }}
                                </td>
                            </tr>
                        </table>
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
const {route_prefix} = PageSetup;
const store_prefix = 'production_production';
export default {
    components: { PermissionButton },
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
        }
    },
    created: function () {
        this[`fetch_production`]({id: this.$route.params.id, select_all:1})
    },
    methods: {
        ...mapActions([
            `fetch_production`,
        ]),
        ...mapMutations([
            `set_${store_prefix}`
        ]),
        call_store: function(name, params=null){
            this[name](params)
        },
    },
    computed: {
        ...mapGetters([`get_${store_prefix}`]),
        ...mapGetters({
            data: `get_${store_prefix}`
        }),
    }
}
</script>

<style>

</style>
