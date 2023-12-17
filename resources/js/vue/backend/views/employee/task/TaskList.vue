<template>
    <div>
        <div class="task_list custom_scroll">
            <div v-for="task in all_tasks.data" :key="task.id" class="task_item d-flex gap-2 border rounded mb-2 p-2">
                <div class="left" style="width: 30px;">
                    <input :checked="task.complete" type="checkbox" @change="complete_task(task.id)"
                        class="form-check-input border-info">
                    <br>
                    <br>
                    <router-link :to="{ name: 'TaskDetailsEmployee', params: { id: task.id } }"
                        class="text-warning text-1xl">
                        <i class="fa fa-pencil"></i>
                    </router-link>
                    <br>
                    <br>
                    <a href="#" @click.prevent="delete_task(task.id)" class="text-danger text-1xl">
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
            <a @click.prevent="fetch_tasks(all_tasks.prev_page_url)" class="btn btn-sm btn-info" href="">prev</a>
            <a @click.prevent="fetch_tasks(all_tasks.next_page_url)" class="btn btn-sm btn-info" href="">next</a>
        </div>
    </div>
</template>

<script>
import { mapActions } from 'vuex';

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
        ...mapActions(['complete_task']),
        async employeeFetchAllTasks() {
            try {
                const res = await axios.get('task/get_all_employee_task');
                this.all_tasks = res.data;
            } catch (error) {
                // Handle error appropriately
                console.error('Error fetching tasks:', error);
            }
        }
    },

}
</script>

<style></style>
