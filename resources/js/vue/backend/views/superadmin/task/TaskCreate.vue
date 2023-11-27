<template>
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-header">
                        <h4>Create</h4>
                    </div>
                    <div class="card-body custom_scroll" style="max-height: calc(100vh - 300px); overflow: auto;">
                        <form @submit.prevent="new_task">
                            <div class="form-group mb-2">
                                <label>Title</label>
                                <div>
                                    <textarea type="text" id="title" name="title" rows="1" class="form-control mt-2"></textarea>
                                </div>
                            </div>
                            <div class="form-group mb-2">
                                <label>Description</label>
                                <div>
                                    <textarea type="text" name="details" rows="1" class="form-control mt-2"></textarea>
                                </div>
                            </div>
                            <div class="form-group mb-2">
                                <label>Completion Date</label>
                                <div>
                                    <input type="date" @click="$event.target.showPicker()" name="target_date" class="form-control mt-2" />
                                </div>
                            </div>
                            <div class="form-group mb-2">
                                <label>Completion Time</label>
                                <div>
                                    <input type="time" @click="$event.target.showPicker()" name="target_time" class="form-control mt-2" />
                                </div>
                            </div>
                            <div class="form-group mb-2">
                                <label class="">
                                    <input type="checkbox" @change="is_important = !is_important" :value="is_important?1:0" name="is_blink" class="form-check-input border-warning" />
                                    Is Most Important
                                </label>
                            </div>
                            <div>
                                <button class="btn btn-outline-success btn rounded-pill">submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-header">
                        <h4>Task List</h4>
                    </div>
                    <div class="card-body">
                        <task-list></task-list>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions } from 'vuex'
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
            is_important: false,
        }
    },
    created: function () {},
    methods: {
        ...mapActions([`store_${store_prefix}`,'new_task']),
        call_store: function(name, params=null){
            this[name](params)
        },
    },
};
</script>

<style>
</style>
