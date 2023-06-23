<template>
    <div class="conatiner-fulid">
        <div class="card rounded-none ">
            <div class="card-header">
                <h4> Payment Numbers  </h4>
            </div>
            <div class="card-body px-4 pt-4 form_area custom_scroll">
                <div class="form-group setting_form">
                    <label for="bkash">bkash</label>
                    <input type="text" id="bkash" name="bkash" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="nagad">nagad</label>
                    <input type="text" id="nagad" name="nagad" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="rocket">rocket</label>
                    <input type="text" id="rocket" name="rocket" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="bank_account">bank account</label>
                    <input type="text" id="bank_account" name="bank_account" class="form-control">
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
