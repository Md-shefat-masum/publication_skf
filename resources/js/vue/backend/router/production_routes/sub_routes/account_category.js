import Layout from "../../../views/production/account_categories/Layout";
import All from "../../../views/production/account_categories/All";
import Create from "../../../views/production/account_categories/Create";
import Edit from "../../../views/production/account_categories/Edit";
import Details from "../../../views/production/account_categories/Details";
import Import from "../../../views/production/account_categories/Import";

let prefix = "AccountCategory"
export default {
    path: "account-category",
    component: Layout,
    props: {
        role_permissions: ["production","admin"],
        layout_title: `${prefix} Management`,
    },
    children: [
        {
            path: ``,
            name: `AllProduction${prefix}`,
            component: All,
        },
        {
            path: `import`,
            name: `ImportProduction${prefix}`,
            component: Import,
        },
        {
            path: `create`,
            name: `CreateProduction${prefix}`,
            component: Create,
        },
        {
            path: `edit/:id`,
            name: `EditProduction${prefix}`,
            component: Edit,
        },
        {
            path: `details/:id`,
            name: `DetailsProduction${prefix}`,
            component: Details,
        },
    ],
};
