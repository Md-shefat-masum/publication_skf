<template>
    <li>
        <router-link :to="{name:to}" class="d-flex align-items-center nav_link_item">
            <i :class="`${icon || 'far fa-circle'}`"></i>
            <span class="menu-item text-truncate" @click="hide_menu">
                {{ text }}
            </span>
        </router-link>
    </li>
</template>

<script>
export default{
    props: ['to','text', 'icon'],
    methods: {
        hide_menu: function () {
            if (window.innerWidth < 768) {
                console.log('ok');
                document.querySelector('html').classList.remove('nav-hide');
                document.querySelector('html').classList.remove('nav-hide-hover');
            }
        }
    }
}
</script>

<style>

</style>
