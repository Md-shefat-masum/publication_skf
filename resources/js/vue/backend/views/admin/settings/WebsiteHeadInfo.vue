<template>
    <div class="container-fulid">
        <div class="card rounded-none ">
            <div class="card-header">
                <h4> Website Head Info </h4>
            </div>
            <div class="card-body px-4 pt-4 form_area custom_scroll">
                <setting-input v-for="key in get_settings_keys" :key="key" :label="key"></setting-input>
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
    components: { SettingInput, SettingFile },
    data: function () {
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
        }
    },
    created: async function () {
        this.set_settings_keys([
            "header_title",
            "copy_right",
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
            'get_settings_keys'
        ])
    }
}
</script>
