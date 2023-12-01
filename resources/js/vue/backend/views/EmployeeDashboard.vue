<template>
    <section class="dashboard_analytics custom_scroll" style="height: calc(100vh - 90px); overflow: auto;">
        <h5 class="card-title mb-3 mt-5">Task At a Glance</h5>

        <div class="analytics_list">
            <div v-for="title in task_titles" :key="title">
                <div class="card h-100 m-0">
                    <div class="card-body">
                        <div class="d-flex flex-wrap align-content-center gap-1">
                            <div class="analytics_icon bg-label-success">
                                <i class="fa-solid fa-chart-pie"></i>
                            </div>
                            <div class="card-info flex-1">
                                <h5 class="mb-0">{{ analytics[title] }}</h5>
                                <small class="text-capitalize">
                                    {{ title.replaceAll('_',' ') }}
                                </small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6">
                <div class="card  my-4">
                    <div class="card-header d-flex justify-content-between">
                        <div>
                            Task List
                        </div>
                        <div>
                            <button @click="employeeFetchAllTasks" class="btn me-1">all</button>
                            <input type="date" @change="employeeFetchAllTasks({date: $event.target.value})" @click="$event.target.showPicker();">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="today_tasks">
                            <ul class="custom_scroll">
                                <li v-for="task in get_employee_taks.data" :key="task.id">
                                    <div class="left">
                                        <input :checked="task.auth_user && task.auth_user.is_complete" @change="complete_employee_task(task.auth_user.id)" type="checkbox" class="form-check-input">
                                        <router-link v-if="task.creator && task.creator == auth.id" :to="{ name: 'TaskDetailsEmployee', params: { id: task.id } }"
                                            class="text-warning">
                                            <i class="fa fa-pencil"></i>
                                        </router-link>
                                    </div>
                                    <div class="right">
                                        {{ format_date(task.target_date) }} -
                                        {{ task.title }}
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="card-footer">
                        <form @submit.prevent="create_new_task" class="d-flex justify-content-between" action="">
                            <div class="flex-1">
                                <input type="text" name="title" id="title" class="form-control">
                            </div>
                            <div class="d-flex align-items-center justify-content-center ms-1">
                                <label for="target_date">
                                    <i class="fa fa-calendar"></i>
                                    <input id="target_date" @focus="$event.target.showPicker();" type="date" style="width: 0px;height:0;" name="target_date">
                                </label>
                            </div>
                            <button class="btn">
                                <i class="fa fa-paper-plane"></i>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </section>
</template>

<script>
import moment from 'moment';
import { mapActions, mapGetters } from 'vuex';

export default {
    components: {},
    data() {
        return {
            task_title: '',
            analytics: {},
            titles: [
                "total_order",
                "pending_order",
                "accepted_order",
                "processing_order",
                "delivered_order",
                "canceled_order",
            ],
            account_titles: [
                "total_bill",
                "total_paid",
                "total_due",
            ],
            task_titles: [
                "total_task",
                "incomplete_task",
                "complete_task",
                "important_task",
            ],
        }
    },
    created: async function(){
        await this.get_analytics();
        await this.employeeFetchAllTasks();
    },
    methods: {
        ...mapActions([
            'employeeFetchAllTasks',
            'complete_employee_task',
            'new_task',
        ]),
        get_analytics: async function(){
            let res = await axios.get('admin/at-a-glance');
            // console.log(res.data);
            this.analytics = res.data.anatytics;
            this.titles = res.data.keys;
            this.account_titles = res.data.account_keys;
            this.task_titles = res.data.task_keys;
        },
        create_new_task: async function(){
            await this.new_task();
            await this.employeeFetchAllTasks();
        },
        format_date: function(date){
            if(date){
                return moment(date).format('DD-MMM-YY')
            }
            return '';
        }
    },
    computed: {
        ...mapGetters([
            'get_employee_taks',

        ]),
        ...mapGetters({
            auth: `get_auth_information`,
        }),
    }
}
</script>

