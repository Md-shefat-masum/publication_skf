<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>Create</h4>
                <div class="btns">
                    <router-link :to="{ name: `All${route_prefix}` }" class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        Back
                    </router-link>
                </div>
            </div>
            <form @submit.prevent="call_store(`store_${store_prefix}`,$event.target)" class="create_form" autocomplete="false">
                <div class="card-body">
                    <div class="row justify-content-center">
                        <div class="col-lg-10">
                            <div class="admin_form form_1">
                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Product Title`"
                                        :name="`product_name`"
                                    />
                                </div>
                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Product Title English`"
                                        :name="`product_name_english`"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <!-- <input-field
                                        :label="`Category`"
                                        :name="`category`"
                                    /> -->
                                    <label>Category</label>
                                    <nested-category-modal ></nested-category-modal>
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <label>Writer</label>
                                    <writerManagementModal></writerManagementModal>
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <label>Translator</label>
                                    <translatorManagementModal></translatorManagementModal>
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Pages`"
                                        :name="`pages`"
                                        :type="`number`"
                                    />
                                </div>
                                <!-- <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Height`"
                                        :name="`height`"
                                        :type="`number`"
                                        :value="0"
                                    />
                                </div> -->
                                <!-- <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Width`"
                                        :name="`width`"
                                        :type="`number`"
                                        :value="0"
                                    />
                                </div> -->
                                <!-- <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Weight`"
                                        :name="`weight`"
                                        :type="`number`"
                                        :value="0"
                                    />
                                </div> -->
                                <!-- <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Depth`"
                                        :name="`depth`"
                                        :type="`number`"
                                        :value="0"
                                    />
                                </div> -->
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Product code (SKU)`"
                                        :name="`sku`"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`ISBN`"
                                        :name="`isbn`"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Initial stock`"
                                        :name="`initial_stock`"
                                        :type="`number`"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Alert qty`"
                                        :name="`stock_alert_qty`"
                                        :type="'number'"
                                    />
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <label for="">Binding</label>
                                    <select class="form-control form-select" name="binding" id="">
                                        <option value="hard cover">hard cover</option>
                                        <option value="paper pack">paper pack</option>
                                    </select>
                                </div>
                                <div class=" form-group d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Thumb Image ( 400 x 550 px)`"
                                        :name="`thumb_image`"
                                        :type="`file`"
                                    />
                                </div>
                                <div class=" form-group d-grid full_width align-content-start gap-1 mb-2 " >
                                    <label for="message">Description</label>
                                    <textarea class="form-control" id="message" name="description"></textarea>
                                </div>
                                <div class=" form-group d-grid full_width align-content-start gap-1 mb-2 " >
                                    <label for="message">Specification</label>
                                    <textarea class="form-control" id="specification" name="specification"></textarea>
                                </div>

                                <h3>SEO informations</h3>
                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Search keywords`"
                                        :name="`search_keywords`"
                                    />
                                </div>
                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Page Title`"
                                        :name="`page_title`"
                                    />
                                </div>
                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`SEO description`"
                                        :name="`meta_description`"
                                    />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer text-center">
                    <button type="submit" class="btn btn-outline-info" >
                        <i class="fa fa-upload"></i>
                        Submit
                    </button>
                </div>
            </form>
        </div>
    </div>
</template>

<script>
import { mapActions } from 'vuex'
import InputField from '../../components/InputField.vue'
import NestedCategoryModal from '../product_categories/components/NestedCategoryModal.vue';
import writerManagementModal from '../writers/components/ManagementModal.vue';
import translatorManagementModal from '../translators/components/ManagementModal.vue';
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;

export default {
    components: { InputField, NestedCategoryModal,writerManagementModal,translatorManagementModal },
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix
        }
    },
    created: function () {},
    methods: {
        ...mapActions([`store_${store_prefix}`]),
        call_store: function(name, params=null){
            this[name](params)
        },
    },
};
</script>

<style>
</style>
