<template>
    <div class="container-fluid">
        <div class="card list_card">
            <div class="card-header">
                <h4>
                    All Stock Out Products
                </h4>
                <div class="search">

                </div>
                <div class="btns d-flex gap-2 align-items-center">
                    <button class="btn btn-outline-info"
                        @click.prevent="export_data({
                            data,
                            name:'out_stock_products',
                            cols: ['id','product_name','total_stock']
                        })">
                        Export
                    </button>
                </div>
            </div>
            <div class="table-responsive card-body text-nowrap">
                <table class="table table-hover table-bordered">
                    <thead class="table-light">
                        <tr>
                            <th>SI</th>
                            <th>Product</th>
                            <th>Stock</th>
                        </tr>
                    </thead>
                    <tbody class="table-border-bottom-0">
                        <tr v-for="(item, index) in data" :key="item.id">
                            <td>
                                {{ index+1 }}
                            </td>
                            <td>
                                {{ item.product_name }}
                            </td>
                            <td>
                                {{ item.total_stock }}
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="card-footer py-1 border-top-0">

            </div>
        </div>

    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations } from 'vuex';


export default {
    components: { },
    data: function(){
        return {
        }
    },
    created: function(){
        this.fetch_all_outstock_products();
    },
    methods: {
        ...mapActions([
            'fetch_all_outstock_products',
            'export_data',
        ])
    },
    computed: {
        ...mapGetters({
            data: `get_all_outstock_products`,
        }),
    }
}
</script>

<style>

</style>