<style scoped>
.badge {
    --bs-badge-padding-x: 1em;
    --bs-badge-padding-y: 0.49em;
    --bs-badge-font-size: 0.81em;
    --bs-badge-font-weight: 600;
    --bs-badge-color: #fff;
    --bs-badge-border-radius: 0.25rem;
    display: inline-block;
    padding: var(--bs-badge-padding-y) var(--bs-badge-padding-x);
    font-size: var(--bs-badge-font-size);
    font-weight: var(--bs-badge-font-weight);
    line-height: 1;
    color: var(--bs-badge-color);
    text-align: center;
    white-space: nowrap;
    vertical-align: baseline;
    border-radius: var(--bs-badge-border-radius)
}

.badge:empty {
    display: none
}

.btn .badge {
    position: relative;
    top: -1px
}

.rounded-circle {
    border-radius: 50% !important
}

.rounded-pill {
    border-radius: 50rem !important
}

.rounded-top {
    border-top-left-radius: .375rem !important;
    border-top-right-radius: .375rem !important
}

.rounded-bottom {
    border-bottom-right-radius: .375rem !important;
    border-bottom-left-radius: .375rem !important
}

.row-bordered.row-border-light>.col::before,
.row-bordered.row-border-light>.col::after,
.row-bordered.row-border-light>[class^=col-]::before,
.row-bordered.row-border-light>[class^=col-]::after,
.row-bordered.row-border-light>[class*=" col-"]::before,
.row-bordered.row-border-light>[class*=" col-"]::after,
.row-bordered.row-border-light>[class^="col "]::before,
.row-bordered.row-border-light>[class^="col "]::after,
.row-bordered.row-border-light>[class*=" col "]::before,
.row-bordered.row-border-light>[class*=" col "]::after,
.row-bordered.row-border-light>[class$=" col"]::before,
.row-bordered.row-border-light>[class$=" col"]::after,
.row-bordered.row-border-light>[class=col]::before,
.row-bordered.row-border-light>[class=col]::after {
    border-color: rgba(255, 255, 255, .8)
}

[dir=rtl] .row-bordered>.col::after,
[dir=rtl] .row-bordered>[class^=col-]::after,
[dir=rtl] .row-bordered>[class*=" col-"]::after,
[dir=rtl] .row-bordered>[class^="col "]::after,
[dir=rtl] .row-bordered>[class*=" col "]::after,
[dir=rtl] .row-bordered>[class$=" col"]::after,
[dir=rtl] .row-bordered>[class=col]::after {
    left: auto;
    right: -1px
}

.bg-label-secondary {
    background-color: #424659 !important;
    color: #a8aaae !important
}

.bg-label-success {
    background-color: #2e4b4f !important;
    color: #28c76f !important
}

.bg-label-info {
    background-color: #274c62 !important;
    color: #00cfe8 !important
}

.bg-label-warning {
    background-color: #504448 !important;
    color: #ff9f43 !important
}

.bg-label-danger {
    background-color: #4d384b !important;
    color: #ea5455 !important
}

.bg-label-light {
    background-color: #32364c !important;
    color: #44475b !important
}

.bg-label-dark {
    background-color: #4a4d61 !important;
    color: #d7d8de !important
}

.bg-label-gray {
    background-color: rgba(70, 74, 94, .968) !important;
    color: rgba(255, 255, 255, .8) !important
}

.bg-dark {
    color: #fff;
    background-color: #44475b !important
}

.bg-label-dark {
    background-color: #32364c !important;
    color: #44475b !important
}

a.bg-dark:hover,
a.bg-dark:focus {
    background-color: rgba(0, 0, 0, .65) !important
}

a.bg-light:hover,
a.bg-light:focus {
    background-color: rgba(255, 255, 255, .6) !important
}

a.bg-lighter:hover,
a.bg-lighter:focus {
    background-color: rgba(255, 255, 255, .8) !important
}

a.bg-lightest:hover,
a.bg-lightest:focus {
    background-color: rgba(255, 255, 255, .03) !important
}

.bg-label-primary {
    background-color: #3a3b64 !important;
    color: #7367f0 !important
}</style>
