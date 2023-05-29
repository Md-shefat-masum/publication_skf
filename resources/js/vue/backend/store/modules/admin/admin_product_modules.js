import axios from "axios";
import management_router from "../../../router/router";
import StoreModule from "../schema/StoreModule";

let test_module = new StoreModule('admin_product','admin/product','AdminProduct');
const {store_prefix, api_prefix, route_prefix} = test_module;

// state list
const state = {
    ...test_module.states(),
    orderByAsc: true,

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

    /** override store */
    [`store_${store_prefix}`]: function({state, getters, commit, rootState}){

        const {form_values, form_inputs, form_data} = window.get_form_data('.create_form');
        const {get_category_selected: category} = getters;
        const {get_admin_writer_selected: writer} = getters;
        const {get_admin_translator_selected: translator} = getters;

        category.forEach(i=>form_data.append('category_id[]',i.id));
        writer.forEach(i=>form_data.append('writer_id[]',i.id));
        translator.forEach(i=>form_data.append('translator_id[]',i.id));

        axios.post(`/${api_prefix}/store`,form_data)
            .then(res=>{
                $('.create_form input').val('');

                rootState.admin_writer_modules.admin_writer_selected = [];
                rootState.admin_translator_modules.admin_translator_selected = [];
                rootState.production_product_category_modules.category_selected = [];

                if(res.data.status == 'success'){
                    window.s_alert('new product has been created');
                }else{
                    window.s_alert(res.data.message, 'error');
                    console.log(res.data.error);
                }
                management_router.push({name:`Edit${route_prefix}`,params:{id:res.data.product.id}})
            })
            .catch(error=>{

            })
    },

    /** override update */
    [`update_${store_prefix}`]: function({state, getters, commit, rootState}){
        const {form_values, form_inputs, form_data} = window.get_form_data('.create_form');
        const {get_category_selected: category} = getters;
        const {get_admin_writer_selected: writer} = getters;
        const {get_admin_translator_selected: translator} = getters;

        form_data.append('id',state.admin_product.id);
        category.forEach(i=>form_data.append('category_id[]',i.id));
        writer.forEach(i=>form_data.append('writer_id[]',i.id));
        translator.forEach(i=>form_data.append('translator_id[]',i.id));

        axios.post(`/${api_prefix}/update`,form_data)
            .then(res=>{

                if(res.data.status == 'success'){
                    window.s_alert('product has been updated');
                }else{
                    window.s_alert(res.data.message, 'error');
                    console.log(res.data.error);
                }
            })
            .catch(error=>{

            })
    },

    [`fetch_admin_product_for_order`]: async ({commit,dispatch,getters,rootGetters,rootState,state},page=1) => {
        let s_keys = state.admin_p_search_key.length ? `&search_key=${state.admin_p_search_key}`:'';
        let products = await axios.get('/admin/all-products?page='+page+s_keys);
        commit('set_get_admin_product_for_order', products.data);
    },

    [`fetch_${store_prefix}`]: async function ({ state, rootState }, { id, render_to_form }) {
        let url = `/${api_prefix}/${id}`;
        let res = await axios.get(url);
        let data = res.data;

        this.commit(`set_${store_prefix}`, data);
        window.set_form_data(".admin_form", data);

        rootState.admin_writer_modules.admin_writer_selected = data.writers;
        rootState.admin_translator_modules.admin_translator_selected = data.translators;
        rootState.production_product_category_modules.category_selected = data.categories;

        setTimeout(() => {
            data.categories.forEach(i => {
                document.querySelector(`input[data-id="${i.id}"]`).checked = true;
            });
        }, 500);
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
        if(state.admin_order.order_status == "pending"){
            let cconfirm = await window.s_confirm("update order");
            if(cconfirm){
                axios.post('/admin/update-order',{carts, order_id: state.admin_order.id})
                    .then(res=>{
                        // console.log(res.data);
                        // state.admin_oder_cart  = [];
                        window.s_alert(`order updated successfully.`);
                    })
            }
        }else{
            window.s_alert("Can not edit ! <br/> this order already in process.","warning")
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

    [`admin_pay_due`]: async function({state, dispatch}, {form}){
        let form_data = new FormData(event.target);
        form_data.append('order_id',state.admin_order.id);
        let cconfirm = await window.s_confirm("Submit payment");
        if(cconfirm){
            axios.post('/admin/pay-due',form_data)
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
};

export default {
    state,
    getters,
    actions,
    mutations,
};
