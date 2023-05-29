import Layout from "../../../views/admin/orders/Layout";
import All from "../../../views/admin/orders/All";
import BranchOrder from "../../../views/admin/orders/BranchOrder";
import EcommerceOrder from "../../../views/admin/orders/EcommerceOrder";
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
            path: `branch-orders`,
            name: `BranchOrder`,
            component: BranchOrder,
        },
        {
            path: `ecomerce-orders`,
            name: `AllEcommerce${prefix}`,
            component: EcommerceOrder,
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
