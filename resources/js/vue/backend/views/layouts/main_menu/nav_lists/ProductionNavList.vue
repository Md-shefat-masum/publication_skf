<template>
    <div @mouseover="mouseover" @mouseleave="mouseleave">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">

            <left-nav-list-group :role_permissions="['production']" :icon="`fa fa-home`" :text="`Dashboard`" :alert_count="0">
                <left-nav-list-item :to="'ProductionDashboard'" :text="'Analytics'" />
            </left-nav-list-group>

            <li class="navigation-header">
                <span data-i18n="Apps &amp; Pages">managements</span>
            </li>

            <left-nav-list-group :role_permissions="['production']" :icon="`fa fa-list`" :text="`Inventory`" :alert_count="0">
                <left-nav-list-item :to="'AllProductionProduct'" :text="'All Products'" />
                <left-nav-list-item :to="'AllProductionProductCategory'" :text="'Product Category'" />
                <left-nav-list-item :to="'CreateProductionProduct'" :text="'Create Product'" />
            </left-nav-list-group>

            <left-nav-list-group :role_permissions="['production']" :icon="`fa fa-list`" :text="`Production`" :alert_count="0">
                <left-nav-list-item :to="'AllProductionOrder'" :text="'All Orders'" />
                <left-nav-list-item :to="'ProductionProductionOrder'" :text="'Start Production'" />
                <left-nav-list-item :to="'ProductionProductionPricing'" :text="'Pricing'" />
            </left-nav-list-group>

            <left-nav-list-group :role_permissions="['production']" :icon="`fa fa-list`" :text="`Suppliers`" :alert_count="0">
                <left-nav-list-item :to="'AllProductionPaper'" :text="'Paper'" />
                <left-nav-list-item :to="'AllProductionPrinting'" :text="'Print'" />
                <left-nav-list-item :to="'AllProductionBinding'" :text="'Binding'" />
            </left-nav-list-group>

            <left-nav-list-group :role_permissions="['production']" :icon="`fa fa-list`" :text="`Accounts`" :alert_count="0">
                <left-nav-list-item :to="'AllProductionAccount'" :text="'Income & expenses'" />
                <left-nav-list-item :to="'AllProductionAccountCategory'" :text="'Categories'" />
                <left-nav-list-item :to="'AllProductionAccountBank'" :text="'Accounts'" />
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
