import Layout from "../../../views/branch/orders/Layout";
import All from "../../../views/branch/orders/All";
import AllEcommerceOrder from "../../../views/branch/orders/AllEcommerceOrder";
import Create from "../../../views/branch/orders/Create";
import Edit from "../../../views/branch/orders/Edit";
import Details from "../../../views/branch/orders/Details";
import Import from "../../../views/branch/orders/Import";

let prefix = `BranchOrder`
export default {
    path: "branch",
    component: Layout,
    props: {
        role_permissions: ["branch"],
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
