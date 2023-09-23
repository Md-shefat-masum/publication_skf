<template>
    <section class="p-5 custom_scroll" style="height: calc(100vh - 90px); overflow: auto;">
        <div class="row">
            <div class="col-xl-12 mb-4 col-lg-12 col-12">
                <div class="card ">
                    <div class="card-header">
                        <div class="d-flex mb-3 w-100 gap-5">
                            
                            <h5 class="card-title mb-0 flex-grow-1">Statistics</h5>

                            <div class="d-inline">
                                <label for="from_date">From Date</label>
                                <input @change="handleFilter()" v-model="from_date" class="form-control" type="date" name="date" id="from_date">
                            </div>

                            <div class="d-inline">
                                <label for="to_date">To Date</label>
                                <input @change="handleFilter()" v-model="to_date" class="form-control" type="date" name="date" id="to_date">
                            </div>
                            
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row gy-3">

                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-primary me-3 p-2"><i class="fa-solid fa-chart-pie"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">৳ {{ get_dashboard_stats.income_expense_data.total_ecommerce_order }}</h5>
                                        <small>Total Ecommerce Order</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-info me-3 p-2"><i class="fa-solid fa-user-group"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">{{ get_dashboard_stats.income_expense_data.total_customer }}</h5>
                                        <small>Total Customers</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-danger me-3 p-2"><i class="fa-solid fa-cart-shopping"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">{{ get_dashboard_stats.income_expense_data.total_products }}</h5>
                                        <small>Total Products</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-success me-3 p-2"><i class="fa-solid fa-money-bills"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">৳ {{ get_dashboard_stats.income_expense_data.total_expense }}</h5>
                                        <small>Total expense</small>
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-primary me-3 p-2"><i class="fa-solid fa-shop-lock"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">230k</h5>
                                        <small>Total Branch</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-info me-3 p-2"><i class="fa-solid fa-list"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">8.549k</h5>
                                        <small>Total Categories</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-danger me-3 p-2"><i class="fa-solid fa-shop"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">1.423k</h5>
                                        <small>Total sales for this month</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-success me-3 p-2"><i class="fa-solid fa-money-bills"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">$9745</h5>
                                        <small>Total sales for today</small>
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-primary me-3 p-2"><i class="fa-solid fa-boxes-packing"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">230k</h5>
                                        <small>Top Selling Products</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-info me-3 p-2"><i class="fa-solid fa-box-archive"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">8.549k</h5>
                                        <small>Less selling products</small>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
import { mapActions, mapGetters } from "vuex";
export default {
  components: {  },
  data() {
    return {
      from_date: null,
      to_date: null
    }
  },
  created: function() {
    this.fetch_dashboard_stats();
  },
  methods: {
    ...mapActions([
        `fetch_dashboard_stats`,
        `fetch_dashboard_stats_by_date`
    ]),
    handleFilter: function(event) {
        if(this.from_date !== null && this.to_date !== null) {
            this.fetch_dashboard_stats_by_date(event);
        }
    }
  },
  computed: {
    ...mapGetters([`get_dashboard_stats`])
  },
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

    .row-bordered.row-border-light>.col::before,.row-bordered.row-border-light>.col::after,.row-bordered.row-border-light>[class^=col-]::before,.row-bordered.row-border-light>[class^=col-]::after,.row-bordered.row-border-light>[class*=" col-"]::before,.row-bordered.row-border-light>[class*=" col-"]::after,.row-bordered.row-border-light>[class^="col "]::before,.row-bordered.row-border-light>[class^="col "]::after,.row-bordered.row-border-light>[class*=" col "]::before,.row-bordered.row-border-light>[class*=" col "]::after,.row-bordered.row-border-light>[class$=" col"]::before,.row-bordered.row-border-light>[class$=" col"]::after,.row-bordered.row-border-light>[class=col]::before,.row-bordered.row-border-light>[class=col]::after {
        border-color: rgba(255,255,255,.8)
    }

    [dir=rtl] .row-bordered>.col::after,[dir=rtl] .row-bordered>[class^=col-]::after,[dir=rtl] .row-bordered>[class*=" col-"]::after,[dir=rtl] .row-bordered>[class^="col "]::after,[dir=rtl] .row-bordered>[class*=" col "]::after,[dir=rtl] .row-bordered>[class$=" col"]::after,[dir=rtl] .row-bordered>[class=col]::after {
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
        background-color: rgba(70,74,94,.968) !important;
        color: rgba(255,255,255,.8) !important
    }

    .bg-dark {
        color: #fff;
        background-color: #44475b !important
    }

    .bg-label-dark {
        background-color: #32364c !important;
        color: #44475b !important
    }

    a.bg-dark:hover,a.bg-dark:focus {
        background-color: rgba(0,0,0,.65) !important
    }

    a.bg-light:hover,a.bg-light:focus {
        background-color: rgba(255,255,255,.6) !important
    }

    a.bg-lighter:hover,a.bg-lighter:focus {
        background-color: rgba(255,255,255,.8) !important
    }

    a.bg-lightest:hover,a.bg-lightest:focus {
        background-color: rgba(255,255,255,.03) !important
    }
    .bg-label-primary {
        background-color: #3a3b64 !important;
        color: #7367f0 !important
    }

</style>
