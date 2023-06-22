<template>
    <div class="conatiner-fulid">
        <div class="card rounded-none ">
            <div class="card-header">
                <h4> Delivery Cost </h4>
            </div>
            <div class="card-body px-4 pt-4 form_area custom_scroll">
                <div class="form-group setting_form">
                    <label for="home_delivery_cost">home delivery cost</label>
                    <input type="text" id="home_delivery_cost" name="home_delivery_cost" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="out_dhaka_home_delivery_cost">out dhaka home delivery cost</label>
                    <input type="text" id="out_dhaka_home_delivery_cost" name="out_dhaka_home_delivery_cost" class="form-control">
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations } from 'vuex'
import PageSetup from './PageSetup';
const { route_prefix, store_prefix } = PageSetup;

export default {
    components: {},
    data: function () {
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
        }
    },
    created: function () {

    },
    methods: {
        ...mapActions([

        ]),
        ...mapMutations([

        ]),

        call_store: function (name, params = null) {
            this[name](params)
        },
    },
    computed: {
        ...mapGetters([

        ]),
    }
}
</script>

<style></style>
