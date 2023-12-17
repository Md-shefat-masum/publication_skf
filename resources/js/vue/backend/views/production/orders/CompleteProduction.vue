<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>Complete Production</h4>
                <div class="btns">
                    <a href="" @click.prevent="call_store(`set_${store_prefix}`,null), $router.push({ name: `AllProductions` })"  class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        <span >
                            Back
                        </span>
                    </a>
                </div>
            </div>
            <div class="card-body pb-5 ">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <table v-if="this[`get_${store_prefix}`]" class="table table-bordered details_table">
                            <tr>
                                <td>id</td>
                                <td>{{ this[`get_${store_prefix}`].id }}</td>
                            </tr>
                            <tr>
                                <td>product</td>
                                <td>{{ data.product_info.product_name }}</td>
                            </tr>
                            <tr>
                                <td>print ordered qty</td>
                                <td>{{ data.print_qty }}</td>
                            </tr>
                            <tr>
                                <td>Paper amount</td>
                                <td>{{ data.paper_amount }} ream</td>
                            </tr>
                            <tr>
                                <td>Designer</td>
                                <td>{{ data.design?.name }}</td>
                            </tr>
                            <tr>
                                <td>Print</td>
                                <td>{{ data.print?.company_name }}</td>
                            </tr>
                            <tr>
                                <td>Binding</td>
                                <td>{{ data.binding?.company_name }}</td>
                            </tr>
                        </table>
                    </div>
                    <div class="mt-2" v-if="data">
                        <h4>Producted Quantity</h4>
                        <input v-model="qty" class="form-control" type="number">
                        <div class="form-group mt-2">
                            <label for="">Comment</label>
                            <textarea id="description" name="description" v-model="description" class="form-control"></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div v-if="data.is_complete == 0" class="card-footer text-center">
                <button @click.prevent="complete_production" class="btn btn-warning">Complete Production State</button>
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations } from 'vuex'
import PermissionButton from '../../components/PermissionButton.vue'
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix} = PageSetup;
const store_prefix = 'production_production';
export default {
    components: { PermissionButton },
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
            qty: 0,
            description: '',
        }
    },
    created: function () {
        this[`fetch_production`]({id: this.$route.params.id, select_all:1})
    },
    methods: {
        ...mapActions([
            `fetch_production`,
        ]),
        ...mapMutations([
            `set_${store_prefix}`
        ]),
        call_store: function(name, params=null){
            this[name](params)
        },
        complete_production: async function(){
            let params = {
                id: this.$route.params.id,
                qty: this.qty,
                description: this.description,
            }
            if(this.qty < 5){
                alert('quantity should be greater than 5');
                return 0;
            }
            let that = this;
            let cconfirm = await window.s_confirm("Complete Production");
            if (cconfirm) {
                axios.post('/production/production/complete-production',params)
                    .then(res=>{
                        this.$router.push({name: `DetailsProductionOrder`,params: {id: that.data.id}});
                    })
            }

        }
    },
    computed: {
        ...mapGetters([`get_${store_prefix}`]),
        ...mapGetters({
            data: `get_${store_prefix}`
        }),
    }
}
</script>

<style>

</style>
