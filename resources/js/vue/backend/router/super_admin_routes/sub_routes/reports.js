import Layout from "../../../views/super_admin/reports/Layout";
import All from "../../../views/super_admin/reports/All";
import AllEcommerceOrder from "../../../views/super_admin/reports/AllEcommerceOrder";
import Create from "../../../views/super_admin/reports/Create";
import Edit from "../../../views/super_admin/reports/Edit";
import Details from "../../../views/super_admin/reports/Details";
import Import from "../../../views/super_admin/reports/Import";

let prefix = `SuperAdminReport`
export default {
    path: "reports",
    component: Layout,
    props: {
        role_permissions: ["super_admin"],
        layout_title: "Report",
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
