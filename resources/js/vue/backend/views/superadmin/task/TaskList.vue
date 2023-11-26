<template>
    <div class="task_list custom_scroll">
        <div v-for="task in all_tasks.data" :key="task.id" class="task_item d-flex gap-2 border rounded mb-2 p-2">
            <div class="left" style="width: 30px;">
                <input type="checkbox" class="form-check-input border-info">
            </div>
            <div class="right" style="flex: 1;">
                <div class="title">
                    <div v-if="task.is_blink" class="emergency">
                        <img src="/Emergency_Light.gif" alt="">
                    </div>
                    <h3 class="cursor-pointer">
                        {{ task.title }}
                    </h3>
                </div>
                <div class="labels mt-2 d-flex flex-wrap gap-1">
                    <span v-for="variant in task.variants" :key="variant.id"
                        :style="`background-color: ${variant.color}`"
                        class="badge rounded-pill badge_padding">
                        {{ variant.task_variant_title }}:
                        {{ variant.title }}
                    </span>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
export default {
    created: function(){
        this.fetch_tasks();
    },
    methods: {
        ...mapActions({
            fetch_tasks: 'super_admin_fetch_all_tasks',
        })
    },
    computed:{
        ...mapGetters({
            all_tasks: "super_admin_all_tasks"
        })
    }
}
</script>

<style>

</style>
