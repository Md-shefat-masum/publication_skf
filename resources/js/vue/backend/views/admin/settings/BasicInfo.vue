<template>
    <div class="conatiner-fulid">
        <div class="card rounded-none">
            <div class="card-header">
                <h4>Website Basic Settings</h4>
            </div>
            <div class="card-body px-4 pt-4 form_area custom_scroll">
                <setting-input :label="`title`"></setting-input>
                <setting-input :label="`company_name`"></setting-input>
                <setting-input :label="`phone_number`"></setting-input>
                <setting-input :label="`email`"></setting-input>
                <setting-input :label="`address`"></setting-input>
                <setting-input :label="`city`"></setting-input>
                <setting-input :label="`state`"></setting-input>
                <setting-input :label="`post_code`"></setting-input>
                <setting-input :label="`country`"></setting-input>
                <setting-input :label="`map`"></setting-input>

                <setting-file :label="`logo`"></setting-file>
                <setting-file :label="`fabicon`"></setting-file>
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations, mapState } from 'vuex'
import PageSetup from './PageSetup';
import SettingInput from './components/SettingInput.vue';
import SettingFile from './components/SettingFile.vue';
const { route_prefix, store_prefix } = PageSetup;

export default {
    components: {SettingInput, SettingFile},
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
}
</script>

<style></style>
