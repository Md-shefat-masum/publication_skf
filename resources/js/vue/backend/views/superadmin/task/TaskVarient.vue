<template>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <h4>
                            Varients
                        </h4>
                    </div>
                    <div class="card-body ">
                        <ul class="task_list custom_scroll" style="max-height: 500px;">
                            <li @click="select(varient)" v-for="varient in varients" :key="varient.id" class="pb-1 cursor-pointer">
                                {{ varient.title }}
                            </li>
                        </ul>
                    </div>
                    <div class="card-footer">
                        <label>New Varient</label>
                        <form @submit.prevent="new_varient" class="d-flex gap-2 align-items-start">
                            <div>
                                <textarea class="form-control" name="title" rows="1"></textarea>
                            </div>
                            <button class="btn btn-sm btn-outline-success">submit</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <div>
                            {{ selected_varient.title }} values
                        </div>
                    </div>
                    <div class="card-body">
                        <ul class="task_list custom_scroll">
                            <li class="d-flex gap-2" v-if="!varient_values.length">
                                <div>
                                    <a href="#" @click.prevent="add_new_varient()">
                                        <i class="fa fa-plus text-info"></i> create new
                                    </a>
                                </div>
                                <div class="flex_1">
                                </div>
                            </li>
                            <li class="d-flex gap-2" v-for="(value, index) in varient_values" :key="index">
                                <div>
                                    <a @click.prevent="remove_varient(index)" href="#">
                                        <i class="fa fa-trash text-danger"></i>
                                    </a>
                                    <br>
                                    <br>
                                    <a href="#" @click.prevent="add_new_varient()" v-if="index == varient_values.length - 1">
                                        <i class="fa fa-plus text-info"></i>
                                    </a>
                                </div>
                                <div class="flex_1">
                                    <textarea class="form-control mb-2" v-model="value.title"></textarea>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="card-footer">
                        <button v-if="varient_values.length" @click.prevent="save_varients(varient_values)" class="btn btn-outline-success btn-sm">
                            Save Values
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;

export default {
    components: { },
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
            varient_values: [],
        }
    },
    created: async function () {
        await this.fetch_varients();
        this.$watch('selected_varient',function(v){
            this.varient_values = this.selected_varient.values
        });
    },
    methods: {
        ...mapActions({
            fetch_varients: "super_admin_fetch_all_tasks_varients",
            select: "super_admin_selecte_varient",
            save_varients: "save_varients",
            new_varient: "new_varient",
        }),
        add_new_varient: function(){
            if(this.selected_varient.id){
                this.varient_values.push({
                    "task_variant_id": this.selected_varient.id,
                    "task_variant_title": this.selected_varient.title,
                    "title": "",
                    "color": "",
                });
            }
        },
        remove_varient: function(index){
            this.varient_values.splice(index, 1);
        },

    },
    computed: {
        ...mapGetters({
            varients: "super_admin_all_task_varients",
            selected_varient: "super_admin_selected_varient",
        })
    }
};
</script>

<style>
</style>
