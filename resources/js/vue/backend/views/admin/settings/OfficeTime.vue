<template>
    <div class="conatiner-fulid">
        <div class="card rounded-none ">
            <div class="card-header">
                <h4> Office Time </h4>
            </div>
            <div class="card-body px-4 pt-4 form_area custom_scroll">
                <div class="form-group setting_form">
                    <label for="company_start_time">company start time</label>
                    <input type="text" id="company_start_time" name="company_start_time" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="company_end_time">company end time</label>
                    <input type="text" id="company_end_time" name="company_end_time" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="time_zone">time zone</label>
                    <input type="text" id="time_zone" name="time_zone" class="form-control">
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
