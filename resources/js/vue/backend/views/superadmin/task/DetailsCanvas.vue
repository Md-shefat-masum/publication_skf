<template>
    <div class="canvas_backdrop" :class="{active:this[`get_${store_prefix}`]}" @click="$event.target.classList.contains('canvas_backdrop') && call_store(`set_${store_prefix}`,null)">
        <div class="content right" v-if="this[`get_${store_prefix}`]">
            <div class="content_header">
                <div class="d-flex gap-1 flex-wrap align-content-center">
                    <h3 class="offcanvas-title">Details</h3>
                    <div>
                        <router-link :to="{name: 'TaskDetails', params:{id:task.id}}" class="btn btn-sm btn-outline-warning mx-1">
                            <i class="fa fa-pencil"></i> Edit
                        </router-link>
                        <a href="#" @click.prevent="delete_task(task.id)" class="btn btn-sm btn-outline-danger mx-1">
                            <i class="fa fa-trash"></i> Delete
                        </a>
                    </div>
                </div>
                <i @click="call_store(`set_${store_prefix}`,null)" class="fa fa-times"></i>
            </div>
            <div class="cotent_body">
                <table class="table">
                    <tbody>
                        <tr>
                            <td>Id</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].id }}</td>
                        </tr>
                        <tr>
                            <td>Title</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].title }}</td>
                        </tr>
                        <tr>
                            <td>Details</td>
                            <td>:</td>
                            <td>{{ this[`get_${store_prefix}`].details }}</td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations } from 'vuex'
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;
export default {
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
        }
    },
    methods: {
        ...mapMutations([`set_${store_prefix}`]),
        ...mapActions({
            fetch_tasks: 'super_admin_fetch_all_tasks',
            delete_task: 'delete_task',
            complete_task: 'complete_task',
        }),
        call_store: function(name, params=null){
            this[name](params)
        },
    },
    computed: {
        ...mapGetters([`get_${store_prefix}`]),
        ...mapGetters({
            task: `get_${store_prefix}`
        }),
    }
}
</script>

<style>

</style>
