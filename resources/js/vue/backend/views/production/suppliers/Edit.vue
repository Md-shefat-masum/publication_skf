<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>Edit</h4>
                <div class="btns">
                    <a href="" @click.prevent="call_store(`set_${store_prefix}`,null), $router.push({ name: `All${route_prefix}` })"  class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        <span >
                            Back
                        </span>
                    </a>
                </div>
            </div>
            <!-- /.card-header -->



            <form @submit.prevent="call_store(`update_${store_prefix}`,$event.target)" autocomplete="false">
                <div class="card-body">
                    <div class="row justify-content-center" v-if="data">
                        <div class="col-lg-10">
                            <div class="admin_form form_1">
                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Company Name`"
                                        :name="`name`"
                                        :type="`text`"
                                        :value="data.name"
                                    />
                                </div>
                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <label for="category_id" class="form-label">Supplier Category</label>
                                    <select name="category_id" :value="data.category_id" class="form-select" id="category_id">
                                        <option v-for="category in all_categories" :value="category.id" :key="category.id">
                                            {{category.title}}
                                        </option>
                                    </select>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer text-center">
                    <button type="submit" class="btn btn-outline-info" >
                        <i class="fa fa-upload"></i>
                        Submit
                    </button>
                </div>
            </form>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations } from 'vuex'
import InputField from '../../components/InputField.vue'
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;
export default {
    components: { InputField },
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
            all_categories: [],
        }
    },
    created: async function () {
        await this.get_categories();
        await this[`fetch_${store_prefix}`]({id: this.$route.params.id},{render: true});
    },
    methods: {
        ...mapActions([
            `update_${store_prefix}`,
            `fetch_${store_prefix}`,
        ]),
        ...mapMutations([
            `set_${store_prefix}`,
        ]),
        call_store: function(name, params=null){
            this[name](params)
        },
        get_categories: async function(){
            let url = `/production/supplier-categories/all-json`;
            await axios.get(url).then(res => {
                this.all_categories = res.data;
            });
        }
    },
    computed: {
        ...mapGetters([`get_${store_prefix}`]),
        ...mapGetters({
            data: `get_${store_prefix}`
        }),

    }
};
</script>

<style>
</style>
