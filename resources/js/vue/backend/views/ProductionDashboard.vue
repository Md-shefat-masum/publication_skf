<template>
    <section class="dashboard_analytics custom_scroll" style="height: calc(100vh - 90px); overflow: auto;">

        <h5 class="card-title mb-3">Product Statistics</h5>

        <div class="analytics_list">
            <div v-for="title in products" :key="title">
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

        <h5 class="card-title my-3">Production Statistics</h5>

        <div class="analytics_list">
            <div v-for="title in productions" :key="title">
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
                <h5 class="card-title my-3">Running Productions</h5>
                <div class="card">
                    <div class="card-body">
                        <table class="table table-center">
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr v-for="production in runnings" :key="production.id">
                                    <td>
                                        <router-link
                                            :to="{name:`DetailsProductionOrder`,params:{id:production.id}}"
                                            class="text-warning">
                                            {{ production.product_info.product_name }}
                                        </router-link>
                                    </td>
                                    <td>
                                        {{ production.production_status[production.production_status.length-1].status }}
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </section>
</template>

<script>
export default {
    components: {  },
    data: ()=>({
        analytics: {},
        runnings: [],
        products: [
            "total_products",
            "outstock_products",
            "instock_products",
        ],
        productions: [
            "total_production",
            "running_production",
            "complete_production",
        ],
    }),
    created: async function(){
        await this.get_anaylytics();
        await this.get_running_productions();
    },
    methods: {
        get_anaylytics: async function(){
            let analytics = await axios.get('/production/at-a-glance');
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
