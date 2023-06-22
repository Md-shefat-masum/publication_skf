<template>
    <div>
        <h3 class="mb-2">{{ layout_title }}</h3>
        <div class="setting_pages_body">
            <div class="left_setting_nav custom_scroll">
                <div class="card rounded-none h-100 mb-0">
                    <div class="card-body">
                        <ul>
                            <li v-for="(i,index) in nav" :key="index">
                                <router-link :to="{name: i.pathName}">
                                    <i :class="i.icon"></i>
                                    {{ i.title }}
                                </router-link>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="right_settings_outlet">
                <router-view v-if="is_role_permitted"></router-view>
                <div v-else class="text-center">
                    <h4 class="text-warning">sorry you have no permission</h4>
                    <router-link class="btn btn-outline-warning mt-3" :to="{name:'Dashboard'}">Go Back</router-link>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import { mapGetters } from 'vuex';
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix, layout_title} = PageSetup;
import nav from "./setting_nav";

export default {
    props: ['role_permissions'],
    data: function(){
        return {
            route_prefix,
            store_prefix,
            layout_title,
            nav,
        }
    },
    created: function(){
        // console.log(this.role_permissions);
        document.querySelector('html').classList.add('nav-hide');
        console.log(this.nav);
    },
    computed: {
        ...mapGetters(['get_auth_roles']),
        is_role_permitted: function(){
            for (let i=0; i<this.role_permissions?.length; i++) {
                let item = this.role_permissions[i];
                if(this.get_auth_roles.includes(item)){
                    return true;
                }
            }
            return false;
        }
    }

};
</script>

<style></style>
