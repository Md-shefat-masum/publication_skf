import AdminDashboard from "../../views/AdminDashboard.vue"
import AdminLayout from "../../views/AdminLayout.vue"
import order from "./sub_routes/order";
import account from "./sub_routes/account";
import account_category from "./sub_routes/account_category";
import account_bank from "./sub_routes/account_bank";
import product from "./sub_routes/product";
import product_category from "./sub_routes/product_category";
import translator from "./sub_routes/translator";
import writer from "./sub_routes/writer";

export default {
    path: "/admin",
    component: AdminLayout,
    children: [
        {
            path: "",
            name: "AdminDashboard",
            component: AdminDashboard,
        },
        order,
        account,
        account_category,
        account_bank,
        product,
        product_category,
        translator,
        writer,
    ],
};
