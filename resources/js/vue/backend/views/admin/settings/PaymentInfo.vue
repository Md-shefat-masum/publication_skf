<template>
    <div class="container-fulid">
        <div class="card rounded-none ">
            <div class="card-header">
                <h4> Payment Numbers  </h4>
            </div>
            <div class="card-body px-4 pt-4 form_area custom_scroll">
                <setting-payment-input v-for="(account, index) in get_payment_accounts" :key="account.id" :index="index" :label="account.name"></setting-payment-input>
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations, mapState } from 'vuex'
import PageSetup from './PageSetup';
import SettingFile from './components/SettingFile.vue';
import SettingPaymentInput from './components/SettingPaymentInput.vue';
const { route_prefix, store_prefix } = PageSetup;

export default {
    components: { SettingFile, SettingPaymentInput},
    data: function () {
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
        }
    },
    created: async function () {
        await this.fetch_payment_accounts();
    },
    methods: {
        ...mapActions([
            'fetch_payment_accounts',
        ]),
    },
    computed: {
        ...mapGetters([
            'get_payment_accounts'
        ])
    }
}
</script>
