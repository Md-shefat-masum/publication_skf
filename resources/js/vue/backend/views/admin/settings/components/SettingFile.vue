<template>
    <div class="form-group setting_form">
        <label>{{ label.replaceAll('_',' ') }}</label>
        <div>
            <input
                v-for="(value, index) in get_settings_values[label]" :key="index"
                @change="$event.target.files.length && set_settings({id: value.id, value: $event.target.files[0], index: label})"
                :id="label"
                :name="label"

                type="file"
                class="form-control">

            <div class="images">
                <img v-for="(value, index) in get_settings_values[label]"
                    :key="index"
                    :src="'/'+value.setting_value"
                    class="img-thumbnail"
                    alt="">
            </div>
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
