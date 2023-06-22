<template>
    <div class="conatiner-fulid">
        <div class="card rounded-none ">
            <div class="card-header">
                <h4>Social Links</h4>
            </div>
            <div class="card-body px-4 pt-4 form_area custom_scroll">
                <div class="form-group setting_form">
                    <label for="social_facebook">facebook</label>
                    <input type="text" id="social_facebook" name="social_facebook" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="social_twitter">Twitter</label>
                    <input type="text" id="social_twitter" name="social_twitter" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="social_instagram">instagram</label>
                    <input type="text" id="social_instagram" name="social_instagram" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="social_linkedin">linkedin</label>
                    <input type="text" id="social_linkedin" name="social_linkedin" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="social_youtube">youtube</label>
                    <input type="text" id="social_youtube" name="social_youtube" class="form-control">
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
