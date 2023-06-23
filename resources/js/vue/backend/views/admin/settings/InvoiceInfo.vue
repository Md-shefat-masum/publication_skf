<template>
    <div class="conatiner-fulid">
        <div class="card rounded-none ">
            <div class="card-header">
                <h4>Invoice Infos</h4>
            </div>
            <div class="card-body px-4 pt-4 form_area custom_scroll">
                <div class="form-group setting_form">
                    <label for="invoice_prefix">invoice prefix</label>
                    <input type="text" id="invoice_prefix" name="invoice_prefix" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="invoice_company_name">invoice company name</label>
                    <input type="text" id="invoice_company_name" name="invoice_company_name" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="invoice_address_line_1">invoice address line 1</label>
                    <input type="text" id="invoice_address_line_1" name="invoice_address_line_1" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="invoice_address_line_2">invoice address line 2</label>
                    <input type="text" id="invoice_address_line_2" name="invoice_address_line_2" class="form-control">
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
