import Layout from "../../../views/production/prints/Layout";
import All from "../../../views/production/prints/All";
import Create from "../../../views/production/prints/Create";
import Edit from "../../../views/production/prints/Edit";
import Details from "../../../views/production/prints/Details";
import Import from "../../../views/production/prints/Import";

let prefix = "Printing"
export default {
    path: "printing",
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
