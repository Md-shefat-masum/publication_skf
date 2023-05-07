import Layout from "../../../views/admin/orders/Layout";
import All from "../../../views/admin/orders/All";
import AllEcommerceOrder from "../../../views/admin/orders/AllEcommerceOrder";
import Create from "../../../views/admin/orders/Create";
import Edit from "../../../views/admin/orders/Edit";
import Details from "../../../views/admin/orders/Details";
import Import from "../../../views/admin/orders/Import";

let prefix = `AdminOrder`
export default {
    path: "order",
    component: Layout,
    props: {
        role_permissions: ["admin"],
        layout_title: "Order Management",
    },
    children: [
        {
            path: ``,
            name: `All${prefix}`,
            component: All,
        },
        {
            path: `ecomerce-orders`,
            name: `AllEcommerce${prefix}`,
            component: AllEcommerceOrder,
        },
        {
            path: `import`,
            name: `Import${prefix}`,
            component: Import,
        },
        {
            path: `create`,
            name: `Create${prefix}`,
            component: Create,
        },
        {
            path: `edit/:id`,
            name: `Edit${prefix}`,
            component: Edit,
        },
        {
            path: `details/:id`,
            name: `Details${prefix}`,
            component: Details,
        },
    ],
};
