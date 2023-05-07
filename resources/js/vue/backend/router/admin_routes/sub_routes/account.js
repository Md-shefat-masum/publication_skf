import Layout from "../../../views/admin/accounts/Layout";
import All from "../../../views/admin/accounts/All";
import Create from "../../../views/admin/accounts/Create";
import Edit from "../../../views/admin/accounts/Edit";
import Details from "../../../views/admin/accounts/Details";
import Import from "../../../views/admin/accounts/Import";

let prefix = "AdminAccount"
export default {
    path: "account",
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
