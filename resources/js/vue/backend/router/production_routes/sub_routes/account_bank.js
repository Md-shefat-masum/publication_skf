import Layout from "../../../views/production/account_banks/Layout";
import All from "../../../views/production/account_banks/All";
import Create from "../../../views/production/account_banks/Create";
import Edit from "../../../views/production/account_banks/Edit";
import Details from "../../../views/production/account_banks/Details";
import Import from "../../../views/production/account_banks/Import";

let prefix = "AccountBank"
export default {
    path: "account-bank-accounts",
    component: Layout,
    props: {
        role_permissions: ["production"],
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
