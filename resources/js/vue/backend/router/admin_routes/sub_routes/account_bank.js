import Layout from "../../../views/admin/account_banks/Layout";
import All from "../../../views/admin/account_banks/All";
import Create from "../../../views/admin/account_banks/Create";
import Edit from "../../../views/admin/account_banks/Edit";
import Details from "../../../views/admin/account_banks/Details";
import Import from "../../../views/admin/account_banks/Import";

let prefix = "AdminAccountBank"
export default {
    path: "account-bank-accounts",
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
