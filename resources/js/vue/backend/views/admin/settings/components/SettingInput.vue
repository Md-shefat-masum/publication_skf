<template>
    <div class="form-group setting_form">
        <label :for="label">{{ label.replaceAll('_',' ') }}</label>
        <div>
            <textarea
                v-for="(value, index) in get_settings_values[label]"
                :key="index"
                :value="value.setting_value"
                @change="set_settings({ id: value.id, value: $event.target.value, index: label })"
                :id="label"
                :name="label"

                type="text"
                class="form-control"></textarea>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
export default {
    props: {
        label: ''
    },
    methods: {
        ...mapActions(['set_settings']),
    },
    computed:{
        ...mapGetters(['get_settings_values']),
    }
}
</script>

<style></style>
