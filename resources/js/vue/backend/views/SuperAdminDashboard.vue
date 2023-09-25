<template>
    <section class="p-5 custom_scroll" style="height: calc(100vh - 90px); overflow: auto;">
        <div class="row">
            <div class="col-xl-12 mb-4 col-lg-12 col-12">
                <div class="card">
                    <div class="card-header">
                        <div class="d-flex mb-3 w-100 gap-5">
                            
                            <h5 class="card-title mb-0 flex-grow-1">Statistics</h5>

                            <div class="d-inline">
                                <label for="from_date">From Date</label>
                                <input v-model="from_date" class="form-control" type="date" name="date" id="from_date">
                            </div>

                            <div class="d-inline">
                                <label for="to_date">To Date</label>
                                <input v-model="to_date" class="form-control" type="date" name="date" id="to_date">
                                
                            </div>

                            <div class="d-inline">
                                <button @click="handleFilter()" class="btn btn-primary mt-2">Filter</button>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row gy-3" v-if="stats">

                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-primary me-3 p-2"><i class="fa-solid fa-chart-pie"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">৳ {{ stats.income_expense_data.total_ecommerce_order }}</h5>
                                        <small>Total Ecommerce Order</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-info me-3 p-2"><i class="fa-solid fa-user-group"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">{{ stats.income_expense_data.total_customer }}</h5>
                                        <small>Total Customers</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-danger me-3 p-2"><i class="fa-solid fa-cart-shopping"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">{{ stats.income_expense_data.total_products }}</h5>
                                        <small>Total Products</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-success me-3 p-2"><i class="fa-solid fa-money-bills"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">৳ {{ stats.income_expense_data.total_expense }}</h5>
                                        <small>Total expense</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="card" v-if="stats">
                    <div class="card-header">
                        <div class="d-flex mb-3 w-100 gap-5">
                            <h5 class="card-title mb-0 flex-grow-1">Ecommerce Statistics</h5>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row gy-3">
                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-primary me-3 p-2"><i class="fa-solid fa-shop-lock"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">{{ stats.ecommerce_data.total_order }}</h5>
                                        <small>Total Order</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-info me-3 p-2"><i class="fa-solid fa-list"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">{{ stats.ecommerce_data.total_categories }}</h5>
                                        <small>Total Categories</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-danger me-3 p-2"><i class="fa-solid fa-shop"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">{{ stats.ecommerce_data.pending_order }}</h5>
                                        <small>Pending Order</small>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-success me-3 p-2"><i class="fa-solid fa-money-bills"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">{{ stats.ecommerce_data.canceled_order }}</h5>
                                        <small>Canceled Order</small>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-success me-3 p-2"><i class="fa-solid fa-money-bills"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">{{ stats.ecommerce_data.accepted_order }}</h5>
                                        <small>Accepted Order</small>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3 col-6">
                                <div class="d-flex align-items-center">
                                    <div class="badge rounded-pill bg-label-info me-3 p-2"><i class="fa-solid fa-list"></i></div>
                                    <div class="card-info">
                                        <h5 class="mb-0">{{ stats.ecommerce_data.total_brands }}</h5>
                                        <small>Total Brands</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="card" style="height: 800px; overflow: hidden;" v-if="stats && data">
                    <div class="card-header">
                        <div class="d-flex mb-3 w-100 gap-5">
                            <h5 class="card-title mb-0 flex-grow-1">Category wise income expense</h5>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="accounts_at_a_glance custom_scroll" style="width: 630px;margin: auto;height: 671px;overflow: auto;">
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td colspan="4">
                                            <h4 class="text-center">আয় ব্যয় হিসাব</h4>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">মাসের নাম</td>
                                        <td class="text-center" v-if="stats.month_names">
                                            <span v-for="(month, index) in stats.month_names" :key="index">
                                                {{ month }} <b v-if="index < stats.month_names.length - 1">,</b>
                                            </span>
                                        </td>
                                        <td class="text-center" v-else>
                                            আগষ্ট
                                        </td>

                                        <td class="text-center">সাল</td>
                                        <!-- <td>তারিখ</td>
                                        <td class="text-center">২৪/০৮/২০২৩</td> -->
                                        <td class="text-center" v-if="stats.years">
                                            <span v-for="(year, index) in stats.years" :key="index">
                                                {{ year }} <b v-if="index < stats.years.length - 1">,</b>
                                            </span>
                                        </td>
                                        <td class="text-center" v-else>
                                            ২০২৩
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="text-center">আয়</td>
                                        <td colspan="2" class="text-center">ব্যয়</td>
                                    </tr>
                                    <tr class="row_sticky">
                                        <td>বিবরণ</td>
                                        <td>পরিমান</td>
                                        <td>বিবরণ</td>
                                        <td>পরিমান</td>
                                    </tr>
                                    <template v-if="data.length">
                                        <tr v-for="i in data[1].categories.length" :key="i">
                                            <template v-if="data[0].categories[i-1]">
                                                <td>{{ data[0].categories[i-1].title }}</td>
                                                <td>{{ data[0].categories[i-1].logs_sum_total }}</td>
                                            </template>
                                            <template v-else>
                                                <td></td>
                                                <td></td>
                                            </template>
                                            <template v-if="data[1].categories[i-1] ">
                                                <td>{{ data[1].categories[i-1].title }}</td>
                                                <td>{{ data[1].categories[i-1].logs_sum_total }}</td>
                                            </template>
                                            <template v-else>
                                                <td></td>
                                                <td></td>
                                            </template>
                                        </tr>
                                    </template>
                                    <tr class="footer_fixed" v-if="data.length">
                                        <td>মোট আয়</td>
                                        <td>{{ get_sum(data[0]) }}</td>
                                        <td>মোট ব্যয়</td>
                                        <td>{{ get_sum(data[1]) }} </td>
                                    </tr>
                                </tbody>
                            </table>

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
        to_date: null,
        data: [],
        stats: null
    }
  },
  created: function() {
    this.fetch_dashboard_stats();
  },
  watch : {
        get_dashboard_stats: function(val) {
            // console.log(val.data);
            if(val.income_expense_list.length > 0) {
                this.data = val.income_expense_list;
                this.stats = val
            }
        }, 
    },
  methods: {
    ...mapActions([
        `fetch_dashboard_stats`,
        `fetch_dashboard_monthly_stats`,
        
    ]),
    get_sum: function(array){
        let sum = array.categories.reduce((t,i)=> t+=(+i.logs_sum_total), 0);
        return sum;
    },
    handleFilter: function(event) {
        
        if(this.from_date !== null && this.to_date !== null) {
            if(this.from_date > this.to_date) {
                window.s_alert('from date cannot be older then to date', 'warning');
            }else {
                let data = {
                    from_date: this.from_date,
                    to_date: this.to_date
                }
                this.fetch_dashboard_monthly_stats(data);
            }
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
