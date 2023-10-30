<template>
    <!-- BEGIN: Header-->
    <div class="top_header">
        <nav class="header-navbar">
            <div class="bookmark-wrapper d-flex align-items-center">
                <ul class="d-flex align-items-center mb-0 pl-2">
                    <nav-sidebar-toggler></nav-sidebar-toggler>
                    <top-nav-watch></top-nav-watch>
                </ul>
            </div>
            <ul class="nav navbar-nav align-items-center justify-content-center ms-auto pr-3 mb-0">
                <!-- <nav-theme-mode></nav-theme-mode> -->
                <!-- <nav-search></nav-search> -->
                <!-- <nav-notifications></nav-notifications> -->
                <nav-right-profile-menu></nav-right-profile-menu>
            </ul>
        </nav>
    </div>
</template>

<script>
import NavNotifications from './NavNotifications.vue';
import NavRightProfileMenu from './NavRightProfileMenu.vue'
import NavSearch from './NavSearch.vue';
import NavSidebarToggler from './NavSidebarToggler.vue';
import NavThemeMode from './NavThemeMode.vue';
import TopNavWatch from './TopNavWatch.vue';
export default {
    components: { NavRightProfileMenu,  NavSearch, NavNotifications, NavThemeMode, NavSidebarToggler, TopNavWatch },
}
</script>

<styl,
        ,
        NavSidebarTogglerNavThemeModee>
</style>
