<template>
    <!-- BEGIN: Main Menu-->
    <div  class="main-menu menu-fixed menu-dark menu-accordion menu-shadow">
        <main-menu-navbar-top></main-menu-navbar-top>
        <div class="shadow-bottom"></div>
        <div class="main-menu-content custom_scroll">
            <super-admin-nav-list v-if="role_names.includes('super_admin')"></super-admin-nav-list>
            <employee-nav-list v-if="role_names.includes('employee')"></employee-nav-list>
            <admin-nav-list v-if="role_names.includes('admin')"></admin-nav-list>
            <branch-nav-list v-if="role_names.includes('branch')"></branch-nav-list>
            <production-nav-list v-if="role_names.includes('production')"></production-nav-list>
            <accountant-nav-list v-if="role_names.includes('accountant')"></accountant-nav-list>
        </div>
    </div>

    <!-- END: Main Menu-->
</template>

<script>
import SuperAdminNavList from './nav_lists/SuperAdminNavList.vue'
import AdminNavList from './nav_lists/AdminNavList.vue'
import MainMenuNavbarTop from './MainMenuNavbarTop.vue'
import { mapGetters } from 'vuex'
import ProductionNavList from './nav_lists/ProductionNavList.vue'
import BranchNavList from './nav_lists/branchNavList.vue'
import AccountantNavList from './nav_lists/AccountantNavList.vue'
import EmployeeNavList from './nav_lists/EmployeeNavList.vue'
export default {
    components: {EmployeeNavList, MainMenuNavbarTop, SuperAdminNavList, AdminNavList, BranchNavList,ProductionNavList, AccountantNavList },
    created: function(){

    },
    computed: {
        ...mapGetters({
            get_check_auth : "get_check_auth",
            auth_info: "get_auth_information",
        }),
        role_names: function(){
            if(this.auth_info && this.auth_info.roles){
                return this.auth_info.roles.map((i)=>i.name);
            }
            return [];
        },
        role_serials: function(){
            if(this.auth_info && this.auth_info.roles){
                return this.auth_info.roles.map((i)=>i.role_serial);
            }
            return []
        },
    },

}
</script>

<style>

</style>
