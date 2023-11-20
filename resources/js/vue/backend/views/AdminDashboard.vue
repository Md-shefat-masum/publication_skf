<template>
    <section class="dashboard_analytics custom_scroll" style="height: calc(100vh - 90px); overflow: auto;">

        <h5 class="card-title mb-3">Statistics</h5>

        <div class="analytics_list">
            <div v-for="title in titles" :key="title">
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
    </section>
</template>

<script>

export default {
    components: {},
    data() {
        return {
            analytics: {},
            titles: [
                "total_order",
                "pending_order",
                "accepted_order",
                "processing_order",
                "delivered_order",
                "canceled_order",
                "total_paid",
                "total_due",
            ],
        }
    },
    created: async function(){
        await this.get_analytics();
    },
    methods: {
        get_analytics: async function(){
            let res = await axios.get('admin/at-a-glance');
            console.log(res.data);
            this.analytics = res.data.anatytics;
            this.titles = res.data.keys;
        }
    }
}
</script>

<style scoped>


</style>
