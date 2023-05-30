import axios from "axios";
import management_router from "../../../router/router";
import StoreModule from "../schema/StoreModule";

let test_module = new StoreModule('admin_order','admin/order','AdminOrder');
const {store_prefix, api_prefix, route_prefix} = test_module;

// state list
const state = {
    ...test_module.states(),
    orderByAsc: true,
    order_type: 'invoice',

    admin_product_for_order: {},
    admin_p_search_key: '',
    admin_oder_cart: [],
};

// get state
const getters = {
    ...test_module.getters(),

    get_admin_product_for_order: (state) => state.admin_product_for_order,
    get_admin_p_search_key: (state) => state.admin_p_search_key,
    get_admin_oder_cart: (state) => state.admin_oder_cart,
    get_admin_oder_cart_total: (state) => state.admin_oder_cart.reduce((t,i)=>t+=i.total_price,0),
};

// actions
const actions = {
    ...test_module.actions(),

    [`fetch_${store_prefix}s`]: async function ({ state }) {
        let url = `/${api_prefix}/all?page=${state[`${store_prefix}_page`]}&order_type=${state.order_type}&status=${state[`${store_prefix}_show_active_data`]}&paginate=${state[`${store_prefix}_paginate`]}`;
        url += `&orderBy=${state.orderByCol}`;
        if (state.orderByAsc) {
            url += `&orderByType=ASC`;
        } else {
            url += `&orderByType=DESC`;
        }
        if (state[`${store_prefix}_search_key`]) {
            url += `&search_key=${state[`${store_prefix}_search_key`]}`;
        }
        await axios.get(url).then((res) => {
            this.commit(`set_${store_prefix}s`, res.data);
        });
    },

    // [`fetch_admin_product_for_order`]: async ({commit,dispatch,getters,rootGetters,rootState,state},page=1) => {
    //     let s_keys = state.admin_p_search_key.length ? `&search_key=${state.admin_p_search_key}`:'';
    //     let products = await axios.get('/all-products?page='+page+s_keys);
    //     commit('set_get_admin_product_for_order', products.data);
    // },

    [`fetch_${store_prefix}`]: async function ({ state }, { id, render_to_form }) {
        let url = `/${api_prefix}/${id}`;
        await axios.get(url).then((res) => {
            // console.log(res.data);
            res.data.order_details.forEach(el => {
                el.total_price = el.sales_price * el.qty;
                el.current_price = el.product_price;
            });
            state.admin_oder_cart = res.data.order_details;
            state.admin_order = res.data;
        });

        if (render_to_form) {
            window.set_form_data(".admin_form", data);
        }
    },

    [`store_admin_order`]: async function({state}, {type}){
        let carts = [...state.admin_oder_cart];
        let cconfirm = await window.s_confirm("submit order");
        if(cconfirm){
            axios.post('/admin/store-order',{carts,type:'create',order_id: state.admin_order?.id})
                .then(res=>{
                    // console.log(res.data);
                    state.admin_oder_cart  = [];
                    window.s_alert(`order submitted successfully.`);
                })
        }
    },

    [`update_admin_order`]: async function({state}){
        let carts = [...state.admin_oder_cart];
        let cconfirm = await window.s_confirm("update order");
        if(cconfirm){
            axios.post('/admin/order/update-order',{carts, order_id: state.admin_order.id})
                .then(res=>{
                    // console.log(res.data);
                    // state.admin_oder_cart  = [];
                    window.s_alert(`order updated successfully.`);
                })
        }
    },

    [`update_order_status`]: async function({state, dispatch, rootState}, {status,order_id}){
        let cconfirm = await window.s_confirm("update status into "+status);
        if(state.admin_order?.id){
            order_id = state.admin_order.id;
        }
        if(cconfirm){
            axios.post('/admin/order/update-order-status',{status, order_id})
                .then(res=>{
                    let orders = rootState.admin_order_modules.admin_orders;
                    let product = orders?.data?.find(i=>i.id == res.data.id);
                    // console.log(product);
                    if(product){
                        product.status = status;
                        dispatch('fetch_admin_order',{id: product.id })
                    }
                    window.s_alert(`order status updated successfully.`);
                })
        }
    },

    [`delete_admin_payment`]: async function({state, dispatch},{payment}){
        console.log(payment);
        if(!payment.approved){
            let cconfirm = await window.s_confirm("delete payment");
            if(cconfirm){
                axios.post('/admin/delete-payment',{payment_id: payment.id})
                    .then(res=>{
                        console.log(res.data);
                        // state.admin_oder_cart  = [];
                        window.s_alert(`payement deleted successfully.`);
                        dispatch("fetch_admin_order",{id: state.admin_order.id, });
                    })
            }
        }else{
            window.s_alert(`This transaction is approved and cannot be dismissed.`,'warning');
        }
    },

    [`admin_oder_cart_add`]: function({state},{product,qty}){
        let products = [...state.admin_oder_cart];
        let cart_product = products.find((p)=>p.id == product.id);
        if(cart_product){
            if(+qty > 0){
                cart_product.qty = qty;
            }else{
                cart_product.qty++;
            }
        }else{
            product.qty = 1;
            products.push(product);
        }

        product.current_price = product.sales_price;
        product.total_price = product.sales_price * product.qty;
        if(product.discount_info){
            product.total_price = product.qty*product.discount_info.discount_price;
            product.current_price = product.discount_info.discount_price;
        }

        state.admin_oder_cart = products;
    },

    [`remove_product_from_cart`]: function({state}, {product}){
        let products = [...state.admin_oder_cart];
        products = products.filter(i=>i.id != product.id);
        state.admin_oder_cart = products;
    },

    [`admin_receive_due`]: async function({state, dispatch}, {form}){
        let form_data = new FormData(event.target);
        form_data.append('order_id',state.admin_order.id);
        let cconfirm = await window.s_confirm("Submit payment");
        if(cconfirm){
            axios.post('/admin/order/receive-due',form_data)
                .then(res=>{
                    console.log(res.data);
                    state.admin_oder_cart  = [];
                    window.s_alert(`Transaction completed.`);
                    dispatch("fetch_admin_order",{id: state.admin_order.id, });
                })
        }
    },
}

// mutators
const mutations = {
    ...test_module.mutations(),
    set_get_admin_product_for_order: (state, data) => {
        state.admin_product_for_order = data;
    },
    set_admin_p_search_key: (state, data) => {
        state.admin_p_search_key = data;
    },
    set_order_type: (state,order_type) => state.order_type = order_type,
};

export default {
    state,
    getters,
    actions,
    mutations,
};
