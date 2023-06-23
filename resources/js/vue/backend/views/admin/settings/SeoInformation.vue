<template>
    <div class="conatiner-fulid">
        <div class="card rounded-none ">
            <div class="card-header">
                <h4> SEO Informations </h4>
            </div>
            <div class="card-body px-4 pt-4 form_area custom_scroll">
                <div class="form-group setting_form">
                    <label for="seo_title">seo title</label>
                    <input type="text" id="seo_title" name="seo_title" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="seo_description">seo description</label>
                    <input type="text" id="seo_description" name="seo_description" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="seo_keywords">seo keyword</label>
                    <input type="text" id="seo_keywords" name="seo_keywords" class="form-control">
                </div>
                <div class="form-group setting_form">
                    <label for="seo_banner">seo banner</label>
                    <input type="text" id="seo_banner" name="seo_banner" class="form-control">
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
