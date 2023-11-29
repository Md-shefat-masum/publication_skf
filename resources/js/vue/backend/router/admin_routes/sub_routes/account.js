import Layout from "../../../views/admin/accounts/Layout";
import All from "../../../views/admin/accounts/All";
import Create from "../../../views/admin/accounts/Create";
import Edit from "../../../views/admin/accounts/Edit";
import Details from "../../../views/admin/accounts/Details";
import Import from "../../../views/admin/accounts/Import";
import AllPaymentRequest from "../../../views/admin/accounts/AllPaymentRequest";
import BranchDue from "../../../views/admin/accounts/BranchDue";

let prefix = "AdminAccount"
export default {
    path: "account",
    component: Layout,
    props: {
        role_permissions: ["admin","super_admin","accountant"],
        layout_title: `${prefix} Management`,
    },
    children: [
        {
            path: ``,
            name: `All${prefix}`,
            component: All,
        },
        {
            path: `all-payment-request`,
            name: `AllPaymentRequest`,
            component: AllPaymentRequest,
        },
        {
            path: `branch-due`,
            name: `BranchDue`,
            component: BranchDue,
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
