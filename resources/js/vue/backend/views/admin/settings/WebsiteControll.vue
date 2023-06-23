<template>
    <div class="conatiner-fulid">
        <div class="card rounded-none ">
            <div class="card-header">
                <h4>Web Site Controll</h4>
            </div>
            <div class="card-body px-4 pt-4 form_area custom_scroll">
                <div class="form-group setting_form">
                    <label for="shut_down_website">shut down website</label>
                    <div class="form-check form-switch">
                        <input class="form-check-input" v-for="(value, index) in get_settings_values['shut_down_website']"
                            :key="index"
                            @change="set_settings({ id: value.id, value: $event.target.checked, index: 'shut_down_website' })"
                            :checked="value.setting_value=='true'?true:false"
                            type="checkbox"
                            role="switch"
                            id="flexSwitchCheckChecked">
                    </div>
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
    created: async function () {
        this.set_settings_keys([
            "shut_down_website",
        ]);
        await this.get_settings();
    },
    methods: {
        ...mapActions([
            'set_settings',
            'get_settings',
        ]),
        ...mapMutations([
            'set_settings_keys',

        ]),

        call_store: function (name, params = null) {
            this[name](params)
        },
    },
    computed: {
        ...mapGetters([
            'get_settings_values'
        ]),
    }
}
</script>

<style></style>
