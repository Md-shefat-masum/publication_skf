import Layout from "../../../views/production/accounts/Layout";
import All from "../../../views/production/accounts/All";
import Create from "../../../views/production/accounts/Create";
import Edit from "../../../views/production/accounts/Edit";
import Details from "../../../views/production/accounts/Details";
import Import from "../../../views/production/accounts/Import";

let prefix = "Account"
export default {
    path: "account",
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
