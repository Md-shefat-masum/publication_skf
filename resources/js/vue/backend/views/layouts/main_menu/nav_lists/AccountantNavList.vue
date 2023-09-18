<template>
    <div @mouseover="mouseover" @mouseleave="mouseleave">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">

            <left-nav-list-group :role_permissions="['accountant']" :icon="`fa fa-home`" :text="`Dashboard`" :alert_count="0">
                <left-nav-list-item :to="'BranchDashboard'" :text="'Analytics'" />
            </left-nav-list-group>

            <!-- <left-nav-list-group :role_permissions="['branch']" :icon="`fa fa-list`" :text="`Test`" :alert_count="0">
                <left-nav-list-item :to="'BranchTestPage1'" :text="'All'" />
                <left-nav-list-item :to="'BranchTestPage2'" :text="'test2'" />
            </left-nav-list-group> -->

            <li class="navigation-header">
                <span data-i18n="Apps &amp; Pages">managements</span>
            </li>

            <left-nav-list-group :role_permissions="['accountant']" :icon="`fa fa-list`" :text="`Account`" :alert_count="0">
                <left-nav-list-item :to="'IncomeAcountantEntries'" :text="'Income Entry'" />
                <left-nav-list-item :to="'ExpenseAcountantEntries'" :text="'Expense Entry'" />
                <left-nav-list-item :to="'AccountantAllincomeExpense'" :text="'Income & Expenses'" />
                <left-nav-list-item :to="'AllAcountantAccountCategories'" :text="'All Categories'" />
                <left-nav-list-item :to="'CreateAcountantAccountCategories'" :text="'Create Category'" />
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
import { mapActions } from 'vuex';
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
    },
    methods: {
        ...mapActions(['fetch_logout']),
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
    }
}
</script>

<style>

</style>
