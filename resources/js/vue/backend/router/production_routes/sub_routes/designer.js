import Layout from "../../../views/production/designer/Layout";
import All from "../../../views/production/designer/All";
import Create from "../../../views/production/designer/Create";
import Edit from "../../../views/production/designer/Edit";
import Details from "../../../views/production/designer/Details";
import Import from "../../../views/production/designer/Import";

let prefix = "Designer"
export default {
    path: "designer",
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
