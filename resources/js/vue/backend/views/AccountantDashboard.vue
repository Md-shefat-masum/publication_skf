<template>
    <section class="dashboard_analytics custom_scroll" style="height: calc(100vh - 90px); overflow: auto;">

        <h5 class="card-title mb-3">Income At A Glance</h5>

        <div class="analytics_list">
            <div class="card h-100 m-0">
                <div class="card-body">
                    <div class="d-flex flex-wrap align-content-center gap-1">
                        <div class="analytics_icon bg-label-success">
                            <i class="fa-solid fa-chart-pie"></i>
                        </div>
                        <div class="card-info flex-1">
                            <h5 class="mb-0">
                                {{ analytics["net_income"] }} ৳
                            </h5>
                            <small class="text-capitalize">
                                Net Incomes
                            </small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card h-100 m-0">
                <div class="card-body">
                    <div class="d-flex flex-wrap align-content-center gap-1">
                        <div class="analytics_icon bg-label-success">
                            <i class="fa-solid fa-chart-pie"></i>
                        </div>
                        <div class="card-info flex-1">
                            <h5 class="mb-0">
                                {{ analytics["life_time_income"] }} ৳
                            </h5>
                            <small class="text-capitalize">
                                total Income
                            </small>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card h-100 m-0">
                <div class="card-body">
                    <div class="d-flex flex-wrap align-content-center gap-1">
                        <div class="analytics_icon bg-label-success">
                            <i class="fa-solid fa-chart-pie"></i>
                        </div>
                        <div class="card-info flex-1">
                            <h5 class="mb-0">
                                {{ analytics["life_time_expense"] }} ৳
                            </h5>
                            <small class="text-capitalize">
                                Total Expense
                            </small>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="analytics_list mt-2">
            <div v-for="title in customer_analytics" :key="title">
                <div class="card h-100 m-0">
                    <div class="card-body">
                        <div class="d-flex flex-wrap align-content-center gap-1">
                            <div class="analytics_icon bg-label-success">
                                <i class="fa-solid fa-chart-pie"></i>
                            </div>
                            <div class="card-info flex-1">
                                <h5 class="mb-0">{{ analytics[title] }} ৳</h5>
                                <small class="text-capitalize">
                                    {{ title.replaceAll('_',' ') }}
                                </small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="analytics_list mt-2">
            <div v-for="title in supplier_analytics" :key="title">
                <div class="card h-100 m-0">
                    <div class="card-body">
                        <div class="d-flex flex-wrap align-content-center gap-1">
                            <div class="analytics_icon bg-label-success">
                                <i class="fa-solid fa-chart-pie"></i>
                            </div>
                            <div class="card-info flex-1">
                                <h5 class="mb-0">{{ analytics[title] }} ৳</h5>
                                <small class="text-capitalize">
                                    {{ title.replaceAll('_',' ') }}
                                </small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <h5 class="card-title my-3">Income Expense Statistics</h5>

        <div class="analytics_list">
            <div v-for="title in all_incomes" :key="title">
                <div class="card h-100 m-0">
                    <div class="card-body">
                        <div class="d-flex flex-wrap align-content-center gap-1">
                            <div class="analytics_icon bg-label-success">
                                <i class="fa-solid fa-chart-pie"></i>
                            </div>
                            <div class="card-info flex-1">
                                <h5 class="mb-0">{{ analytics[title] }} ৳</h5>
                                <small class="text-capitalize">
                                    {{ title.replaceAll('_',' ') }}
                                </small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="mb-5 pb-5"></div>
    </section>
</template>

<script>
export default {
    components: {  },
    data: ()=>({
        analytics: {},
        runnings: [],
        all_incomes: [
            "today_total_income",
            "today_total_expense",
            "this_month_total_income",
            "this_month_total_expense",
            "this_year_total_income",
            "this_year_total_expense",
        ],
        customer_analytics: [
            "customer_due",
            "customer_paid",
        ],
        supplier_analytics: [
            "supplier_bill",
            "supplier_paid",
            "supplier_due",
        ],
    }),
    created: async function(){
        await this.get_anaylytics();
        // await this.get_running_productions();
    },
    methods: {
        get_anaylytics: async function(){
            let analytics = await axios.get('/accountant/at-a-glance');
            this.analytics = analytics.data;
        },
        get_running_productions: async function(){
            let runnings = await axios.get('/production/production/running-productions');
            this.runnings = runnings.data;
        }
    }

}
</script>

<style>

</style>
