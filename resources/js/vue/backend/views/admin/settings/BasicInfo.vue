<template>
    <div class="conatiner-fulid">
        <div class="card rounded-none ">
            <div class="card-header">
                <h4>Website Basic Settings</h4>
            </div>
            <div class="card-body px-4 pt-4 form_area custom_scroll">
                <div class="form-group setting_form">
                    <label for="title">Title</label>
                    <input type="text" id="title" name="title" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="logo">Logo</label>
                    <input type="text" id="logo" name="logo" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="fabicon">fabicon</label>
                    <input type="text" id="fabicon" name="fabicon" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="phone_number">phone number</label>
                    <input type="text" id="phone_number" name="phone_number" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="address">address</label>
                    <input type="text" id="address" name="address" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="company_name">company name</label>
                    <input type="text" id="company_name" name="company_name" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="city">city</label>
                    <input type="text" id="city" name="city" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="state">state</label>
                    <input type="text" id="state" name="state" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="post_code">postal code</label>
                    <input type="text" id="post_code" name="post_code" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="country">country</label>
                    <input type="text" id="country" name="country" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="email">email</label>
                    <input type="text" id="email" name="email" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="map">map</label>
                    <input type="text" id="map" name="map" class="form-control">
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
