import Layout from "../../../views/admin/account_categories/Layout";
import All from "../../../views/admin/account_categories/All";
import Create from "../../../views/admin/account_categories/Create";
import Edit from "../../../views/admin/account_categories/Edit";
import Details from "../../../views/admin/account_categories/Details";
import Import from "../../../views/admin/account_categories/Import";

let prefix = "AdminAccountCategory"
export default {
    path: "account-category",
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
