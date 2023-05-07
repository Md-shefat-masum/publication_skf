<template>
    <div class="container">
        <div class="card list_card">
            <div class="card-header">
                <h4>Details</h4>
                <div class="btns">
                    <a href="" @click.prevent="call_store(`set_${store_prefix}`,null), $router.push({ name: `All${route_prefix}` })"  class="btn rounded-pill btn-outline-warning" >
                        <i class="fa fa-arrow-left me-5px"></i>
                        <span >
                            Back
                        </span>
                    </a>
                </div>
            </div>
            <div class="card-body pb-5 ">
                <div class="row justify-content-center">
                    <div class="col-lg-7 ">
                        <div class="text-center">
                            <img :src="data.image" height="200px" alt="">
                        </div>
                        <br>
                        <table v-if="this[`get_${store_prefix}`] || true" class="table table-bordered details_table">
                            <tr>
                                <td>id</td>
                                <td>{{ data.id }}</td>
                            </tr>
                            <tr>
                                <td>Name</td>
                                <td>{{ data.title }}</td>
                            </tr>
                            <tr>
                                <td>category</td>
                                <td>{{ data.category }}</td>
                            </tr>
                            <tr>
                                <td>writer</td>
                                <td>{{ data.writer }}</td>
                            </tr>
                            <tr>
                                <td>translator</td>
                                <td>{{ data.translator }}</td>
                            </tr>
                            <tr>
                                <td>product_code</td>
                                <td>{{ data.product_code }}</td>
                            </tr>
                            <tr>
                                <td>isbn</td>
                                <td>{{ data.isbn }}</td>
                            </tr>
                            <tr>
                                <td>page</td>
                                <td>{{ data.page }}</td>
                            </tr>
                            <tr>
                                <td>stock</td>
                                <td>{{ data.stock }}</td>
                            </tr>
                            <tr>
                                <td>stock alert</td>
                                <td>{{ data.alert_qty }}</td>
                            </tr>
                            <tr>
                                <td>binding</td>
                                <td>{{ data.binding }}</td>
                            </tr>
                            <tr>
                                <td>Description</td>
                                <td>{{ data.description }}</td>
                            </tr>
                            <tr>
                                <td>status </td>
                                <td>
                                    <span class="badge bg-label-success me-1">Available</span>
                                    <span v-if="data.status == 1" class="badge bg-label-success me-1">active</span>
                                    <span v-if="data.status == 0" class="badge bg-label-success me-1">deactive</span>
                                </td>
                            </tr>
                            <tr>
                                <td>created at </td>
                                <td>
                                    {{ new Date().toDateString()  }}, &nbsp;
                                    {{ new Date().toLocaleTimeString()  }}
                                </td>
                            </tr>
                            <tr>
                                <td>updated at </td>
                                <td>
                                    {{ new Date().toDateString()  }}, &nbsp;
                                    {{ new Date().toLocaleTimeString()  }}
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="card-footer text-center">
                <permission-button
                    :permission="'can_edit'"
                    :to="{name:`EditContactMessage`,params:{id:$route.params.id}}"
                    :classList="'btn btn-outline-info'">
                    <i class="fa text-info fa-pencil"></i> &nbsp;
                    Edit
                </permission-button>
            </div>
        </div>
    </div>
</template>

<script>
import { mapActions, mapGetters, mapMutations } from 'vuex'
import PermissionButton from '../../components/PermissionButton.vue'
/** store and route prefix for export object use */
import PageSetup from './PageSetup';
const {route_prefix, store_prefix} = PageSetup;

export default {
    components: { PermissionButton },
    data: function(){
        return {
            /** store prefix for JSX */
            store_prefix,
            route_prefix,
            data: {
                    id: parseInt(Math.random()*10000),
                    title: 'ক্যারিয়ার বিকশিত জীবনের দ্বার',
                    image: 'http://almari.info/uploads/product/product_main_image/dh2QioXn122GuTfvBBcrEkDKM0XAEiG2z63zwRKC.png',
                    status: 'avaialbe',
                    category: 'ইসলামী সাহিত্য',
                    writer: 'নাইম সিদ্দিকী',
                    translator: 'আবু সালেহ',
                    product_code: 'pro-59875',
                    isbn: '9781234567897',
                    page: 120,
                    stock: 1309,
                    alert_qty: 10,
                    binding: 'hard cover',
                    description: ''
                },
        }
    },
    created: function () {
        // this[`fetch_${store_prefix}`]({id: this.$route.params.id, select_all:1})
    },
    methods: {
        ...mapActions([
            `fetch_${store_prefix}`,
        ]),
        ...mapMutations([
            `set_${store_prefix}`
        ]),
        call_store: function(name, params=null){
            this[name](params)
        },
    },
    computed: {
        ...mapGetters([`get_${store_prefix}`])
    }
}
</script>

<style>

</style>
