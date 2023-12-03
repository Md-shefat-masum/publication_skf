<template>
    <div>
        <div class="task_list custom_scroll">
            <div v-for="task in all_tasks.data" :key="task.id" class="task_item d-flex gap-2 border rounded mb-2 p-2">
                <div class="left" style="width: 30px;">
                    <input v-if="task.auth_user" :checked="task.auth_user.is_complete" type="checkbox"
                        @change="em_complete_task(task.auth_user.id)"
                        class="form-check-input border-info">
                    <br>
                    <br>
                    <router-link v-if="task.creator == auth.id" :to="{ name: 'TaskDetailsEmployee', params: { id: task.id } }"
                        class="text-warning text-1xl">
                        <i class="fa fa-pencil"></i>
                    </router-link>
                    <br>
                    <br>
                    <a v-if="task.creator == auth.id" href="#" @click.prevent="em_delete_task(task.id);" class="text-danger text-1xl">
                        <i class="fa fa-trash"></i>
                    </a>
                </div>
                <div class="right" style="flex: 1;">
                    <div class="title">
                        <div v-if="task.is_blink && task.complete == 0" class="emergency">
                            <img src="/Emergency_Light.gif" alt="">
                        </div>
                        <h5 class="cursor-pointer">
                            {{ task.title }}
                        </h5>
                    </div>
                    <div class="labels mt-2 d-flex flex-wrap gap-1">
                        <span v-for="variant in task.variants" :key="variant.id"
                            :style="`background-color: ${variant.color}`" class="badge rounded-pill badge_padding">
                            {{ variant.task_variant_title }}:
                            {{ variant.title }}
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="pt-2">
            <a v-if="all_tasks.prev_page_url" @click.prevent="employeeFetchAllTasks(all_tasks.prev_page_url)" class="btn btn-sm btn-info" href="">prev</a>
            <a v-if="all_tasks.next_page_url" @click.prevent="employeeFetchAllTasks(all_tasks.next_page_url)" class="btn btn-sm btn-info" href="">next</a>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex';

export default {
    data: function () {
        return {
            all_tasks: ''
        }
    },
    created: async function () {
        await this.employeeFetchAllTasks();
        console.log("datatask",this.all_tasks);
    },
    methods: {
        ...mapActions({
            fetch_tasks: 'super_admin_fetch_all_tasks',
            delete_task: 'delete_task',
            complete_employee_task: 'complete_employee_task',
        }),
        em_complete_task: async function(id){
            await this.complete_employee_task(id);
            // await this.employeeFetchAllTasks();
        },
        em_delete_task: async function(id){
            await this.delete_task(id);
            await this.employeeFetchAllTasks();
        },
        async employeeFetchAllTasks(url = 'task/get_all_employee_task') {
            try {
                const res = await axios.get(url);
                this.all_tasks = res.data;
            } catch (error) {
                // Handle error appropriately
                console.error('Error fetching tasks:', error);
            }
        }
    },
    computed: {
        ...mapGetters({
            auth: `get_auth_information`,
        }),
    }

}
</script>

<style></style>
