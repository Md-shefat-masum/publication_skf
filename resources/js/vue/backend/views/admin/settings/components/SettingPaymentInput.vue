<template>
    <div class="form-group setting_form">
        <label :for="label">{{ label.replaceAll('_',' ') }}</label>
        <div>

            <textarea
                v-for="(value, numberindex) in get_payment_accounts[index].numbers"
                :key="numberindex"
                :value="value.value"
                @change="set_payment_settings({ id: value.id, value: $event.target.value })"
                type="text"
                class="form-control"></textarea>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
export default {
    props: {
        label: '',
        index: '',
    },
    methods: {
        ...mapActions(['set_payment_settings']),
    },
    computed:{
        ...mapGetters(['get_payment_accounts']),
    }
}
</script>

<style></style>
