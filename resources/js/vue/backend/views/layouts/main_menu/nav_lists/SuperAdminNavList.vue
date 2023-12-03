<template>
    <div @mouseover="mouseover" @mouseleave="mouseleave">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">

            <left-nav-list-group :role_permissions="['super_admin','admin']" :icon="`fa fa-home`" :text="`Dashboard`" :alert_count="2">
                <left-nav-list-item :to="'SuperAdminDashboard'" :text="'Analytics'" />
                <left-nav-list-item :to="'SuperAllincomeExpense'" :text="'Income and Expense'" />
                <left-nav-list-item :to="'SuperAdminIncomeLedger'" :text="'Income Ledger'" />
                <left-nav-list-item :to="'SuperAdminExpenseLedger'" :text="'Expense Ledger'" />
                <left-nav-list-item :to="'SuperAdminStatements'" :text="'Account Statements'" />
                <left-nav-list-item :to="'SuperAllOutStockProducts'" :text="'Stock Out Products'" />
                <left-nav-list-item :to="'SuperAllInStockProducts'" :text="'Stock In Products'" />
                <left-nav-list-item :to="'SuperProductReport'" :text="'Product Report'" />
            </left-nav-list-group>

            <li class="navigation-header">
                <span data-i18n="Apps &amp; Pages">managements</span>
            </li>

            <left-nav-list-single :role_permissions="['super_admin','admin']" :icon="'fa fa-pencil'" :to="`SuperAdminTaskCreate`" :text="'Create Task'" :alert_count="0" />
            <left-nav-list-single :role_permissions="['super_admin','admin']" :icon="'fa fa-list'" :to="`AllSuperAdminTask`" :text="'All Tasks'" :alert_count="incomplete_task_count" />

            <left-nav-list-group :role_permissions="['super_admin','admin','user']" :icon="`fa fa-gears`" :text="`Settings`" :alert_count="0">
                <left-nav-list-item :to="'settingProfile'" :text="'Profile'" />
                <left-nav-list-item :to="'settingPassword'" :text="'Change Password'" />
            </left-nav-list-group>

            <li class="nav-item">
                <a @click.prevent="fetch_logout()" class="d-flex align-items-center" href="#">
                    <i class="fa-solid fa-power-off"></i>
                    <span class="menu-title text-truncate" >Logout</span>
                </a>
            </li>
        </ul>

        <nav-time-left-watch></nav-time-left-watch>
    </div>
</template>

<script>
import { mapActions, mapGetters } from 'vuex';
import LeftNavListGroup from '../../LeftNavListGroup.vue';
import LeftNavListItem from '../../LeftNavListItem.vue';
import LeftNavListSingle from '../../LeftNavListSingle.vue';
import NavTimeLeftWatch from "../../NavTimeLeftWatch.vue";

export default{
    components: { NavTimeLeftWatch, LeftNavListItem, LeftNavListGroup, LeftNavListSingle },
    data: function(){
        return {
            html: null,
        }
    },
    created: function(){
        this.html = document.querySelector('html');
        this.fetch_incomplete_task_count();
    },
    methods: {
        ...mapActions(['fetch_logout','fetch_incomplete_task_count']),
        mouseover: function(){
            let nav_hide = this.html.classList.contains('nav-hide');
            if(nav_hide){
                this.html.classList.add('nav-hide-hover');
                this.html.classList.remove('nav-hide');
            }
        },
        mouseleave: function(){
            let nav_hide_hover = this.html.classList.contains('nav-hide-hover');
            if(nav_hide_hover){
                this.html.classList.add('nav-hide');
                this.html.classList.remove('nav-hide-hover');
            }
        },
    },
    computed: {
        ...mapGetters(['incomplete_task_count'])
    }

}
</script>

<style>

</style>
