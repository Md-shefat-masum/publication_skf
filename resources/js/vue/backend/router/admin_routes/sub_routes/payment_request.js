import Layout from "../../../views/admin/payment_requests/Layout";
import All from "../../../views/admin/payment_requests/All";
import Create from "../../../views/admin/payment_requests/Create";
import Edit from "../../../views/admin/payment_requests/Edit";
import Details from "../../../views/admin/payment_requests/Details";
import Import from "../../../views/admin/payment_requests/Import";

let prefix = "AdminPaymentRequest"
export default {
    path: "payment-request",
    component: Layout,
    props: {
        role_permissions: ["admin"],
        layout_title: `${prefix} Management`,
    },
    children: [
        {
            path: ``,
            name: `All${prefix}`,
            component: All,
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
