import Layout from "../../../views/accountant/account_types/Layout";
import All from "../../../views/accountant/account_types/All";
import Create from "../../../views/accountant/account_types/Create";
import Edit from "../../../views/accountant/account_types/Edit";
import Details from "../../../views/accountant/account_types/Details";
import Import from "../../../views/accountant/account_types/Import";

let prefix = `AcountantAccountCategoryTypes`
export default {
    path: "account-types",
    component: Layout,
    props: {
        role_permissions: ["accountant"],
        layout_title: "Account Category Types Management",
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
