<template>
    <div class="container">
        <form @submit.prevent="save_task_details()">
            <div class="card">
                <div class="card-body list_card table-responsive custom_scroll" style="max-height: calc(100vh - 250px);">
                    <div class="row">
                        <div class="col-md-7">
                            <div class="form-group mb-3">
                                <label for="">Title</label>
                                <div>
                                    <input type="hidden" name="id" :value="$route.params.id">
                                    <textarea class="form-control" name="title" id="title" :value="task.title"></textarea>
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <label for="">Details</label>
                                <div>
                                    <textarea class="form-control" name="details" id="details" :value="task.details"></textarea>
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <label for="">Mark as complete</label>
                                <div>
                                    <div class="form-check form-switch">
                                        <label class="form-check-label" for="complete">
                                            <input name="complete" id="complete" @change="complete = !complete" :value="complete?1:0"  v-if="task.complete" checked class="form-check-input" type="checkbox" role="switch" >
                                            <input name="complete" id="complete" @change="complete = !complete" :value="complete?1:0"   v-else class="form-check-input" type="checkbox" role="switch" >
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <label for="">target_date</label>
                                <div>
                                    <input type="date" @click="$event.target.showPicker()" class="form-control" name="target_date" id="target_date" :value="task.target_date"/>
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <label for="">Target time</label>
                                <div>
                                    <input @click="$event.target.showPicker()" type="time" class="form-control" name="target_time" id="target_time" :value="task.target_time"/>
                                </div>
                            </div>
                            <div class="form-group mb-3">
                                <label for="">Is Important</label>
                                <div>
                                    <div class="form-check form-switch">
                                        <label class="form-check-label" for="is_blink">
                                            <input name="is_blink" id="is_blink" @change="is_blink = !is_blink" :value="is_blink?1:0"  v-if="task.is_blink" checked class="form-check-input" type="checkbox" role="switch" >
                                            <input name="is_blink" id="is_blink" @change="is_blink = !is_blink" :value="is_blink?1:0"  v-else class="form-check-input" type="checkbox" role="switch" >
                                        </label>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-5">
                            <div class="form-group mb-2" v-for="varient in super_admin_all_task_varients" :key="varient.id">
                                <label for="">Select {{ varient.title }}</label>
                                <select :name="`varients[]`" class="form-select" id="">
                                    <option value="">select</option>
                                    <option :selected="varients_id?.includes(value.id)" v-for="value in varient.values" :key="value.id" :value="value.id">
                                        {{ value.title }}
                                    </option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <button class="btn btn-sm btn-info">submit</button>
                </div>
            </div>
        </form>
    </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
import InputField from '../../components/InputField.vue'
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
import TaskList from './TaskList.vue';
const {route_prefix, store_prefix} = PageSetup;

export default {
    components: { InputField, TaskList},
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
            complete: false,
            is_blink: false,
        }
    },
    created: async function () {
        await this.fetch_all_employee();
        await this.super_admin_fetch_all_tasks_varients();
        await this.get_task(this.$route.params.id);
        this.is_important = this.task.is_blink;
        this.complete = this.task.complete;
    },
    methods: {
        ...mapActions([
            'get_task',
            'fetch_all_employee',
            'super_admin_fetch_all_tasks_varients',
            'save_task_details',
        ]),
        call_store: function(name, params=null){
            this[name](params)
        },
    },
    computed: {
        ...mapGetters([
            'task',
            'all_employee',
            'super_admin_all_task_varients'
        ]),
        varients_id: function(){
            return this.task?.variants?.map(i=>i.id);
        },
        users_id: function(){
            return this.task?.users?.map(i=>i.id);
        }
    }
};
</script>

<style>
</style>
