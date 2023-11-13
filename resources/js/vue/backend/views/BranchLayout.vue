<template>
    <div v-if="get_check_auth">
        <div class="app_frame">
            <div class="left" @mouseover="mouseover" @mouseleave="mouseleave">
                <main-menu></main-menu>
                <div class="sm_overlay" @click="menu_hide"></div>
            </div>
            <div class="right">
                <top-nav></top-nav>
                <!-- BEGIN: Content-->
                <div class="app-content content">
                    <div class="content-wrapper p-0">
                        <!-- <bread-cumb></bread-cumb> -->
                        <div class="content-body">
                            <router-view></router-view>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- END: Content-->
        <div class="loader export_loader">
            <div class="loader_body">
                <div class="progress"></div>
                <div class="load_amount">
                    <h4>0</h4>
                    <h5>%</h5>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import BreadCumb from "./layouts/main_body/BreadCumb.vue";
import MainMenu from "./layouts/main_menu/MainMenu.vue";
import TopNav from "./layouts/TopNav.vue";
import { mapActions, mapGetters } from "vuex";
export default {
    components: { TopNav, MainMenu, BreadCumb },
    data: function(){
        return {
            html: null,
        }
    },
    created: function () {
        this.fetch_check_auth();
        this.html = document.querySelector('html');
    },
    watch: {
        get_check_auth: {
            handler: function (newv, oldv) {
                // console.log(newv);
                // setTimeout(() => {
                // $('.navigation li a.active').parents('li.has-sub').addClass('open');
                // }, 500);

                if (!newv) {
                    localStorage.removeItem("token");
                    location.href = "/login";
                }
            },
            deep: true,
        },
    },
    methods: {
        ...mapActions(["fetch_check_auth"]),
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
        menu_hide: function(){
            event.stopPropagation();
            this.html.classList.remove('nav-hide')
            this.html.classList.remove('nav-hide-hover')
        }
    },
    computed: {
        ...mapGetters({
            get_check_auth : "get_check_auth",
            auth_info: "get_auth_information",
        }),
        role_names: function(){
            return this.auth_info.roles.map((i)=>i.name);
        },
        role_serials: function(){
            return this.auth_info.roles.map((i)=>i.role_serial);
        },
    },
};
</script>

<style>
</style>
