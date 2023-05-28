import axios from "axios";
import management_router from "../../../router/router";
import StoreModule from "../schema/StoreModule";

let test_module = new StoreModule('branch_order','branch/order','BranchOrder');
const {store_prefix, api_prefix, route_prefix} = test_module;

// state list
const state = {
    ...test_module.states(),
    orderByAsc: false,

    branch_product_for_order: {},
    branch_p_search_key: '',
    branch_oder_cart: [],
};

// get state
const getters = {
    ...test_module.getters(),

    get_branch_product_for_order: (state) => state.branch_product_for_order,
    get_branch_p_search_key: (state) => state.branch_p_search_key,
    get_branch_oder_cart: (state) => state.branch_oder_cart,
    get_branch_oder_cart_total: (state) => state.branch_oder_cart.reduce((t,i)=>t+=i.total_price,0),
};

// actions
const actions = {
    ...test_module.actions(),

    /** override store */
    [`fetch_branch_product_for_order`]: async ({commit,dispatch,getters,rootGetters,rootState,state},page=1) => {
        let s_keys = state.branch_p_search_key.length ? `&search_key=${state.branch_p_search_key}`:'';
        let products = await axios.get('/branch/all-products?page='+page+s_keys);
        commit('set_get_branch_product_for_order', products.data);
    },

    [`fetch_${store_prefix}`]: async function ({ state }, { id, render_to_form }) {
        let url = `/${api_prefix}/${id}`;
        await axios.get(url).then((res) => {
            // console.log(res.data);
            res.data.order_details.forEach(el => {
                el.total_price = el.sales_price;
                el.current_price = el.product_price;
            });
            // console.log(res.data.order_details);
            state.branch_oder_cart = res.data.order_details;
            state.branch_order = res.data;
            // this.commit(`set_${store_prefix}`, res.data);
        });

        if (render_to_form) {
            window.set_form_data(".admin_form", data);
        }
    },

    [`store_${store_prefix}`]: function({state, getters, commit}){
        const {form_values, form_inputs, form_data} = window.get_form_data('.user_create_form');
        const {get_user_role_selected: role} = getters;
        role.forEach(i=>form_data.append('user_role_id[]',i.role_serial));

        axios.post(`/${api_prefix}/store`,form_data)
            .then(res=>{
                window.s_alert('new user has been created');
                $('.user_create_form input').val('');
                commit('set_clear_selected_user_roles',false);
                management_router.push({name:`All${route_prefix}`})
            })
            .catch(error=>{

            })
    },

    [`store_branch_order`]: async function({state}, {type}){
        let carts = [...state.branch_oder_cart];
        let cconfirm = await window.s_confirm("submit order");
        if(cconfirm){
            axios.post('/branch/store-order',{carts,type:'create',order_id: state.branch_order?.id})
                .then(res=>{
                    // console.log(res.data);
                    state.branch_oder_cart  = [];
                    window.s_alert(`order submitted successfully.`);
                })
        }
    },

    [`update_branch_order`]: async function({state}){
        let carts = [...state.branch_oder_cart];
        if(state.branch_order.order_status == "pending"){
            let cconfirm = await window.s_confirm("update order");
            if(cconfirm){
                axios.post('/branch/update-order',{carts, order_id: state.branch_order.id})
                    .then(res=>{
                        // console.log(res.data);
                        // state.branch_oder_cart  = [];
                        window.s_alert(`order updated successfully.`);
                    })
            }
        }else{
            window.s_alert("Can not edit ! <br/> this order already in process.","warning")
        }
    },

    [`delete_branch_payment`]: async function({state, dispatch},{payment}){
        console.log(payment);
        if(!payment.approved){
            let cconfirm = await window.s_confirm("delete payment");
            if(cconfirm){
                axios.post('/branch/delete-payment',{payment_id: payment.id})
                    .then(res=>{
                        console.log(res.data);
                        // state.branch_oder_cart  = [];
                        window.s_alert(`payement deleted successfully.`);
                        dispatch("fetch_branch_order",{id: state.branch_order.id, });
                    })
            }
        }else{
            window.s_alert(`This transaction is approved and cannot be dismissed.`,'warning');
        }
    },

    /** override update */
    // [`update_${store_prefix}`]: function({state, getters, commit}){
    //     const {form_values, form_inputs, form_data} = window.get_form_data('.user_edit_form');
    //     const {get_user_role_selected: role, get_user: user} = getters;
    //     role.forEach(i=>form_data.append('user_role_id[]',i.role_serial));
    //     form_data.append('id',user.id);

    //     axios.post('/user/update',form_data)
    //         .then(({data})=>{
    //             commit('set_user',data.result);
    //             window.s_alert('user has been updated');
    //         })
    // },

    [`branch_oder_cart_add`]: function({state},{product,qty}){
        let products = [...state.branch_oder_cart];
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

        state.branch_oder_cart = products;
    },

    [`remove_product_from_cart`]: function({state}, {product}){
        let products = [...state.branch_oder_cart];
        products = products.filter(i=>i.id != product.id);
        state.branch_oder_cart = products;
    },

    [`branch_pay_due`]: async function({state, dispatch}, {form}){
        let form_data = new FormData(event.target);
        form_data.append('order_id',state.branch_order.id);
        let cconfirm = await window.s_confirm("Submit payment");
        if(cconfirm){
            axios.post('/branch/pay-due',form_data)
                .then(res=>{
                    console.log(res.data);
                    state.branch_oder_cart  = [];
                    window.s_alert(`Transaction completed.`);
                    dispatch("fetch_branch_order",{id: state.branch_order.id, });
                })
        }
    },

}

// mutators
const mutations = {
    ...test_module.mutations(),
    set_get_branch_product_for_order: (state, data) => {
        state.branch_product_for_order = data;
    },
    set_branch_p_search_key: (state, data) => {
        state.branch_p_search_key = data;
    },
};

export default {
    state,
    getters,
    actions,
    mutations,
};
