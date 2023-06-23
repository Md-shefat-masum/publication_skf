<template>
    <div class="conatiner-fulid">
        <div class="card rounded-none ">
            <div class="card-header">
                <h4>E-Mail Information</h4>
            </div>
            <div class="card-body px-4 pt-4 form_area custom_scroll">
                <div class="form-group setting_form">
                    <label for="mail_mailer">mail mailer</label>
                    <input type="text" id="mail_mailer" name="mail_mailer" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="mail_host">mail host</label>
                    <input type="text" id="mail_host" name="mail_host" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="mail_port">mail port</label>
                    <input type="text" id="mail_port" name="mail_port" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="mail_user_name">mail user name</label>
                    <input type="text" id="mail_user_name" name="mail_user_name" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="mail_password">mail password</label>
                    <input type="text" id="mail_password" name="mail_password" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="mail_from_address">mail from address</label>
                    <input type="text" id="mail_from_address" name="mail_from_address" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="mail_from_name">mail from name</label>
                    <input type="text" id="mail_from_name" name="mail_from_name" class="form-control">
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
