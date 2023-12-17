<template>
  <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>Update Production Status</h4>
                <div class="btns">
                    <a href="" @click.prevent="$router.push({ name: `AllProductions` })"  class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        <span >
                            Back
                        </span>
                    </a>
                </div>
            </div>
            <div class="card-body pb-5 ">
                <form @submit.prevent="update_status($event)" action="">
                    <div class="form-group d-grid align-content-start gap-1 mb-2 " >
                        <label for="">Production Progress</label>
                        <select class="form-control form-select" name="status" id="production_status">
                            <option value="planning">Planning</option>
                            <option value="assign">Assign</option>
                            <option value="handover">Handover</option>
                            <option value="editing">Editing</option>
                            <option value="first_proof">First Proof</option>
                            <option value="second_proof">Second Proof</option>
                            <option value="designing">Designing</option>
                            <option value="plate">Plate</option>
                            <option value="printing">Printing</option>
                            <option value="binding">Binding</option>
                            <option value="complete">Complete</option>
                        </select>
                    </div>

                    <div>
                        <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                            <label for="description">Progress description</label>
                            <textarea  class="form-control" id="description" name="description"></textarea>
                        </div>
                    </div>
                    <div v-if="data.is_complete == 0" class="mt-3">
                        <button class="btn btn-outline-info">Submit</button>
                    </div>
                </form>
            </div>
            <div class="card-footer text-center">

            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex';
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;
export default {
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
        }
    },
    created: async function(){
        await this.fetch_production({id: this.$route.params.id, render_to_form:true});
    },
    methods: {
        ...mapActions([
            'fetch_production'
        ]),
        update_status: async function(event){
            let form_data = new FormData(event.target);
            let that = this;
            form_data.append('id',this.$route.params.id);
            let res = await axios.post('/production/production/update-status',form_data);
            this.$router.push({name: `DetailsProductionOrder`,params: {id: that.data.id}});
        }
    },
    computed:{
        ...mapGetters({
            data: `get_${store_prefix}`,
        }),
    }
}
</script>

<style>

</style>
