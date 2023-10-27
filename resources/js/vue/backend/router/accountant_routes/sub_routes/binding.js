import Layout from "../../../views/production/bindings/Layout";
import All from "../../../views/production/bindings/All";
import Create from "../../../views/production/bindings/Create";
import Edit from "../../../views/production/bindings/Edit";
import Details from "../../../views/production/bindings/Details";
import Import from "../../../views/production/bindings/Import";

let prefix = "Binding"
export default {
    path: "binding",
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
