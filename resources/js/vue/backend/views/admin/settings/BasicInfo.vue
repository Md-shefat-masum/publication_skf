<template>
    <div class="conatiner-fulid">
        <div class="card rounded-none ">
            <div class="card-header">
                <h4>Website Basic Settings</h4>
            </div>
            <div class="card-body px-4 pt-4 form_area custom_scroll">
                <div class="form-group setting_form">
                    <label for="title">Title</label>
                    <div>
                        <input v-for="(settings_value, index) in get_settings_values?.title" :key="index" type="text"
                            id="title" name="title" :value="settings_value.setting_value" class="form-control">
                    </div>
                </div>
                <div class="form-group setting_form">
                    <label for="logo">Logo</label>
                    <div>
                        <input type="file" id="logo" name="logo[]" class="form-control">
                        <div class="images">
                            <img v-for="(settings_value, index) in get_settings_values?.logo" class="img-thumbnail" :key="index" width="" :src="'/'+settings_value.setting_value" alt="">
                        </div>
                    </div>
                </div>
                <div class="form-group setting_form">
                    <label for="fabicon">fabicon</label>
                    <div>
                        <input type="file" id="fabicon" name="fabicon[]" class="form-control">
                        <div class="images">
                            <img v-for="(settings_value, index) in get_settings_values?.fabicon" class="img-thumbnail" :key="index" width="" :src="'/'+settings_value.setting_value" alt="">
                        </div>
                    </div>
                </div>
                <div class="form-group setting_form">
                    <label for="phone_number">phone number</label>
                    <div>
                        <input v-for="(settings_value, index) in get_settings_values?.phone_number" :key="index" type="text"
                            id="phone_number" name="phone_number" :value="settings_value.setting_value" class="form-control">
                    </div>
                </div>
                <div class="form-group setting_form">
                    <label for="address">address</label>
                    <div>
                        <input v-for="(settings_value, index) in get_settings_values?.address" :key="index" type="text"
                            id="address" name="address" :value="settings_value.setting_value" class="form-control">
                    </div>
                </div>
                <div class="form-group setting_form">
                    <label for="company_name">company name</label>
                    <div>
                        <input v-for="(settings_value, index) in get_settings_values?.company_name" :key="index" type="text"
                            id="company_name" name="company_name" :value="settings_value.setting_value" class="form-control">
                    </div>
                </div>
                <div class="form-group setting_form">
                    <label for="city">city</label>
                    <div>
                        <input v-for="(settings_value, index) in get_settings_values?.city" :key="index" type="text"
                            id="city" name="city" :value="settings_value.setting_value" class="form-control">
                    </div>
                </div>
                <div class="form-group setting_form">
                    <label for="state">state</label>
                    <div>
                        <input v-for="(settings_value, index) in get_settings_values?.state" :key="index" type="text"
                            id="state" name="state" :value="settings_value.setting_value" class="form-control">
                    </div>
                </div>
                <div class="form-group setting_form">
                    <label for="post_code">postal code</label>
                    <div>
                        <input v-for="(settings_value, index) in get_settings_values?.post_code" :key="index" type="text"
                            id="post_code" name="post_code" :value="settings_value.setting_value" class="form-control">
                    </div>
                </div>
                <div class="form-group setting_form">
                    <label for="country">country</label>
                    <div>
                        <input v-for="(settings_value, index) in get_settings_values?.country" :key="index" type="text"
                            id="country" name="country" :value="settings_value.setting_value" class="form-control">
                    </div>
                </div>
                <div class="form-group setting_form">
                    <label for="email">email</label>
                    <div>
                        <input v-for="(settings_value, index) in get_settings_values?.email" :key="index" type="text"
                            id="email" name="email" :value="settings_value.setting_value" class="form-control">
                    </div>
                </div>
                <div class="form-group setting_form">
                    <label for="map">map</label>
                    <div>
                        <input v-for="(settings_value, index) in get_settings_values?.map" :key="index" type="text"
                            id="map" name="map" :value="settings_value.setting_value" class="form-control">
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations, mapState } from 'vuex'
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
    created: async function () {
        this.set_settings_keys([
            "title",
            "logo",
            "fabicon",
            "phone_number",
            "address",
            "company_name",
            "city",
            "state",
            "post_code",
            "country",
            "email",
            "map",
        ]);
        await this.get_settings();
    },
    methods: {
        ...mapActions([
            'get_settings',
        ]),
        ...mapMutations([
            'set_settings_keys',
        ]),
    },
    computed: {
        ...mapGetters([
            "get_settings_values",
        ]),
    }
}
</script>

<style></style>
