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
            <form @submit.prevent="call_store(`store_${store_prefix}`,$event.target)" autocomplete="false">
                <div class="card-body">
                    <div class="row justify-content-center">
                        <div class="col-lg-10">
                            <div class="admin_form form_1">
                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <input-field
                                        :label="`Name`"
                                        :name="`name`"
                                    />
                                </div>
                                <!-- -->
                                <div class=" form-group d-grid full_width align-content-start gap-1 mb-2 " >
                                    <label for="address">Address</label>
                                    <textarea class="form-control" id="message" name="address"></textarea>
                                </div>
                                <div class=" form-group d-grid full_width align-content-start gap-1 mb-2 " >
                                    <label for="description">Description</label>
                                    <textarea class="form-control" id="message" name="description"></textarea>
                                </div>
                                <div class=" form-group full_width d-grid align-content-start gap-1 mb-2 " >
                                    <div class="row">
                                        <div class="col-lg-6 mb-2">
                                            <input-field
                                                :label="`Mobile Number`"
                                                :name="`phone_number`"
                                            />
                                        </div>
                                        <!-- <div class="col-lg-6 mb-2">
                                            <input-field
                                                :label="`mobile_number 2`"
                                                :name="`mobile_number[]`"
                                            />
                                        </div> -->
                                        <!-- <div class="col-lg-6 mb-2">
                                            <input-field
                                                :label="`mobile_number 3`"
                                                :name="`mobile_number[]`"
                                            />
                                        </div> -->
                                    </div>

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
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;

export default {
    components: { InputField },
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
