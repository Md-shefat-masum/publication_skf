<template>
    <li class="nav-item dropdown dropdown-user">
        <a @click.prevent="show_menu=!show_menu" class="nav-link dropdown-toggle align-items-center gap-2 d-flex dropdown-user-link"
            id="dropdown-user" href="#" data-bs-toggle="dropdown">
            <div class="user-nav d-grid">
                <span class="user-name fw-bolder">
                    {{ get_auth_information.first_name }}
                    {{ get_auth_information.last_name }}
                </span>
                <span class="user-status">
                    {{ get_auth_information.user_name }}
                </span>
            </div>
            <span class="avatar">
                <img class="round"
                    src="/avatar.jpg"
                    alt="avatar" height="40" width="40">
                <span class="avatar-status-online"></span>
            </span>
        </a>
        <div :class="{show:show_menu}" style="position: absolute; right: 0;"
            class="dropdown-menu dropdown-menu-end">
            <!-- <a class="dropdown-item" href="#">
                <i class="me-50" data-feather="user"> </i>
                Profile
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
                <i class="me-50" data-feather="settings"></i>
                Settings
            </a> -->
            <a @click.prevent="fetch_logout()" class="dropdown-item" href="#">
                <i class="me-50" data-feather="power"></i>
                Logout
            </a>
        </div>
    </li>
</template>

<script>
import { mapActions, mapGetters } from 'vuex'
export default {
    data: function(){
        return {
            show_menu: false,
        }
    },
    methods: {
        ...mapActions(['fetch_logout']),
    },
    computed: {
        ...mapGetters(['get_auth_information'])
    }
}
</script>

<style>

</style>
